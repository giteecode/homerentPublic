<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title></title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/jquery-confirm.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/center/ucenter_custom.css" rel="stylesheet"/>

    <style>
        .jconfirm-box {
            margin-top: 30% !important;
        }
    </style>


</head>
<body>


<!--左部-->
<div class="main-left" id="left-menu">
    <div class="main-left-inner">
        <section class="left-item">
            <h3 class="left-tit">恋家<span class="caret"></span></h3>
            <ul class="left-list">
                <c:if test="${user.username == 'admin'}">
                    <li><a id="li1" href="${pageContext.request.contextPath}/user/findAllUser">用户管理</a></li>
                    <li><a id="li2" href="${pageContext.request.contextPath}/rentget/findAllRentget">求租管理</a></li>
                    <li><a id="li12" href="${pageContext.request.contextPath}/rentout/findAllRentOut">房屋管理</a></li>
                    <li><a id="li16" href="${pageContext.request.contextPath}/message/findAllMessage">留言管理</a></li>
                    <li><a id="li11" href="${pageContext.request.contextPath}/owner/findAllOwner">房东申请管理</a></li>

                </c:if>

                <li><a id="li4" href="${pageContext.request.contextPath}/rentout/findRentOut" target="_blank">我要租房</a>
                </li>
                <li><a id="li6" href="${pageContext.request.contextPath}/rentget/findRentget" target="_blank">求租列表</a>
                </li>
                <li><a id="li5" href="${pageContext.request.contextPath}/main/toShowPushMessage"
                       target="_blank">我想留言</a></li>
                <li><a id="li3" href="${pageContext.request.contextPath}/main/toShowHT" target="_blank">合同模板</a></li>

            </ul>
        </section>
        <section class="left-item">
            <h3 class="left-tit">个人服务<span class="caret"></span></h3>
            <ul class="left-list">
                <li><a id="li21" href="${pageContext.request.contextPath}/userFind/toShowUserCenter/${user.id}">My
                    Center</a></li>
                <li><a id="li22" href="${pageContext.request.contextPath}/userFind/findId/${user.id}">我的求租</a></li>
                <li><a id="li23"
                       href="${pageContext.request.contextPath}/userFind/findUserMessageById/${user.id}">我的留言板</a></li>
                <li><a id="li24" href="${pageContext.request.contextPath}/main/toShowEchart">数据统计</a></li>

            </ul>
        </section>
        <section class="left-item">
            <h3 class="left-tit">账户<span class="caret"></span></h3>
            <ul class="left-list">
                <li><a id="li20" href="${pageContext.request.contextPath}/main/toShowUserInfo">个人资料</a></li>
                <li><a id="li9" href="${pageContext.request.contextPath}/main/toShowSafe">账户设置</a></li>
                <li><a id="li7" href="${pageContext.request.contextPath}/main/toShowBill">我的账单</a></li>


            </ul>
        </section>

    </div>

</div>


</body>
</html>
