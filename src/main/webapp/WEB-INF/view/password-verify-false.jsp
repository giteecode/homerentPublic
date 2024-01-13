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
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="x-ua-compatible" content="IE=Edge">

    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta http-equiv="refresh" content="5;url=${pageContext.request.contextPath}/userFind/toShowUserCenter/${user.id}"/>
    <meta name="viewport" content="width=1200">
    <meta http-equiv="cleartype" content="on">
    <title>安全中心 · 恋家</title>

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
            $("#li" + 9).addClass("active");
        })

    </script>
    <!--左部-->
    <jsp:include page="user_left.jsp"></jsp:include>


    <div class="main-right">
        <div class="main-right-inner">
            <div class="right-hd">
                <h3 class="right-title">登录密码</h3>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-2">
                        <div class="steps">
                            <ul>
                                <li class="step first active">
                                    <i class="step-1"></i>
                                    <p class="desc-bottom">验证身份</p>
                                </li>
                                <li class="step">
                                    <i class="step-2"></i>
                                    <p class="desc-bottom">修改登录密码</p>
                                </li>
                                <li class="step last active">
                                    <i class="step-3" style="color: red"></i>
                                    <p class="desc-bottom" style="color: red">错误</p>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="switch-board row js-switch-board">

                    <div class="col-sm-10 col-sm-offset-2">
                        <h4><span>尊敬的用户，修改密码失败。5秒后我们自动跳转到我的主页</span></h4>
                    </div>
                </div>
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


<script src="${pageContext.request.contextPath}/js/strength.js"></script>

<script>
    $(function () {

        //校验密码强度
        var statusBar = $('#pwd-status')[0];
        var $statusText = $('#pwd-status-text');
        $('#pswd').on('keyup', function () {
            var strength = PasswordStrength.test('', this.value);
            var status = strength.status;

            switch (status) {
                case 'invalid':
                    statusBar.className = 'pwd-strength level0';
                    $statusText.html('弱');
                    $("#pwdStatus").val('弱');
                    break;

                case 'weak':
                    statusBar.className = 'pwd-strength level0';
                    $statusText.html('弱');
                    $("#pwdStatus").val('弱');
                    break;

                case 'good':
                    statusBar.className = 'pwd-strength level1';
                    $statusText.html('中');
                    $("#pwdStatus").val('中');
                    break;

                case 'strong':
                    statusBar.className = 'pwd-strength level2';
                    $statusText.html('强');
                    $("#pwdStatus").val('强');
                    break;
            }

        });


        $('#validate-form').validate({
            errorElement: 'span',
            errorClass: 'validate_error',
            rules: {
                password: {
                    required: true,
                    minlength: 6,
                    maxlength: 20
                },
                confirmPassword: {
                    required: true,
                    equalTo: '#pswd'
                }
            },
            messages: {
                password: {
                    required: '登录密码不能为空！',
                    minlength: '登录密码长度必须为6-20个字符',
                    maxlength: '登录密码长度必须为6-20个字符'
                },
                confirmPassword: {
                    required: '请再次填写登录密码！',
                    equalTo: '两次输入不一致！'
                }

            }

        })

    })

</script>


</body>
</html>
