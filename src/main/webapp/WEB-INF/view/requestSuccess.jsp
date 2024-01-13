<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="x-ua-compatible" content="IE=Edge">
    <meta http-equiv="refresh" content="5;url=${pageContext.request.contextPath}/owner/pushRequestOwner"/>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <meta name="viewport" content="width=1200">
    <meta http-equiv="cleartype" content="on">
    <title>申请成为房东|申请 · 恋家</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/jquery-confirm.css" rel="stylesheet"/>


    <link href="${pageContext.request.contextPath}/css/ion.rangeSlider.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/ion.rangeSlider.skinHTML5.css" rel="stylesheet"/>


    <link href="${pageContext.request.contextPath}/css/center/ucenter_custom.css" rel="stylesheet"/>

    <style>
        .jconfirm-box {
            margin-top: 30% !important;
        }

        img {
            height: inherit;
        }

        .avatar-pic, .avatar-pic canvas, .avatar-pic img {
            border-radius: inherit;
            width: 100%;
            height: 100%;
        }

        .meta-form {
            width: 80%;
            margin: auto;
            text-align: center;
            padding: 40px 0;
        }
    </style>


</head>
<body>
<!--页头-->
<div class="header-nav-box">
    <div class="container">
        <div class="row header">
            <div class="header-nav-left">
                <a href="${pageContext.request.contextPath}/main/toIndex" class="site-log">
                    <img src="${pageContext.request.contextPath}/img/logo.png" alt="">
                </a>
            </div>
            <div class="header-nav-right">
                <ul>

                    <li class="nav-user-info">
                        <a href="${pageContext.request.contextPath}/main/toShowUserCenter" class="nav-user-pic">
                            <c:if test="${not empty user.hardIcon}">
                                <img src="${pageContext.request.contextPath}/upload/${user.hardIcon}" class="img-circle"
                                     alt="" style="width:45px;height:45px;padding-top: 3px;" id="icon">
                            </c:if>
                            <c:if test="${ empty user.hardIcon}">
                                <img src="${pageContext.request.contextPath}/img/default-male-avatar.png" id="icon"
                                     class="img-circle" style="width:45px;height:45px;padding-top: 3px;">
                            </c:if>

                        </a>
                        <c:if test="${empty user}">
                            <a href="${pageContext.request.contextPath}/main/toShowLogin"
                               target="_blank">登录</a><span>|</span><a
                                href="${pageContext.request.contextPath}/main/toShowReg" target="_blank">注册</a>
                        </c:if>
                        <c:if test="${not empty user}">
                            <span><a style="color: #0fa39f"
                                     href="${pageContext.request.contextPath}/userFind/toShowUserCenter/${user.id}">${user.name}</a>,你好！ |  <a
                                    href="${pageContext.request.contextPath}/user/logout">退出</a></span>
                        </c:if>
                    </li>

                </ul>
            </div>

        </div>
    </div>
</div>


<!--内容-->
<div class="container" id="page-main">
    <!--左部-->
    <!--右部-->


    <script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
    <script>
        $(function () {
            $("#li" + 8).addClass("active");
        })

    </script>
    <!--左部-->
    <jsp:include page="user_left.jsp"></jsp:include>


    <div class="main-right">
        <div class="main-right-inner">
            <input id="AllTags" name="TagList" type="hidden"
                   value="{allTags:[{id:18,type:3,name:&#39;旅游&#39;},{id:22,type:3,name:&#39;LOL&#39;},{id:23,type:2,name:&#39;女汉纸&#39;},{id:24,type:2,name:&#39;拖延症&#39;},{id:25,type:2,name:&#39;宅&#39;},{id:26,type:2,name:&#39;逗逼&#39;},{id:27,type:2,name:&#39;简单&#39;},{id:28,type:2,name:&#39;双重人格&#39;},{id:29,type:2,name:&#39;吃货&#39;},{id:30,type:2,name:&#39;选择恐惧症&#39;},{id:31,type:2,name:&#39;自来熟&#39;},{id:32,type:2,name:&#39;理想主义&#39;},{id:33,type:2,name:&#39;靠谱&#39;},{id:34,type:2,name:&#39;热血&#39;},{id:35,type:2,name:&#39;文艺&#39;},{id:36,type:2,name:&#39;叛逆&#39;},{id:37,type:2,name:&#39;腐&#39;},{id:38,type:2,name:&#39;萌萌哒&#39;},{id:49,type:3,name:&#39;运动健身&#39;},{id:50,type:3,name:&#39;夜跑&#39;},{id:51,type:3,name:&#39;篮球&#39;},{id:52,type:3,name:&#39;睡觉&#39;},{id:53,type:3,name:&#39;羽毛球&#39;},{id:54,type:3,name:&#39;足球&#39;},{id:55,type:3,name:&#39;打麻将&#39;},{id:56,type:3,name:&#39;看电影&#39;},{id:57,type:3,name:&#39;美食&#39;},{id:58,type:3,name:&#39;逛街&#39;},{id:59,type:3,name:&#39;泡吧&#39;},{id:60,type:3,name:&#39;K歌&#39;},{id:61,type:3,name:&#39;美剧&#39;},{id:62,type:3,name:&#39;TVB&#39;},{id:63,type:3,name:&#39;购物狂&#39;},{id:64,type:3,name:&#39;玩游戏&#39;},{id:65,type:1,name:&#39;应酬多&#39;},{id:66,type:1,name:&#39;夜猫子&#39;},{id:67,type:1,name:&#39;洁癖&#39;},{id:68,type:1,name:&#39;吸烟&#39;},{id:69,type:1,name:&#39;不叠被子&#39;},{id:70,type:1,name:&#39;上夜班&#39;},{id:71,type:1,name:&#39;裸睡&#39;},{id:72,type:1,name:&#39;自己做饭&#39;},{id:73,type:1,name:&#39;每天洗澡&#39;},{id:74,type:1,name:&#39;每天换衣服&#39;},{id:75,type:1,name:&#39;摄影&#39;},],checkedTags:[]}"/>

            <div class="right-hd">
                <h3 class="right-title">申请成为房东</h3>
            </div>
            <div class="meta-form">
                <span style="icon: auto;"><span style="text-align: center" class="glyphicon glyphicon-ok-circle"/>&nbsp;申请成功，等待管理员审核。5秒后自动返回上一页，或者点击<a
                        style="color: #0fa6a3"
                        href="${pageContext.request.contextPath}/owner/pushRequestOwner">这里返回上一页</a></span>
            </div>
        </div>

    </div>


</div>


</body>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</html>