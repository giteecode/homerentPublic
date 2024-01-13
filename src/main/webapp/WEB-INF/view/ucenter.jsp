<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="x-ua-compatible" content="IE=Edge">

    <meta name="keywords" content="">
    <meta name="description" content="">

    <meta name="viewport" content="width=1200">
    <meta http-equiv="cleartype" content="on">
    <title>MyCenter· 恋家</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.bundle.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/jquery-confirm.css" rel="stylesheet"/>

    <link href="${pageContext.request.contextPath}/css/center/ucenter_custom.css" rel="stylesheet"/>

    <style>
        .jconfirm-box {
            margin-top: 30% !important;
        }

        .gallery li.gallery-item {
            float: left;
            width: 348px;
            padding: 15px 15px 5px;
            margin: 10px 1px;
            background: #fff;
            border-bottom: 3px solid #e0e0e0;
            box-sizing: border-box;
            position: relative;
        }

        .gallery .item-price {
            color: #ff5300;
            font-size: 12px;
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
                        <a href="/" class="nav-user-pic">

                            <c:if test="${not empty user.hardIcon}">
                                <img src="${pageContext.request.contextPath}/upload/${user.hardIcon}" class="img-circle"
                                     alt="" style="width:45px;height:45px;padding-top: 3px;" id="icon">
                            </c:if>
                            <c:if test="${ empty user.hardIcon}">
                                <img src="${pageContext.request.contextPath}/img/default-male-avatar.png" id="icon"
                                     class="img-circle" style="width:45px;height:45px;padding-top: 3px;">
                            </c:if>
                        </a>
                    </li>
                    <li>
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
            $("#li" + 0).addClass("active");
        })

    </script>
    <!--左部-->
    <jsp:include page="user_left.jsp"></jsp:include>

    <div class="main-right">
        <div class="main-right-inner">
            <div class="user-info-box">
                <div class="user-info-bar">
                    <div class="info-bar-meta">
                        <div class="info-bar-img">
                            <c:if test="${not empty user.hardIcon}">
                                <img src="${pageContext.request.contextPath}/upload/${user.hardIcon}" alt=""
                                     class="img-circle" width="82" height="82" id="icon">
                            </c:if>
                            <c:if test="${ empty user.hardIcon}">
                                <img src="${pageContext.request.contextPath}/img/default-male-avatar.png" id="icon"
                                     alt="" class="img-circle" width="82" height="82">
                            </c:if>

                        </div>
                        <div class="info-bar-info">
                            <h4 class="info-bar-name" style="margin-top:30px;">
                                尊敬的 <span style="color: #0fa39f;">${user.name}</span>,欢迎回来！
                            </h4>
                            <div class="info-bar-cont">
                                <span class="theme-yellow"></span>
                            </div>
                        </div>
                    </div>
                    <div class="info-bar-opt">
                        <a href="${pageContext.request.contextPath}/main/toShowUserInfo">
                            <i class="ucenter_icon-sprite ucenter_icon-tool"></i>
                            修改个人资料
                        </a>
                    </div>
                </div>
                <div class="user-info-detail container-fluid">
                    <div class="row">
                        <c:if test="${empty user.idcard}">
                            <div class="col-sm-12 go-rent" style="text-align: center;">

                                <p>您还不是房东不能发布房源，现在就去申请，就能发布您的小窝！<a
                                        href="${pageContext.request.contextPath}/owner/pushRequestOwner"
                                        class="btn btn-info cus">我要成为房东</a></p>
                            </div>
                        </c:if>
                        <c:if test="${not empty user.idcard}">
                            <c:if test="${empty userRentOutByid.rentouts}">
                                <p style="text-align: center">您还未发布房源，现在就去发布您的小窝！<a
                                        href="${pageContext.request.contextPath}/rentout/pushRoom"
                                        class="btn btn-info cus">我要发布房源</a></p>

                            </c:if>

                            <c:if test="${not empty userRentOutByid.rentouts}">
                                <h4 style="text-align: center;color: #0b0b0b;">尊敬的用户，你已经是<span
                                        style="color: #5bc0de">房东</span>，可以发布房源了<a
                                        href="${pageContext.request.contextPath}/rentout/pushRoom"
                                        class="btn btn-info cus">我要发布房源</a></h4>
                                <br>
                                <h4 style="float: left;color: #0b0b0b;">您发布的房源信息:</h4><br>
                                <div class="col-sm-12 go-rent">


                                <ul class="gallery">
                                    <c:forEach items="${userRentOutByid.rentouts}" var="pageRentout">
                                        <input type="hidden" id="uid" value="${user.id}"/>
                                        <c:if test="${pageRentout.outStatus == 1}">
                                            <li class="gallery-item">
                                                <span class="sale-tag"></span>
                                                <div class="item-img"><a
                                                        href="${pageContext.request.contextPath }/rentout/findRoomById/${pageRentout.rgId}"
                                                        target="_blank"><img
                                                        src="${pageContext.request.contextPath}/upload/${pageRentout.roomPicture}"
                                                        width="318" height="212"/></a></div>
                                                <div class="item-desc">
                                                    <span class="item-tag item-tag-standard"></span>
                                                    <div class="item-text">为恋家统一标准化装修，多属房龄较短的电梯公寓，在裸房基础上完成精装全配。</div>
                                                    <a href="${pageContext.request.contextPath }/rentout/findRoomById/${pageRentout.rgId}"
                                                       target="_blank" title="短租3个月丨 可月付丨 ${pageRentout.roomDesc}"
                                                       class="item-tit">${pageRentout.roomAddress} 短租3个月丨
                                                        可月付丨${pageRentout.roomDesc}</a>
                                                </div>
                                                <div class="item-info">
                                                    <div class="item-loc"><i
                                                            class="sprites icon-loc"></i>${pageRentout.roomAddress}
                                                    </div>
                                                    <div class="item-price">
                                                        <span><sub>￥</sub>${pageRentout.roomPrice}</span>元/月
                                                    </div>
                                                </div>
                                                <button type="button" onclick="del_btn(${pageRentout.rgId})"
                                                        class="btn btn-danger btn-xs"><i class="fa fa-pencil"></i>
                                                    删除
                                                </button>
                                            </li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </c:if>


                            </div>
                        </c:if>

                    </div>
                </div>
            </div>
            <div class="events">

            </div>


        </div>
    </div>


</div>

<script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-confirm.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.unobtrusive.js"></script>
<script>
    function del_btn(ids) {
        var uid = $('#uid').val();
        if (confirm("确定删除吗?")) {
            $.ajax({
                url: "${pageContext.request.contextPath}/userFind/deleteRentOut/" + ids,
                data: {"uid": uid},
                type: "post",
                success: function (result) {
                    //关闭对话框
                    //alert(result.state);
                    if (result.state == 0) {
                        alert(result.message);
                    } else {
                        alert(result.message);
                        //回到当前页
                        window.location.href = "${pageContext.request.contextPath}/userFind/toShowUserCenter/" + uid;

                    }

                }
            });
        }
    }
</script>
<script>


    //弹出框全局配置
    //用例：http://craftpip.github.io/jquery-confirm
    if (window.jconfirm) {
        jconfirm.defaults = {
            title: false,
            content: '是否确认提交?',
            contentLoaded: function () {
            },
            icon: '',
            confirmButton: '确定',
            cancelButton: '取消',
            confirmButtonClass: 'btn-info cus',
            cancelButtonClass: 'btn-default',
            theme: 'white',
            animation: 'zoom',
            closeAnimation: 'scale',
            animationSpeed: 500,
            animationBounce: 1.2,
            keyboardEnabled: false,
            rtl: false,
            confirmKeys: [13], // ENTER key
            cancelKeys: [27], // ESC key
            container: 'body',
            confirm: function () {
            },
            cancel: function () {
            },
            backgroundDismiss: false,
            autoClose: false,
            closeIcon: false,
            columnClass: 'col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1',
            onOpen: function () {
            },
            onClose: function () {
            },
            onAction: function () {
            }
        };
    }

</script>
<script src="${pageContext.request.contextPath}/js/ucenter_common.js"></script>
<!--统计代码-->
<script src="${pageContext.request.contextPath}/js/g.js"></script>


</body>
</html>
