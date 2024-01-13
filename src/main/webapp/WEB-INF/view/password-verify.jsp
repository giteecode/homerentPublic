<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 21:48
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

    <meta name="viewport" content="width=1200">
    <meta http-equiv="cleartype" content="on">
    <title>安全中心-修改密码 · 恋家</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/jquery-confirm.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/center/ucenter_custom.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/normalize.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/login_reg.css" rel="stylesheet"/>

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
                                <li class="step last">
                                    <i class="step-3"></i>
                                    <p class="desc-bottom">完成</p>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="switch-board row js-switch-board">
                    <div class="switch-hd">
                        <div class="switch-bg"></div>
                        <div class="switch-sort">
                            <div class="switch-sort-inner col-sm-offset-2">

                                <a href="javascript:;" class="switch-btn active">手机验证</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-10 col-sm-offset-2">
                        <!--密码验证表单-->

                        <!--手机验证表单-->
                        <form action="${pageContext.request.contextPath}/user/updatePwd1" method="get"
                              class="form-horizontal switch-item active" id="validate-form2"
                              onsubmit="return checkForm()">
                            <input id="userPhone" value="${user.phone}" name="phone" type="hidden"/>
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <div class="input-group" style="width:345px;white-space:nowrap;" id="graph-hook">
                                        <c:if test="${empty user.phone}">
                                            <p>您还未绑定手机号！</p>
                                        </c:if>
                                        <c:if test="${not empty user.phone}">
                                            <h3><span>您绑定的手机号码为：</span><span style="color: #0b0b0b"
                                                                             id="user_phone"></span></h3>
                                            <span>发送验证码到该手机号码，请注意查收。</span>
                                        </c:if>

                                    </div>

                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-6">
                                    <div class="slider-bar" id="slider-bar">
                                        <input type="text" placeholder="请输入验证码" class="field-ipt field-get-code"
                                               name="verifyCode" id="verifyCode" value="" autocomplete="off"
                                               aria-required="true" aria-invalid="false">
                                        <input type="button" class="btn btn-lg btn-blue btn-contact btn-valid"
                                               id="getCode" value="获取验证码" onclick="sendCode(this)"/> <br><span
                                            class="msg-defalult" id="code-error-text" style="text-align: center"/>

                                    </div>
                                    <span id="error-text"></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-6 pt40">
                                    <input type="submit" class="btn btn-info" value="提交">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>

    </div>


</div>

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


<script>


    var countdown = 60;

    function settime(val) {
        if (countdown == 0) {
            val.removeAttribute("disabled");
            val.value = "获取验证码";
            countdown = 60;

        } else {
            val.setAttribute("disabled", true);
            val.value = "重新发送(" + countdown + ")";
            countdown--;
            if (countdown == 0) {
                val.removeAttribute("disabled");
                val.value = "获取验证码";
                countdown = 60;
                return;

            }
        }
        setTimeout(function () {
            settime(val);
        }, 1000);

    }


    $(function () {

        var phone = $('#userPhone').val();
        var str2 = phone.substr(0, 3) + "****" + phone.substr(7);
        $('#user_phone').html(str2);

    })

    function sendCode(info) {
        var phone = $('#userPhone').val();
        $.post("${pageContext.request.contextPath}/user/sendMessage",
            {"phone": phone},
            function (data) {
                if (data.state == 1) {
                    $("#code-error-text").css("color", "green");
                    //时间计数器
                    settime(info);
                }
                else {
                    $("#code-error-text").css("color", "red");

                }
                $("#code-error-text").html(data.message);
            })
    }

    function checkForm() {
        var phone = $('#userPhone').val();
        var verifyCode = $('#verifyCode').val();

        if (phone == null || phone == '' || verifyCode == null || verifyCode == '') {
            alert("请输入验证码！");
            return false;
        }
        else {
            return true;
        }
    }


    $('#validate-form1').validate({
        errorElement: 'span',
        errorClass: 'validate_error',
        rules: {
            oldPwd: {
                required: true
            }
        },
        messages: {
            oldPwd: {
                required: '请输入登录密码！'

            }

        }

    })

    $('#validate-form2').validate({
        errorElement: 'span',
        errorClass: 'validate_error',
        rules: {

            verifyCode: {
                required: true
            }
        },
        messages: {

            verifyCode: {
                required: '请输入短信验证码！'
            }

        }

    })


</script>


</body>
</html>
