<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>租房信息,单间出租,青年公寓出租-恋家</title>
    <meta name="keywords"/>
    <meta name="description"
          content="恋家成都租房网提供单间出租,宜家风格精装修的合租房.是成都年轻人喜爱的青年公寓,免费wifi,家具齐全,立即签约立即拎包入住.致力于为年轻人打造租房时代的美好回忆。"/>
    <script type="text/javascript"
            src="http://api.map.baidu.com/getscript?v=2.0&ak=vZRczN8WjwsZ7ZRpUvDwdsDGB8SNGNeV"></script>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.bundle.css">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/jquery-confirm.css" rel="stylesheet"/>
    <link href="../css/find_house.bundle.css" rel="stylesheet"/>
    <style>
        .city-selection .city-cur1 {
            color: #fff;
            font-size: 12px;
        }

        #allmap {
            width: 100%;
            height: 100%;
            overflow: hidden;
            margin: 0;
            font-family: "微软雅黑";
        }
    </style>


    <link href="../css/find_house.bundle.css" rel="stylesheet"/>


</head>
<body>
<div class="page-wrap">

    <div class="page-main" id="page-main">
        <!-- header -->
        <jsp:include page="header.jsp"></jsp:include>


        <div class="container-sm">
            <div class="breadcrumb mtb20">
                <a href="${pageContext.request.contextPath}/main/toIndex">首页</a>&gt;<span>我要租房</span>
            </div>
        </div>
        <div class="filter-wrap">
            <div class="container-sm">
                <div class="filter-board">
                    <div class="filter-hd"><span class="hd-item active"><i class="sprites icon-loc3"></i>地图找房</span><a
                            href="${pageContext.request.contextPath}/rentout/findRentOut"
                            class="hd-item by-map">条件找房</a></div>
                    <div class="filter-bd">
                        <div id="allmap"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-sm">
            <div class="gallery-wrap">

            </div>
        </div>


    </div>


    <script type="text/javascript">
        window._bd_share_config = {
            common: {
                "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdMiniList": !1, "bdPic": "",
                "bdStyle": "0", "bdSize": "16", bdMini: 2, bdPopupOffsetLeft: -207
            },
            share: [{"bdSize": 16}]
        }
        with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = '../js/share.js'];

    </script>
    <div class="side-fix">
        <ul>
            <li class="side-share-box">
                <a href="javascript:void(0);" class="sprites side-share"></a>
                <div class="side-desc">
                    <div class="bdsharebuttonbox">
                        <a title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina"></a>
                        <a title="分享到QQ好友" href="#" class="bds_sqq" data-cmd="sqq"></a>
                        <a title="分享到豆瓣网" href="#" class="bds_douban" data-cmd="douban"></a>
                        <a title="分享到人人网" href="#" class="bds_renren" data-cmd="renren"></a>
                        <a title="分享到QQ空间" href="#" class="bds_qzone" data-cmd="qzone"></a>
                        <a title="分享到微信" href="#" class="bds_weixin" data-cmd="weixin"></a>
                    </div>
                </div>
            </li>

            <li>
                <a href="/aboutus/contact?op=2#contact_mess_anchor" target="_blank" class="sprites side-comment"></a>
                <div class="side-desc">留言建议</div>
            </li>
            <li class="side-weixin-box">
                <a href="javascript:void(0);" class="sprites side-weixin"></a>
                <div class="side-desc">
                    <img src="/Content/img/footer-weixin-cd.jpg" width="131" height="131" alt="微信找房，扫我吧">
                    <p><b>微信找房</b>，扫我吧!</p>
                </div>
            </li>
            <li id="back-top" class="back-top"><a href="javascript:void(0);" class="sprites side-top"></a></li>
        </ul>

    </div>


    <div class="customer-service" id="customer-service">
        <a class="bar-link" onclick="NTKF.im_openInPageChat('kf_9452_1480658837072')" target="_blank" rel="nofollow">
            <img src="${pageContext.request.contextPath}/img/serv.gif" id="customer-service-img"/>
            <img src="${pageContext.request.contextPath}/img/serv_hover.gif" style="display:none"/>
        </a>
    </div>


    <!-- footer -->
    <jsp:include page="footer.jsp"></jsp:include>


</div>

<script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.zh-CN.js"></script>
<!--统计代码-->
<script src="${pageContext.request.contextPath}/js/g.js"></script>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");    // 创建Map实例
    map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);  // 初始化地图,设置中心点坐标和地图级别
    //添加地图类型控件
    map.addControl(new BMap.MapTypeControl({
        mapTypes: [
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]
    }));
    map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
</script>
<script>


    NTKF_PARAM = {
        siteid: "kf_9452",
        settingid: "kf_9452_1480658837072",
        uid: "",
        uname: "",
        isvip: "0",
        userlevel: "0",
        itemid: "",
        erpparam: ""
    }

    $(function () {
        //页脚沉降
        var $bottom = $('#page-bottom');
        var $footer = $('#page-footer');
        var $main = $('#page-main');

        var h = $bottom.outerHeight() + $footer.outerHeight();
        $main.css({
            paddingBottom: h,
            marginBottom: -h
        });


        //在线客服切换效果

        $('#customer-service').hover(function () {
            $('#customer-service-img').attr('src', '../img/serv_hover.gif');

        }, function () {

            $('#customer-service-img').attr('src', '../img/serv.gif');
        });

        //nav高亮
        var pathname = window.location.pathname
        var $navBar = $('.uoko-navbar li')
        switch (true) {
            case pathname == '/':
                $navBar.eq(0).addClass('active')
                break;
            case pathname.indexOf('/questions') > -1:
                $navBar.eq(2).addClass('active')
                break;
            case pathname.indexOf('/room') > -1:
                $navBar.eq(1).addClass('active')
                break;
            case pathname.indexOf('/history') > -1:
                $navBar.eq(5).addClass('active')
                break;
        }
    });


    // cookie
    var Cookie = function (name, value, options) {
        if (typeof value != 'undefined') {
            options = options || {};
            if (value === null) {
                options.expires = -1;
            }
            var expires = '';
            if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
                var date;
                if (typeof options.expires == 'number') {
                    date = new Date();
                    date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
                } else {
                    date = options.expires;
                }
                expires = '; expires=' + date.toUTCString();
            }
            //var path = options.path ? '; path=' + options.path : '',
            var path = '; path=/',
                domain = options.domain ? '; domain=' + options.domain : '',
                secure = options.secure ? '; secure' : '';

            document.cookie = [name, '=', value, expires, path, domain, secure].join('');
        } else {
            var nameEQ = name + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1, c.length);
                }
                if (c.indexOf(nameEQ) == 0) {
                    return decodeURIComponent(c.substring(nameEQ.length, c.length));
                }
            }
            return false;
        }
    };

    ;(function ($, undefined) {

        function isArray(o) {
            return Object.prototype.toString.call(o) === '[object Array]';
        }

        //解析查询字符串方法 spliter可选默认 &,sparator可选默认 =;

        //传入 'foo=1&bar=2&foo=3'将返回对象 { foo:[1,3], bar:2 }

        function parseQuery(queryString, spliter, separator) {
            var ret = {};
            spliter = spliter || '&';
            separator = separator || '=';

            if (queryString === '' || queryString === undefined) {
                return ret;
            }

            var paramArr = queryString.split(spliter);

            for (var i = 0; paramArr[i]; i++) {
                var pairs = paramArr[i].split(separator);
                var key = pairs[0];
                var val = pairs[1];

                if (ret[key] === undefined) {
                    ret[key] = val;
                    continue;
                }
                if (!isArray(ret[key])) {
                    ret[key] = [ret[key]].concat(val);
                    continue;
                }

                ret[key].push(val);

            }
            ;

            return ret;

        }

        $.parseQuery = parseQuery;

    })(window.jQuery)

    function isEmptyVal(val) {
        return val === undefined || val === '' || val === null;
    }

    //设置页面cookie
    function setUtmCookie(key) {
        var _utm = Cookie(key);
        var queryString = $.parseQuery(window.location.search.slice(1));
        var cookieVal = [];
        var nameTransfers = {};
        if (_utm !== false && _utm !== '') {
            return;
        }
        var sourceType = !isEmptyVal(queryString['hmsr']) ?
            'hmsr' : !isEmptyVal(queryString['utm_source']) ?
                'utm_source' : undefined;

        if (!sourceType) {
            return;
        }

        if (sourceType === 'hmsr') {//若sourceType是hmsr，替换循环参数
            nameTransfers = {
                'utm_source': 'hmsr',
                'utm_medium': 'hmpl',
                'utm_term': 'hmkw',
                'utm_campaign': 'hmcu',
                'utm_content': 'hmci'
            }
        }

        $.each(setUtmCookie.cookieMap, function (index, key) {
            var queryKey = nameTransfers[key] || key;
            queryString[queryKey] && cookieVal.push(key + '=' + queryString[queryKey]);
        });

        if (!cookieVal.length) {//防止写入空值
            return;
        }
        cookieVal = cookieVal.join('&');
        return Cookie(key, cookieVal, setUtmCookie.cookieOption);
    }

    //配置
    setUtmCookie.cookieMap = ['utm_source', 'utm_medium', 'utm_campaign', 'utm_term', 'utm_content'];
    setUtmCookie.cookieOption = {
        expires: 15,
        path: '/',
        domain: '.uoko.com'
    }

    setUtmCookie('_utm');

</script>

<script>
    function loadModule(container) {
        var self = container;
        var requestUrl = self.attr("data-url");

        $.ajax({
            type: 'GET',
            cache: false,
            url: requestUrl,
            success: function (data) {
                if (data.success === false) {
                    alert(data.message);
                } else {
                    self.html(data);
                }
            }
        });
    }

    $(function () {
        $('#no-search').delay(1000).hide(600);
        loadModule($("#AsyncLoading"));
    });
</script>
<script src="${pageContext.request.contextPath}/js/data.js"></script>
<script src="${pageContext.request.contextPath}/js/address.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ntkfstat.js" charset="utf-8"></script>
</body>
</html>
