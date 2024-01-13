;$(function ($) {
    //日期扩展
    Date.prototype.format = function (fmt) {
        var o = {
            "M+": this.getMonth() + 1, //月份   
            "d+": this.getDate(), //日   
            "H+": this.getHours(), //小时   
            "m+": this.getMinutes(), //分   
            "s+": this.getSeconds(), //秒   
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度   
            "S": this.getMilliseconds() //毫秒   
        };
        if (/(y+)/.test(fmt))
            fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o) {
            if (o.hasOwnProperty(k)) {
                if (new RegExp("(" + k + ")").test(fmt))
                    fmt = fmt.replace(RegExp.$1, (RegExp.$1.length === 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            }
        }
        return fmt;
    };
    //placeholder 兼容,兼容标签默认span._fake_placeholder_;
    //placeholder span._fake_placeholder_;
    ;(function fixHolder(win, doc, undefined) {
        var isSupport = 'placeholder' in doc.createElement('input');

        if (isSupport) {
            return;
        }

        function byAttr(el, attr) {
            if (!el) {
                return;
            }
            var ret = [];
            el = el.length ? el : [el];

            for (var i = 0; i < el.length; i++) {

                if (el[i].getAttribute && el[i].getAttribute(attr) !== null) {
                    ret.push(el[i]);
                }
            }

            return ret;
        }

        function isObj(obj) {

            return String.prototype.slice.call(obj) === '[object Object]';
        }

        function pageX(el) {

            return el.offsetParent ? el.offsetLeft + pageX(el.offsetParent) : el.offsetLeft;
        }

        function pageY(el) {

            return el.offsetParent ? el.offsetTop + pageX(el.offsetParent) : el.offsetTop;
        }

        function parentX(el) {

            return el.offsetParent === el.parentNode ? el.offsetLeft : pageX(el) - pageX(el.parentNode);
        }

        function parentY(el) {

            return el.offsetParent === el.parentNode ? el.offsetTop : pageY(el) - pageY(el.parentNode);
        }

        function getStyle(el, style) {

            if (!style) {

                return null;
            }

            if (el.currentStyle) {

                return el.currentStyle[style];
            }

            if (win.getComputedStyle) {
                style = style.replace(/([A-Z])/, '-$1').toLocaleLowerCase();

                return win.getComputedStyle(el, '')[style];
            }

            return null;
        }

        function trim(val) {
            val && val.replace(/^(\s+)|(\s+)$/, '');

            return val;
        }

        function createNode(name, prop) {
            var node = doc.createElement(name);

            if (!prop) {

                return node;
            }

            if (!isObj(prop)) {

                throw new Error('argument should be a Object');
            }

            for (var i in prop) {

                if (prop.hasOwnProperty(i)) {

                    if (isObj(prop[i])) {
                        for (var j in prop[i]) {
                            if (prop[i].hasOwnProperty(j)) {
                                node.style[j] = prop[i][j];
                            }
                        }

                        continue;
                    }
                    node[i] = prop[i]
                }
            }

            return node;
        }

        function addEvent(el, evt, cb) {

            if (el.addEventListener) {
                el.addEventListener(evt, cb, false);

            } else {
                el.attachEvent('on' + evt, function (e) {
                    e = e || win.event;
                    e.target = e.srcElement;
                    e.stopPropagation = function () {
                        e.cancelBubble = true;
                    };
                    e.preventDefault = function () {
                        e.returnValue = false;
                    };
                    cb.call(el, e);
                });
            }
        }


        function fix(els) {
            if (/Array/.test(Object.prototype.toString.call(els)) && !els.length) {
                return;
            }
            els = els.length ? els : [els];

            for (var i = 0; i < els.length; i++) {
                var parent = els[i].parentNode || doc.body;
                var pos = getStyle(parent, 'position');
                var top = parseInt(getStyle(els[i], 'paddingTop'), 10) + parentY(els[i]);
                var left = parseInt(getStyle(els[i], 'paddingLeft'), 10) + parentX(els[i]);
                var t = els[i].getAttribute('placeholder');

                if (pos.toLowerCase() === 'static') {
                    parent.style.position = 'relative';
                }

                var node = createNode('span', {
                    style: {
                        position: 'absolute',
                        left: left + 'px',
                        top: top + 'px',
                        whiteSpace: 'nowrap',
                        lineHeight: getStyle(els[i], 'lineHeight')
                    },
                    className: '_fake_placeholder_',
                    innerHTML: t
                });

                els[i].fakeHolder = node;
                node.el = els[i];
                parent.appendChild(node);

                els[i].value !== '' && (node.style.display = 'none');
                addEvent(els[i].fakeHolder, 'click', function (e) {
                    this.el.focus();
                });
                addEvent(els[i], 'focus', function (e) {
                    this.fakeHolder.style.display = 'none';
                });
                addEvent(els[i], 'blur', function (e) {
                    var val = trim(this.value);

                    if (val === '') {
                        this.fakeHolder.style.display = 'block';
                    }
                })
            }
        }

        var els = doc.getElementsByTagName('input');
        els = byAttr(els, 'placeholder');

        fix(els);

    })(window, document);


    //validator插件添加电话号码验证规则

    $.validator && $.validator.addMethod('phone', function (val, el) {
        return this.optional(el) || /^1[3|4|5|6|7|8|9]\d{9}$/.test(val);
    }, '请填写真实的电话号码');


    function throttle(fn, t) {
        var timeOutId = null;

        return function () {
            if (timeOutId) {
                return;
            }
            var argv = arguments;
            timeOutId = setTimeout(function () {

                fn && fn.apply(fn, argv);
                timeOutId = null;

            }, t);

        }

    }

    function mkFix($el) {
        if ($el.css('position').toLowerCase() === 'static') {
            $el.css('position', 'relative');
        }

        var initTop = +function () {
            return $el.offset().top;
        }();

        function calcTop() {
            var docT = document.documentElement.scrollTop || document.body.scrollTop;

            if (docT >= initTop) {
                $el.animate({top: docT - initTop}, 'fast');
            } else {
                $el.animate({top: 0}, 'fast');
            }
        }

        calcTop = throttle(calcTop, 300);

        $(window).on('scroll', calcTop);

    }

    $.fn.mkFix = function () {
        return $(this).each(function () {

            mkFix($(this));
        });
    };

    $('.js-fix').mkFix();

    //滑动验证控件
    var thumbSlider = (function (win, doc, undefined) {
        var obj = {
            init: function (opt) {
                var txt = '';
                this.$el = typeof opt.$el === 'string' ? $(opt.$el) : opt.$el;
                if (!this.$el) {
                    return;
                }
                this.$thumb = this.$el.find('.js-thumb');
                this.$swiped = this.$el.find('.js-swiped');
                this.$text = this.$el.find('.js-text');
                txt = this.$text.html();
                this.$swiped.html(txt);
                this.$text.html('<span data-text-inner>' + txt + '</span>');
                this.done = opt.done || function () {
                };
                this.beforeDone = opt.beforeDone || function () {
                };
                this.touchedBord = false;
                this.isDone = false;

                this.bind();
            },
            bind: function () {
                var me = this;
                var size = this.$el.outerWidth();
                var thumbSize = this.$thumb.outerWidth();
                var limit = size - thumbSize;
                var posStart, diff, left, temp;

                this.$text.find('[data-text-inner]').css({
                    width: size,
                    height: '100%',
                    position: 'absolute',
                    right: 0,
                    top: 0
                });
                this.$thumb.on('dragstart', function () {
                    return false;
                });
                this.$thumb.on('mousedown.slide', function (e) {
                    if (me.isDone) {
                        return;
                    }
                    me.$thumb.removeClass('roll-back');
                    me.$text.removeClass('roll-back');

                    posStart = e.clientX;
                    left = me.$thumb.css('left');
                    left = parseInt(left);

                    $(doc).on('mousemove.slide', function (e) {

                        diff = e.clientX - posStart;
                        temp = left + diff;

                        temp = temp <= 0 ? 0 : temp >= limit ? limit : temp;
                        me.$thumb.css('left', temp);
                        me.$text.css('width', size - temp);

                        if (temp === limit) {
                            !me.touchedBord && me._done();
                        }
                    });

                    $(doc).on('mouseup', function () {
                        $(doc).off('mousemove.slide');

                        if (me.isDone) {
                            return;
                        }
                        me.rollBack();
                    })
                });
            },
            rollBack: function () {
                this.touchedBord = false;
                this.$thumb.css('left', 0).addClass('roll-back');
                this.$text.css('width', '100%').addClass('roll-back');
            },
            _done: function () {
                this.touchedBord = true;
                if (this.beforeDone() === false) {
                    return;
                }
                this.done();
                this.isDone = true;
                $(doc).off('mousemove.slide');
                this.$text.css('width', '100%')
                this.$el.addClass('done');
            }
        };

        win.thumbSlider = obj;
        return obj;
    })(window, document);

    //点击切换密码输入框可见性
    $('.js-toggle-pwd').click(function () {
        var ipt = $(this).parent().find('input');
        var me = $(this);

        me.toggleClass('pwd-close');
        ipt.prop('type', me.hasClass('pwd-close') ? 'password' : 'text');

    });
    //左部菜单
    $('.left-tit', '#left-menu').on('click', function () {
        $(this).toggleClass('active');
        $(this).next().slideToggle('fast');
    });
    /**
     **文本域字数限制
     **接收一个对象作为参数(obj={num:100,overCount:function(){}})
     **num为限制字数，overCount为超过限制回调
     **/
    $.fn.countTextNum = function (params) {
        var _this = this, countText = _this.next();
        var paramsObj = params || {};
        if ($.isEmptyObject(paramsObj)) {
            paramsObj = {
                num: 100,
                overCount: function () {
                },
            }
        }
        var init = function () {
            if (!isNaN(paramsObj.num) && paramsObj.num <= 0) {
                throw new Error('传入的num参数值应该大于0');
                return;
            }
            countText.text('0/' + paramsObj.num);
            _this.prop('maxlength', paramsObj.num);
        }
        init();
        _this.on('input', function () {
            var nowTextNum = $(this).val().length;
            if (nowTextNum > paramsObj.num) {
                return
            }
            countText.text(nowTextNum + '/' + paramsObj.num);

        })
    }
}(jQuery))