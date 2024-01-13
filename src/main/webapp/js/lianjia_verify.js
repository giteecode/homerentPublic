//验证码模块
;(function ($, undefined) {
    var uniformAPI = window.UniformedAPI;

    if (!uniformAPI) {
        throw new Error('请先引入组件依赖脚本,uniformAPI.js');
    }

    var _token = '';
    var _graph_defaults = {
        hook: '',
        input: {
            tag: 'input',
            props: {
                type: 'text',
                class: 'input-control',
                placeholder: '请输入图中验证码'
            }
        },
        img: {
            tag: 'img',
            props: {
                src: '',
                class: 'verify-graph'
            }
        }
    };
    var _defaults = {
        hook: '',
        input: {
            tag: 'input',
            props: {
                type: 'text',
                placeholder: '请输入验证码'
            }
        },
        btn: {
            tag: 'a',
            props: {},
            text: '发送验证码',
            waitingText: '发送验证码${n}'
        },
        countingTime: 60,
        api: {
            token: '/api/sms-verifycode-token',
            verify: '/api/sms-verifycode',
            graph: '/sms-verifycode-image'
        },
        codeType: null,
        phoneInput: '',
        //验证函数,将验证phone参数
        verifyPhone: null,
        beforeSend: $.noop,
        components: {
            $info: function (msg) {
                if ('function' === typeof $.info) {
                    $.info(msg)
                } else {
                    alert(msg)
                }
            }
        },
        successTip: '验证码获取成功',
        errorTips: {
            required: '请输入手机号',
            phone: '请输入真实的手机号码'
        },
        graph: {}
    };

    function isObject(o) {
        return Object.prototype.toString.call(o) === '[object Object]';
    }

    //倒计时
    function countDown(val, fn, cb) {
        if (!val || countDown.reset) {
            countDown.reset = false;
            cb && cb(val);
            return;
        }

        val--;
        fn && fn(val);

        setTimeout(function () {
            countDown(val, fn, cb);
        }, 1000);

    }

    countDown.reset = false;

    function createNode(opt) {
        if (typeof opt === undefined) {
            return $();
        }
        return $('<' + opt.tag + '/>', opt.props);
    }

    function VerifyCode(opt) {
        if (opt.phoneInput) {
            _defaults.api = uniformAPI.getSmsVerifycodeApi(true);
        } else {
            _defaults.api = uniformAPI.getSmsVerifycodeApi();
        }

        opt = $.extend(true, {}, _defaults, opt);
        this._opt = opt;
        this.api = opt.api;
        this.codeType = opt.codeType;
        this._$info = opt.components.$info;
        this._errorTips = opt.errorTips;
        this._v = 'function' === typeof opt.verifyPhone ? opt.verifyPhone : this.verifyPhone;
        this.init(opt);
    }

    VerifyCode.prototype = {
        constructor: VerifyCode,
        init: function (opt) {
            var me = this;
            this.create(opt);
            this.$el.append(this.$input);
            this.$el.append(this.$btn);

            this.$btn.on('click', function () {
                if (me.$btn.hasClass('disabled')) {
                    return;
                }

                if (!me._v()) {
                    return;
                }
                var before = opt.beforeSend.call(me);

                if (before === false) {
                    return;
                }
                if (before && 'function' === typeof before.then) {
                    before.then(function () {
                        me.send();
                    });

                    return;
                }
                me.send();
            });
        },
        create: function (opt) {
            this.$el = $(opt.hook);
            this.$input = createNode(opt.input);
            this.$btn = createNode(opt.btn);

            this.$phoneInput = $(opt.phoneInput);

            this.$btn.text(opt.btn.text);
            this.$btn._text = opt.btn.text;
            this.$btn._waitingText = opt.btn.waitingText;
        },
        verifyPhone: function () {
            var phone = this.$phoneInput.val();

            if ($.trim(phone) === '') {
                this._$info(this._errorTips.required);
                return false;
            }

            if (!/^1[3|4|5|6|7|8|9]\d{9}$/.test(phone)) {
                this._$info(this._errorTips.phone);
                return false;
            }

            return true;
        },

        _oncounting: function (n) {
            this.$btn.text(this.$btn._waitingText.replace(/\$\{n\}/g, n));
        },
        _oncountEnd: function () {
            this.$btn.removeClass('disabled');
            this.$btn.text(this.$btn._text);
        },
        _getToken: function (params) {
            return $.ajax({
                url: this.api.token,
                type: 'get',
                xhrFields: {
                    withCredentials: true
                },
                data: params,
            }).then(function (res) {
                return _token = res;
            });

        },
        _getCode: function (params) {
            var me = this;
            return $.ajax({
                url: this.api.verify,
                type: 'get',
                xhrFields: {
                    withCredentials: true
                },
                data: params,
            }).then(function (res) {
                me._$info(me._opt.successTip);
            }, function (xhr, textStatus, error) {
                me.showGraphCode(params);
                xhr.responseJSON && me._$info(xhr.responseJSON.Message);
            })
        },
        send: function () {
            var opt = this._opt;
            var me = this;
            this.$btn.addClass('disabled');
            this.getCode({//获取验证码
                codeType: this.codeType,
                phone: this.$phoneInput.val()
            })
            countDown(opt.countingTime, function (n) {
                me._oncounting(n)
            }, function () {
                me._oncountEnd();
            })
        },
        getCode: function (params) {//发送验证码
            if (!isObject(params)) {
                throw new Error('parameter should be an Object');
            }
            var me = this;

            if (!_token) {
                this._getToken(params).then(function () {
                    params.token = _token;
                    return me._getCode(params);
                }, function (xhr, textStatus, error) {
                    //图片验证码
                    countDown.reset = true;
                    xhr.responseJSON && me._$info(xhr.responseJSON.Message);

                    if (xhr.status === 400) {
                        me.showGraphCode(params);
                    }
                })
                return;
            }
            ;
            params.token = _token;
            me._getCode(params);
        },
        showGraphCode: function (params) {
            if (!this.graphCode) {
                this.graphCode = new GraphCode(this._opt.graph, params, this._opt.api.graph);
            }
            if (!this.graphCode.isShow) {
                this.graphCode.show();
            }

        }
    }

    function GraphCode(opt, params, graphApi) {
        opt = $.extend(true, {}, _graph_defaults, opt);
        this.src = opt.img.props.src || (graphApi + '?' + $.param(params));
        this.isShow = false;
        this.init(opt);
    }

    GraphCode.prototype = {
        constructor: GraphCode,
        init: function (opt) {
            var me = this;
            this.create(opt);

            this.$input.on('input', function () {//sync token
                _token = this.value;
            });

            this.$img.on('click', function () {//fresh code
                me.refreshCode();
            })

            this.$el.append(this.$input);
            this.$el.append(this.$img);

            this.$el.hide();
        },
        create: function (opt) {
            this.$el = $(opt.hook);
            this.$input = createNode(opt.input);
            this.$img = createNode(opt.img);

            this.$img.attr('src', this.src);
        },
        refreshCode: function () {
            var me = this;
            var timeStr = new Date().getTime();
            this.$img.attr('src', this.src + '&t=' + timeStr);
        },
        show: function () {
            this.$el.show();
            this.isShow = true;
        },
        hide: function () {
            this.$el.hide();
            this.isShow = false;
        }
    }

    /**
     * 组件不生成外层元素，需提供验证码与图片验证码元素挂载的钩子
     !!若代码需要使用生成input/button元素，请先调用此控件!!
     *
     * hookVerify 替换发送验证码字段的钩子元素id
     hookGraph  替换图形验证码字段的钩子元素id
     options    配置参数 见_defaults
     */
    $.uoko_verify = function (hookVerify, hookGraph, options) {
        if (isObject(hookVerify)) {
            options = hookVerify;
        } else {
            options = $.extend(true, {}, {hook: hookVerify, graph: {hook: hookGraph}}, options);
        }
        // $(options.graph.hook).hide();//隐藏验证码元素
        return new VerifyCode(options);
    }


    /*



            var codeVerifyer = $.uoko_verify('#verify-hook', '#graph-hook', {

                //常用配置

               input: {
                   //props为生成标签属性
                   props: {
                       class: 'input-control',
                       type: 'text',
                       placeholder: '请输入验证码',
                       'data-validate': 'required',
                       'data-error-info': '{"required":"请输入验证码"}'
                   }
               },

               btn: {
                   props: {
                       class: 'get-code-btn'
                   },
                   //发送按钮文字,${n}为倒计时占位符,默认值:
                   text: '发送验证码',
                   waitingText: '发送验证码${n}'
               },

               phoneInput: '#phone', //关联的电话号码字段id
               countingTime:60,
               //codeType
               codeType:1,

               //挂载信息提示组件，默认为$.info,若不存在则为alert
               components:{
                   $info:$.info
               }

              ,


           });

       */

})(window.jQuery)