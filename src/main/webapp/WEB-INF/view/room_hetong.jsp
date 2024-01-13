<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <title>恋家.房屋合同</title>
    <meta name="keywords"/>
    <meta name="description"/>


    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.bundle.css">
    <style>
        .city-selection .city-cur1 {
            color: #fff;
            font-size: 12px;
        }
    </style>


    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/about_migrate.css">
    <link href="${pageContext.request.contextPath}/css/jquery-confirm.css" rel="stylesheet"/>
    <style>
        .MainBg {
            padding-bottom: 107px;
        }
    </style>


</head>
<body>
<div class="page-wrap">

    <div class="page-main" id="page-main">
        <!-- header -->
        <jsp:include page="header.jsp"></jsp:include>


        <div class="MainBg">


            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}/main/toIndex">首页</a></li>
                    <li class="active">恋家房屋租赁合同</li>
                </ol>


                <div class="contact-content ">
                    <div class="tab-content WhiteBg cantact">
                        <div class="tab-pane connect in active" id="contact_mess">
                            <div class="about">

                                <h3 class="mt16">房屋租赁合同</h3>
                                <h4 style="margin-top:16px;">甲方（出租方）姓名和身份证号：</h4>
                                <h4 style="margin-top:16px;">乙方（承租方）姓名和身份证号：</h4>
                                <div class="about_list">
                                    <p>
                                        根据《中华人民共和国合同法》及有关规定，甲、乙双方在自愿、平等、互利的基础上，经协商一致，为明确双方之间的权利义务关系，就甲方将其合法拥有的房屋出租给乙方使用，乙方承租甲方房屋事宜，订立本合同。</p>
                                    <h4>一、租赁房屋的地址、面积、用途：</h4>
                                    <p>（1）甲方愿将                                       房屋租给乙方使用；</p>
                                    <p>（2）房屋面积为：         平方米；</p>
                                    <p>（3）用途：                                                              
                                                       </p>
                                </div>
                                <h4>二、租赁期限：</h4>
                                <div class="about_list">
                                    <p>租赁期为    个月，自       年     月     日起至        年     月    日止。</p>
                                </div>
                                <h4>三、租金、保证金及房租费缴纳方式：</h4>
                                <div class="about_list">
                                    <p>（1）租金：月租金为人民币      元 人民币（大写）            元整；</p>
                                    <p>（2）保证金（押金）：人民币       元 人民币（大写）                元整；</p>
                                    <p>（3）房租缴纳方式:本合同签订后三日内，乙方应向甲方预缴纳     个月的房租费合计           元 人民币(大写)           元整</p>
                                </div>
                                <h4>四、房屋的设施、设备: </h4>
                                <div class="about_list">
                                    <p>甲方同意乙方使用房屋内的设备、家具、设施。双方清点后列清单。以后再添置设施、设备，会另行签定确认单。</p>
                                </div>
                                <h4>五、房屋的相关使用费:</h4>
                                <div class="about_list">
                                    <p>乙方在租赁期间所使用的水费、电费、电视、电话、网络及其它费用均由乙方承担，具体事宜直接跟相关单位结算。</p>
                                </div>
                                <h4>六、违约责任:</h4>
                                <div class="about_list">
                                    <p>甲乙双方约定，在乙方未经甲方允许，发生如下情况，甲方有权提前终止合同:</p>
                                    <p>(1)、乙方擅自拆改承租房屋结构;</p>
                                    <p>(3)、乙方擅自将本房作为经营用途;</p>
                                    <p>(3)、乙方搬离住宅内设施、家具、电器等;</p>
                                    <p>(4)、乙方擅自将本房屋转租他人;</p>
                                    <p>(5)、乙方有违法犯罪、患重疾、传染病等病症的成员住在甲方房屋内;</p>
                                    <p>无上述伍点情况，甲方不得提前终止合同，乙方如提前终止合同，则必须赔偿甲方两个月房租费;</p>
                                </div>
                                <h4>七、免责条件:</h4>
                                <div class="about_list">
                                    <p>因不可抗力导致甲方房屋损坏或造成乙方损失的，双方均不承担现责任。</p>
                                </div>
                                <h4>八、住房管理:</h4>
                                <div class="about_list">
                                    <p>(1)乙方在租赁期间要遵守物业管理处的各项规定，自觉遵守国家法律、法规。遵守社会公德，如有违反，由乙方自行承担相关责任和损失。</p>
                                    <p>
                                        (2)乙方应爱护房屋内的设施，不得随意拆除和改建,如需装修或增减设备时，应事先征得甲方同意，其费用由乙方自理，对房屋及房屋内设施有损坏的，应修理、修缮完好或按市场价赔偿。</p>
                                    <p>(3)租赁期满后，乙方按清单将一-切设备、 设施向甲方交清，并结算租金，同时结清应交的所有费用，续租与否，均应提前-一个月告之甲方。</p>
                                    <p>(4)租赁期满后，乙方应将房屋内卫生打扫干净，并经甲方验收。交付时房屋如未清理，甲方有权使用乙方押金支付房屋保洁费用。</p>
                                </div>
                                <h4>九、乙方在租期内如发生任何安全事故，房屋及设备所产生的损失由乙方承担;</h4>
                                <h4>十、如合同到期乙方仍想续租，在同等条件下乙方有优先租用权。</h4>
                                <h4>十一、本合同壹式贰份，甲方、乙方各执壹份，甲乙双方签字(或盖章)生效。</h4>
                                <h4>十二、乙方需提供所有入住者身份证复印件。</h4><br>
                                <h4>甲方(出租方)签字:                           甲方(出租方)联系电话:         </h4>
                                <h4>乙方(出租方)签字:                           乙方(出租方)联系电话:         </h4>
                                <h4>
                                                                                                                           合同鉴定日期:        年     月     日         </h4>

                            </div>
                        </div>
                    </div>
                </div>
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
                    <img src="${pageContext.request.contextPath}/img/loading.gif" width="131" height="131"
                         alt="微信找房，扫我吧">
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

<script src="${pageContext.request.contextPath}/js/common.bundle.js"></script>
<!--统计代码-->
<script src="${pageContext.request.contextPath}/js/g.js"></script>
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

<script src="${pageContext.request.contextPath}/js/jquery-confirm.min.js"></script>
<script src="${pageContext.request.contextPath}/js/validation.min.js"></script>


<script type="text/javascript" src="${pageContext.request.contextPath}/js/ntkfstat.js" charset="utf-8"></script>
</body>
</html>