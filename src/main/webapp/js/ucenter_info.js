$(function () {
    /*================================个性标签部分===============================================*/
    //所有标签

    +function () {
        if (!$('#AllTags').val()) {
            return;

        }
        var DATA = (0, eval)('(' + $('#AllTags').val() + ')');

        var SOURCE_ALL = DATA.allTags;
        //已选标签
        var SOURCE_CHECKED = DATA.checkedTags;
        //与类型匹配的ui属性，只支持三类，如果需要加入新类型需添加一组与之对应的属性
        var UI_ATTR = [
            {
                colors: {
                    //标签背景颜色
                    bg: ['#85c8a6', '#c4d6aa', '#b3d2c2', '#cce4c6'],
                    //标签文字描边颜色
                    c: ['#71aa8d', '#a7b691', '#98b3a5', '#aec2a8']
                }
            },
            {
                colors: {
                    bg: ['#cf5043', '#c36d71', '#dcb0ac', '#a08189'],
                    c: ['#b04439', '#a65d60', '#bb9692', '#886e75']
                }
            },
            {
                colors: {
                    bg: ['#e5906b', '#f3c880', '#e5c796', '#eadfd3'],
                    c: ['#c37b5b', '#cfaa6d', '#c3a980', '#c7beb4']
                }
            }
        ];

        var CONFIG = {
            tagBoard: $('#tag-board'),//展示标签的包裹层
            pillBoard: $('#pill-board'),//选中标签的包裹层
            freshBtn: $('#fresh-tag-board'),//换一批按钮
            hiddenName: 'CheckedTags',//存放选中标签ids的input的name值
            hiddenId: 'CheckedTags',//存放选中标签ids的input的id值
            baseClass: 't',//css中标签定位前缀，eg:t1,t2....t[tagNum]
            tagSizeLimit: 100,//标签尺寸最大值
            tagNum: 12,//总共标签数量，css中定义了12个标签类，若大于12个需修改css
            baseSize: 50//css中基于此尺寸给标签初始定位
        };


        //封装一个与类型相对应的UI_ATTR
        var ATTRIBUTES = (function () {
            var types = _.chain(SOURCE_ALL).pluck('type').uniq().value();

            var ret = {};
            _.each(types, function (val, i) {
                if (!ret[val]) {
                    ret[val] = UI_ATTR[i];
                }
            });

            return ret;
        })();

        //生成一个与按类别分类的元数据
        var SOURCE_BY_TYPE = (function () {
            var ret = function () {
            };
            ret.prototype.setMask = function (type) {
                this[type].mask = true;
                BOARD.freshId();
            };
            ret.prototype.offMask = function (type) {
                this[type].mask = false;
                BOARD.freshId();
            };
            var temp = new ret();

            _.each(SOURCE_ALL, function (val) {
                if (!temp[val.type]) {
                    temp[val.type] = [];
                }
                temp[val.type].push(_.omit(val, 'type'));
            });
            return temp;
        })();

        //根据类型随机属性;
        function ranAttr(type) {
            var keys = _.keys(ATTRIBUTES);
            type = type || _.sample(keys);
            var cur = ATTRIBUTES[type];
            return {
                type: type,
                bg: _.sample(cur.colors.bg),
                c: _.sample(cur.colors.c)
            }
        }

        //根据情况修复类,返回{id,type};
        function fixIdByType(type) {

            var source = (function () {
                var r = {};
                for (var i in SOURCE_BY_TYPE) {
                    if (SOURCE_BY_TYPE.hasOwnProperty(i)) {
                        !SOURCE_BY_TYPE[i].mask && (r[i] = SOURCE_BY_TYPE[i])
                    }
                }
                return r;
            })();
            var keys = _.keys(source);

            if (!_.contains(keys, type)) {
                type = keys.shift();
            }
            var ids = null;
            var rets = null;

            do {
                ids = _.pluck(SOURCE_BY_TYPE[type], 'id');
                rets = _.intersection(ids, BOARD.idAvailable);
            } while (!rets.length && (type = keys.shift()));

            return {
                id: rets[0] ? rets[0] : false,
                type: type
            };
        }

        var BOARD = (function () {
            var idAll = _.pluck(SOURCE_ALL, 'id');
            return {
                idAll: idAll,
                idNow: [],
                idAvailable: idAll,
                $btn: CONFIG.freshBtn,
                init: function () {
                    TAG_BOARD.init();
                    PILL_BOARD.init();
                    this.freshId();
                    this.bind();

                    for (var i = 0; i < CONFIG.tagNum; i++) {
                        var tag = new Tag({className: CONFIG.baseClass + (i + 1)});

                        TAG_BOARD.add(tag);
                    }
                },
                freshId: function () {
                    this.idNow = _.union(TAG_BOARD.childId, PILL_BOARD.childId);
                    this.idAvailable = _.difference(this.idAll, this.idNow);
                    for (var i in SOURCE_BY_TYPE) {
                        if (SOURCE_BY_TYPE.hasOwnProperty(i)) {
                            if (!SOURCE_BY_TYPE[i].mask) {
                                continue;
                            }
                            this.idAvailable = _.difference(this.idAvailable, _.pluck(SOURCE_BY_TYPE[i], 'id'));
                        }
                    }
                },
                checkAvailable: function () {
                    this.freshId();
                    return !!this.idAvailable.length;
                },
                bind: function () {
                    var me = this;
                    this.$btn.on('click', function () {
                        me.freshId();


                        TAG_BOARD.$el.find('span').each(function () {
                            TAG_BOARD.remove(this.ref, false);
                            TAG_BOARD.add(new Tag({className: this.ref.className}));
                        });

                    });

                }
            }
        })();
        //tag_board对象，管理待选标签集合
        var TAG_BOARD = (function () {
            var pos = (function () {
                var ret = {};
                var cls = '';
                var $node = null;

                for (var i = 0; i < CONFIG.tagNum; i++) {

                    cls = CONFIG.baseClass + (i + 1);
                    CONFIG.tagBoard.append('<span class="' + cls + '" style="display: none"></span>');
                    $node = CONFIG.tagBoard.find('.' + cls);
                    ret[cls] = {l: parseInt($node.css('left')), t: parseInt($node.css('top'))};

                }
                CONFIG.tagBoard.empty();
                return ret;
            })();
            return {
                $el: CONFIG.tagBoard,
                childId: [],
                pos: pos,
                add: function (tag) {
                    if (_.isEmpty(tag)) {
                        return;
                    }
                    tag.$shape.addClass('bounce');
                    this.$el.append(tag.node);
                    this.childId.push(tag.id);
                },
                remove: function (tag, autoAdd) {
                    autoAdd = autoAdd === undefined;

                    this.$el.find('#__tag' + tag.id).remove();

                    this.childId = _.without(this.childId, tag.id);

                    if (autoAdd) {

                        this.add(new Tag({className: tag.className, type: tag.type}));
                    }
                },
                init: function () {

                    this.bind();
                },
                bind: function () {

                    var me = this;
                    this.$el.on('click', 'span', function () {

                        PILL_BOARD.add(new Pill({from: this.ref}));
                        me.remove(this.ref);
                    });
                    this.$el.on('animationend', 'span>i', function () {
                        $(this).removeClass('bounce');
                    })
                }
            };
        })();

        //pill_board对象，管理选中标签集合
        var PILL_BOARD = {
            $el: CONFIG.pillBoard,
            childId: [],
            typeCount: {},
            typeLimit: 5,
            init: function () {

                this.bind();

                this.hidden = $('<input type="hidden" name="' + CONFIG.hiddenName + '" id="' + CONFIG.hiddenId + '" value="">');

                _.each(SOURCE_CHECKED, function (o) {
                    var t = o.type;
                    var attr = ranAttr(t);

                    var prop = {
                        id: o.id,
                        text: o.name,
                        type: t,
                        bg: attr.bg,
                        c: attr.c
                    };

                    this.add(new Pill({prop: prop}));

                }, this);

                this.$el.append(this.hidden);
            },
            bind: function () {
                var me = this;
                this.$el.on('click', '.rm', function () {
                    var node = $(this).closest('span')[0];
                    me.remove(node.ref);


                    if (!node.ref.from) {
                        return;
                    }
                    if (node.ref.from.length && !node.ref.from[0]) {
                        var l = TAG_BOARD.$el.find('span[class^=t]').length;

                        for (var i = (l + 1); i <= CONFIG.tagNum; i++) {
                            TAG_BOARD.add(new Tag({className: CONFIG.baseClass + i, type: node.ref.type}));
                        }
                        return;
                    }
                    if (!_.isArray(node.ref.from)) {
                        node.ref.from = [node.ref.from];
                    }
                    _.each(node.ref.from, function (refTag) {

                        var cur = TAG_BOARD.$el.find('.' + refTag.className)[0];

                        cur && TAG_BOARD.remove(cur.ref, false);
                        TAG_BOARD.add(refTag);

                    });

                })
            },
            add: function (pill) {
                this.$el.append(pill.node);
                this.childId.push(pill.id);
                this.hidden.val(this.childId.toString());

                if (!this.typeCount[pill.type]) {

                    this.typeCount[pill.type] = 1;

                } else {

                    this.typeCount[pill.type]++;
                }

                if (this.typeCount[pill.type] >= this.typeLimit) {

                    SOURCE_BY_TYPE.setMask(pill.type);
                    pill.from = [pill.from];
                    //移除相同类别
                    _.each(TAG_BOARD.childId, function (id) {
                        var tag = this.$el.find('#__tag' + id)[0];

                        if (tag.ref.type === pill.type) {
                            pill.from.push(tag.ref);
                            TAG_BOARD.remove(tag.ref);
                        }
                    }, TAG_BOARD);
                }
            },
            remove: function (pill) {

                this.typeCount[pill.type]--;
                if (SOURCE_BY_TYPE[pill.type].mask) {
                    SOURCE_BY_TYPE.offMask(pill.type);
                }
                this.$el.find('#__pill' + pill.id).remove();
                this.childId = _.without(this.childId, pill.id);
                this.hidden.val(this.childId.toString());

            }
        };

        //待选标签类
        function Tag(opt) {
            if (!BOARD.checkAvailable()) {
                return {};
            }
            opt = opt || {};
            var types = _.keys(SOURCE_BY_TYPE);
            var type = opt.type || _.sample(types);
            type = fixIdByType(type);
            var me = this;
            this.type = type.type;
            this.id = type.id;
            this.attr = ranAttr(this.type);
            this.bg = this.attr.bg;
            this.c = this.attr.c;
            var source = _.findWhere(SOURCE_ALL, {id: this.id});
            this.text = this.name = source.name;
            this.size = (function () {//根据字数计算大小
                var ret;
                var tempNode = $('<div style="display:inline-block;padding-left: 10px;padding-right:10px;position: absolute;z-index: -999;opacity: 0">' + me.text + '</div>');

                document.body.appendChild(tempNode[0]);
                ret = tempNode.outerWidth();

                document.body.removeChild(tempNode[0]);
                tempNode = null;
                return ret > CONFIG.tagSizeLimit ? CONFIG.tagSizeLimit : ret;
            })();

            this.className = opt.className;
            this.html = '<span class="' + this.className + '" id="__tag' + this.id +
                '"><i><b>' + this.text + '</b></i></span>';
            this.$node = $(this.html);
            this.node = this.$node[0];
            this.$shape = this.$node.find('i');
            this.node.ref = this;
            this.init();
        }

        Tag.prototype = {
            init: function () {

                this.fixCss(this.$node, this.size);
            },
            fixCss: function ($node, size) {
                var basePos = TAG_BOARD.pos;
                var t = basePos[this.className].t;
                var l = basePos[this.className].l;
                var offset = -((size - CONFIG.baseSize) / 2);
                $node.css({
                    top: t + offset,
                    left: l + offset,
                    width: this.size,
                    height: this.size,
                    lineHeight: this.size + 'px',
                    textShadow: '1px 1px 0 ' + this.c
                });
                this.$shape.css({backgroundColor: this.bg, textShadow: this.c});
            }
        };

        //已选中标签类
        function Pill(opt) {

            var tagObj = opt.from || opt.prop;
            this.html = '<span id="__pill' + tagObj.id + '" style="border-color:' + tagObj.bg + ';color:' + tagObj.c + '"><b>' + tagObj.text + '</b>' + '<i class="rm" style="border-color:' + tagObj.bg +
                '" >&times;</i></span>';
            this.type = tagObj.type;
            this.from = opt.from;
            this.$node = $(this.html);
            this.node = this.$node[0];
            this.id = tagObj.id;
            this.node.ref = this;
        }

        BOARD.init();
    }()

    /*===================================个性标签结束====================================================*/

    /**
     * 选择租金价位，调用rangeSlider插件
     */
    $('#Rent').ionRangeSlider({
        type: "double",
        grid: false,
        min: 0,//范围选择最小值
        max: 3000,//范围选择最大值
        from: 800,
        to: 2000,
        hide_min_max: true,
        hide_from_to: false,
        prefix: "¥"
    });

    /**
     * 调用日历插件
     */

    $('#birth-date').datetimepicker({
        language: 'zh-CN',
        minView: 'month',
        format: 'yyyy-mm-dd',
        autoclose: 1,
        startDate: new Date(1956, 0, 1),
        endDate: new Date(),
        forceParse: true
    });


})