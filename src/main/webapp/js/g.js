var _hmt = _hmt || [];
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
var BDBridge = true;
//成都
(function () {
    var hm = document.createElement("script");
    hm.src = _bdhmProtocol + "hm.baidu.com/hm.js?9efdb82a30972ce34071a031946aa933";
    var hm2 = document.createElement("script");
    hm2.src = _bdhmProtocol + "hm.baidu.com/hm.js?7ff7f42f88278a021684490c2662a39b";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
    s.parentNode.insertBefore(hm2, s);
})();

//<!-- GrowingIO Analytics code version 2.1 -->
//<!-- Copyright 2015-2017 GrowingIO, Inc. More info available at http://www.growingio.com -->
!function (e, t, n, g, i) {
    e[i] = e[i] || function () {
        (e[i].q = e[i].q || []).push(arguments)
    }, n = t.createElement("script"), tag = t.getElementsByTagName("script")[0], n.async = 1, n.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + g, tag.parentNode.insertBefore(n, tag)
}(window, document, "script", "assets.growingio.com/2.1/gio.js", "gio");
gio('init', 'a8b1e7ca389f9b89', {});

//custom page code begin here

//custom page code end here

gio('send');


//<!--google Analytics -->
(function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r;
    i[r] = i[r] || function () {
        (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date();
    a = s.createElement(o),
        m = s.getElementsByTagName(o)[0];
    a.async = 1;
    a.src = g;
    m.parentNode.insertBefore(a, m)
})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

ga('create', 'UA-45455223-1', 'auto');
ga('send', 'pageview');

//<!--google ga -->
$(function () {
    var url = location.href.split("//")[1].split(".")[0];
    var QQMessageOnlick = $("#QQMessageOnlick");
    var SeeApartmentClick = $("#look-link-old");
    var OnlineReferClick = $('#customer-service');
    switch (url) {
        case 'wuhan':
            OnlineReferClick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'cs-wh');
            });
            QQMessageOnlick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'wh_qq');
            });
            SeeApartmentClick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'wh_kf');
            });
            break;
        case 'beijing':
            OnlineReferClick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'cs-bj');
            });
            QQMessageOnlick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'bj_qq');
            });
            SeeApartmentClick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'bj_kf');
            });
            break;
        case 'hangzhou':
            OnlineReferClick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'cs-hz');
            });
            QQMessageOnlick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'hz_qq');
            });
            SeeApartmentClick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'hz_kf');
            });
            break;
        default:
            OnlineReferClick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'cs-cd');
            });
            QQMessageOnlick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'cd_qq');
            });
            SeeApartmentClick.on('click', function () {
                ga('send', 'event', 'button', 'click', 'cd_kf');
            });
    }

});



