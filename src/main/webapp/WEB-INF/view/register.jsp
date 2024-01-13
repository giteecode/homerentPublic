<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="x-ua-compatible" content="IE=Edge">
    <title>加入我们· 恋家</title>
    <meta http-equiv="cleartype" content="on">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/normalize.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/login_reg.css" rel="stylesheet"/>

</head>
<script type="text/javascript">


    function reg() {
        var username = $("#username").val();
        var phone = $("#Phone").val();
        var password = $("#password").val();
        var passwordAgain = $("#passwordAgain").val();
        // var verifyCode = $("#verifyCode").val();
        var usernameInfo = document.getElementById("username-error-text").innerHTML;
        var phoneInfo = document.getElementById("Phone-error-text").innerHTML;
        if (password != passwordAgain) {
            alert("两次输入的密码不一致");
            return false;
        }
        if (usernameInfo != " " || phoneInfo != " ") {
            alert("请输入正确格式完成注册");
            return false;
        }
        else {
            $.post("${pageContext.request.contextPath}/user/reg",
                {"username": username, "phone": phone, "password": password},
                function (data) {
                    if (data.state == 1) {
                        $("#myModal-text").html(data.message);
                        $("#myModal").modal();
                        window.location.href = "${pageContext.request.contextPath}/main/toShowLogin";
                    } else {
                        $("#myModal-text").html(data.message);
                        $("#myModal").modal();
                    }
                })


        }

    }


    function sendCode(info) {
        var phone = $("#Phone").val();

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

    function checkPhone() {
        var phone = $("#Phone").val();
        $.post("${pageContext.request.contextPath}/user/checkPhone",
            {"phone": phone},
            function (data) {

                if (data.state == 0) {
                    $("#Phone-error-text").css("color", "red");
                    $("#Phone-error-text").html(data.message);
                } else if (!(/^1[3|4|5|6|7|8|9]\d{9}$/.test(phone))) {
                    $("#Phone-error-text").css("color", "red");
                    $("#Phone-error-text").html("请输入正确格式的手机号");
                }
                else {
                    $("#Phone-error-text").html(" ");
                }

            })
    }

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

    function uname() {
        var username = $("#username").val();
        $.post("${pageContext.request.contextPath}/user/checkUsername",
            {"username": username},
            function (data) {
                if (data.state === 0) {
                    $("#username-error-text").css("color", "red");
                    $("#username-error-text").html(data.message);
                } else if (!(/^[a-zA-Z0-9_-]{6,16}$/.test(username))) {
                    $("#username-error-text").css("color", "red");
                    $("#username-error-text").html("用户名长度在6到16位之间,只包含字符、数字和下划线");
                } else {

                    $("#username-error-text").html(" ");
                }
            })
    }

</script>
<body>
<div class="page-wrap on-register">
    <div class="form-box" id="form-box">
        <form method="post" id="loginForm">
            <a href="/" class="logo"></a>
            <div class="fields">
                <div class="form-field">
                    <label><input type="text" autocomplete="off" placeholder="设置用户名" name="username" class="field-ipt"
                                  id="username" value="" onblur="uname()">
                        <span class="msg-defalult" id="username-error-text" style="text-align: center"/>
                    </label>

                </div>
                <br>
                <div class="form-field">
                    <label>
                        <input autocomplete="off" class="field-ipt" data-val="true" data-val-phone="手机号格式不正确"
                               data-val-required="请输入手机号" id="Phone" name="phone" placeholder="请输入手机号" type="text"
                               value="" onblur="checkPhone()"/>
                    </label>
                    <span class="msg-defalult" id="Phone-error-text" style="text-align: center"/>
                </div>
                <br>
                <div class="form-field">
                    <label><input type="password" autocomplete="off" placeholder="设置密码" name="password"
                                  class="field-ipt" id="password" value=""><i
                            class="icon-eye js-toggle-pwd"></i></label>
                    <span class="msg-defalult" id="password-error-text" style="text-align: center"/>
                </div>
                <br>
                <div class="form-field">
                    <label><input type="password" autocomplete="off" placeholder="确认密码" name="passwordAgain"
                                  class="field-ipt" id="passwordAgain" value=""><i
                            class="icon-eye js-toggle-pwd"></i></label>
                    <span class="msg-defalult" id="passwordAgain-error-text" style="text-align: center"/>
                </div>
                <br>

                <%--<div class="form-field" id="verify-code">--%>
                    <%--<input type="text" placeholder="请输入验证码" class="field-ipt field-get-code" name="verifyCode"--%>
                           <%--id="verifyCode" value="" autocomplete="off" aria-required="true" aria-invalid="false">--%>
                    <%--&lt;%&ndash; <a  class="get-code" id="getCode" onclick="getCode()">发送验证码</a><span class="msg-defalult" id="code-error-text" style="text-align: center" />&ndash;%&gt;--%>
                    <%--<input type="button" class="btn btn-lg btn-blue btn-contact btn-valid" id="getCode" value="获取验证码"--%>
                           <%--onclick="sendCode(this)"/> <br><span class="msg-defalult" id="code-error-text"--%>
                                                                <%--style="text-align: center"/>--%>
                <%--</div>--%>
                <div class="error-box" id="error-box">
                    <span id="error-text"></span>
                </div>
                <div class="btn-box">
                    <input type="button" value="注  册" class="sub-btn" onclick="reg()"/>
                </div>
                <div class="extra">
                    <div class="extra-left" style="color:#36353A;text-align:center;font-size:12px">
                        <label class="theme-checkbox" style="margin-top:-2px;"><input type="checkbox" checked
                                                                                      name="protocol"><i
                                class="icon-check"></i></label>
                        同意<a href="javascript:;" class="site-protocol js-open-modal" data-target="#modal-protocol">《恋家服务条款》</a>
                    </div>
                    <span class="extra-right" style="font-size:12px;">
                        已有账号？现在就  <a href="${pageContext.request.contextPath}/main/toShowLogin" class="to-regi">登录</a>
                    </span>
                </div>
            </div>
        </form>
    </div>
    <div class="modal js-modal protocol-modal" id="modal-protocol">
        <div class="modal-inner">
            <div class="modal-hd" style="text-align:center">网站服务条款<span class="close js-close">&times;</span>
            </div>
            <div class="modal-content">
                <p>
                    尊敬的用户，欢迎您注册成为本网站用户。在注册前请您仔细阅读如下服务条款：
                    本网站（域名：www.lianjia.com）为江西***公寓管理有限公司（下简称恋家）运营的网站本服务协议双方为恋家与网站用户，本服务协议具有合同效力。
                    您确认本服务协议后，本服务协议即在您和本网站之间产生法律效力。请您务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向本网站咨询。
                    无论您事实上是否在注册之前认真阅读了本服务协议，只要您点击协议正本下方的"注册"按钮并按照本网站注册程序成功注册为用户，您的行为仍然表示您同意并签署了本服务协议。
                    您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即停止注册程序或停止使用本网站服务。
                </p>
                <h4>1．本网站服务条款的确认和接纳</h4>
                <p>
                    本网站各项服务的所有权和运作权归恋家拥有。
                </p>
                <h4>2．用户必须：</h4>
                <p>
                    (1)自行配备上网的所需设备， 包括个人电脑、调制解调器或其他必备上网装置。
                </p>
                <p>
                    (2)自行负担个人上网所支付的与此服务有关的电话费用、 网络费用。
                </p>
                <h4>
                    3．用户在本网站交易平台上不得发布下列违法信息：
                </h4>
                <p>
                    (1)反对宪法所确定的基本原则的；
                </p>
                <p>
                    (2)危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；
                </p>
                <p>
                    (3)损害国家荣誉和利益的；

                </p>
                <p>
                    (4)煽动民族仇恨、民族歧视，破坏民族团结的；

                </p>
                <p>
                    (5)破坏国家宗教政策，宣扬邪教和封建迷信的；

                </p>
                <p>
                    (6)散布谣言，扰乱社会秩序，破坏社会稳定的；

                </p>
                <p>
                    (7)散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；

                </p>
                <p>
                    (8)侮辱或者诽谤他人，侵害他人合法权益的；

                </p>
                <p>
                    (9)含有法律、行政法规禁止的其他内容的。

                </p>
                <h4>
                    4． 有关个人资料 用户同意：

                </h4>
                <p>
                    (1) 提供及时、详尽及准确的个人资料。

                </p>
                <p>
                    (2)同意接收来自本网站的信息。

                </p>
                <p>
                    (3) 不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。

                </p>
                <p>
                    (4)恋家不公开用户的姓名、地址、电子邮箱和笔名，以下情况除外：

                </p>
                <p>
                    &emsp;&emsp;（a）用户授权恋家透露这些信息。
                </p>
                <p>
                    &emsp;&emsp;（b）相应的法律及程序要求恋家提供用户的个人资料。如果用户提供的资料包含有不正确的信息，恋家保留结束用户使用本网站信息服务资格的权利。
                </p>
                <h4>
                    5．
                    用户在注册时应当选择稳定性及安全性相对较好的电子邮箱，并且同意接受并阅读恋家发往用户的各类电子邮件。如用户未及时从自己的电子邮箱接受电子邮件或因用户电子邮箱或用户电子邮件接收及阅读程序本身的问题使电子邮件无法正常接收或阅读的，只要恋家成功发送了电子邮件，应当视为用户已经接收到相关的电子邮件。电子邮件在发信服务器上所记录的发出时间视为送达时间。

                </h4>
                <h4>
                    6． 服务条款的修改
                </h4>
                <p>
                    恋家有权在必要时增加或修改服务条款，本网站服务条款一旦发生变动，将会在本网站页面上提示修改内容。变更后的条款一经在本网站公布后，立即自动生效。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。如果用户继续享用本网站信息服务，则视为接受服务条款的变动。恋家保留随时修改或中断本网站服务而不需通知用户的权利。恋家行使修改或中断服务的权利，不需对用户或第三方负责。

                </p>
                <h4>
                    7． 用户隐私制度
                </h4>
                <p>
                    尊重用户个人隐私是恋家的一项基本政策。所以，恋家一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本网站中的非公开内容，除非有法律许可要求或恋家在诚信的基础上认为透露这些信息在以下几种情况是必要的：

                </p>
                <p>
                    (1)、事先获得用户的明确授权；自行支付与此服务有关的费用；

                </p>
                <p>
                    (2)、遵守有关法律规定，遵从恋家合法服务程序

                </p>
                <p>
                    (3)、按照相关政府主管部门的要求；

                </p>
                <p>
                    (4)、在紧急情况下，为维护用户及公众的权益；

                </p>
                <p>
                    (5)、为维护恋家的合法权益；

                </p>
                <p>
                    (6)、其他需要公开、编辑或透露个人信息的情况。

                </p>
                <p>
                    (7)、保持维护恋家的商标所有权。

                </p>
                <p>
                    本网站保留发布会员人口分析咨询的权利。

                </p>
                <h4>
                    8．用户的账号、密码和安全性

                </h4>
                <p>
                    您一旦注册成功成为用户，您将得到一个密码和账号。您应该保管好自己的帐号和密码安全，并对您的账号和密码的安全，以及对通过您的账户和密码实施的行为负责。您可随时根据指示改变您的密码，也可以结束旧的账号重开一个新账号。用户同意若发现任何非法使用用户账号或安全漏洞的情况，请立即通告本网站。

                </p>
                <h4>
                    9． 拒绝提供担保

                </h4>
                <p>
                    用户明确同意信息服务的使用由用户个人承担风险。 恋家不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。

                </p>
                <h4>
                    10．有限责任

                </h4>
                <p>
                    恋家对本网站任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害来自：不正当使用本网站服务，或用户传送的信息不符合规定等。这些行为都有可能导致恋家或本网站形象受损，所以本网站事先提出这种损害的可能性，同时会尽量避免这种损害的发生。

                </p>
                <h4>
                    11．信息的储存及限制

                </h4>
                <p>
                    恋家有判定用户的行为是否符合本网站服务条款的要求和精神的权利，如果用户违背本网站服务条款的规定，恋家有权终止向用户提供服务或注销该用户的账号。

                </p>
                <h4>
                    12．用户管理

                </h4>
                <p>
                    用户必须遵循：
                    <br/>
                    在使用本网站过程中的所有行为均遵守国家法律、法规等规范性文件及本网站所发布的其他规则的规定和要求，不违背社会公共利益或公共道德，不损害他人的合法权益，不违反本协议及相关规则， 不干扰或混乱网络服务。

                </p>
                <h4>
                    13．保障

                </h4>
                <p>
                    其它人使用用户的电脑、账号和其它知识产权的追索费。
                    <br/>
                    用户超出服务范围或违反服务条款给恋家或第三人造成损害的，用户应赔偿经济损失包括但不限于诉讼费、保全费、交通费、律师费等。
                </p>
                <h4>
                    14．结束服务

                </h4>
                <p>
                    用户或恋家可随时根据实际情况中断一项或多项服务。恋家不需对任何个人或第三方负责而可以随时中断服务。用户若反对任何服务条款的建议或对后来的条款修改有异议，或对本网站服务不满，用户可以行使如下权利：

                </p>
                <p>
                    (1) 不再使用本网站信息服务。

                </p>
                <p>
                    (2) 通知恋家停止对该用户账号的服务。

                </p>
                <p>
                    结束用户服务后，用户使用本网站服务的权利马上终止。从那时起，用户没有权利，本网站也没有义务传送任何未处理的信息或未完成的服务给用户或第三方。

                </p>
                <h4>
                    15．通告

                </h4>
                <p>
                    所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。

                </p>
                <h4>
                    16．信息内容的所有权

                </h4>
                <p>
                    本网站定义的信息内容包括：文字、软件、声音、相片、录像、图表；在广告中全部内容；本网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律或知识产权相关法律的保护。所以，用户只能在恋家和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。

                </p>
                <h4>
                    17．法律

                </h4>
                <p>
                    本网站信息服务条款要与中华人民共和国的法律解释一致。用户和恋家一致同意服从恋家所在地有管辖权的法院管辖。如发生本网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新解释，同时这些条款则依旧保持对用户的约束力。
                </p>
            </div>
            <div class="modal-ft">
                <a href="javascript:;" id="aClose" class="js-close btn-sure">确定</a>
            </div>
        </div>
    </div>
    <!--模态框组件-->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>提示</h3>
                </div>
                <div class="modal-body">
                    <p><span id="myModal-text"></span></p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-info" data-dismiss="modal">确定</button>
                </div>
            </div>
        </div>
    </div>
    <div class="corp-info">
        Copyright &copy; 2012-2018 uoko.com（江西恋家**公寓管理有限公司）. All Rights Rerved 蜀ICP备130****38号-1
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/uniformedAPI.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<script>
    $(function () {

        /*  var codeVerifyer = $.uoko_verify('#verify-graph', {   //等同于 $.uoko_verify({hook:'#verify-hook',graph:{hook:'#graph-hook'} ....})
              //常用配置
              input: {
                  //props为生成标签属性
                  props: {
                      class: 'field-ipt field-get-code',
                      name: 'verifyCode',
                      id: 'verifyCode',
                      autocomplete: 'off'
                  }
              },
              btn: {
                  props: {
                      class: 'get-code disabled',
                      id: 'getCode'
                  },
              },
              graph:{
                  input: {
                      props: {
                          class: 'field-ipt graph-ipt'
                      }
                  }
              },
              //关联的电话号码字段id
              phoneInput: '#Phone',
              //codeType
              codeType: 1,
              //修改默认的提示组件
              components: {
                  $info: function (msg) {
                      $('#error-box').addClass('show');
                      $('#error-text').html(msg);
                  }
              }
          });
  */


        if ("" != null && $.trim("") !== '') {
            $('#error-box').addClass('show');
            $('#error-text').html("");
        }

        $.validator.methods.phone = function (value, element) {
            return this.optional(element) || /^1[3|4|5|6|7|8|9]\d{9}$/.test(value);
        };

        function isEmptyObj(obj) {
            for (var i in obj) {
                return false;
            }
            return true;
        }

        var errorCollection = {};
        var validator = $("#loginForm").validate({
            rules: {
                protocol: {
                    required: true
                },
                Phone: {
                    required: true,
                    remote: '/api/user/can-join'//远程验证地址,返回json字符串: true(通过)或false,undefined,null(验证不通过)
                },
                password: {
                    required: true,
                    minlength: 6

                },
                passwordAgain: {
                    equalTo: "#password"
                },
                verifyCode: {
                    required: true
                }
            },
            messages: {
                protocol: "请勾选同意服务协议",
                Phone: {
                    required: "请输入手机号",
                    phone: "请输入真实的手机号码",
                    remote: '该号码已注册，请直接登录'//远程验证错误信息
                },
                password: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 6 个字符"
                },
                passwordAgain: {
                    equalTo: "两次输入不一致"
                },
                verifyCode: {
                    required: "请输入验证码",
                }
            },

            showErrors: function (errorMap, errorList) {
                var $errorBox = $('#error-box');
                var $errorText = $('#error-text');

                if (this.numberOfInvalids() && !$errorBox.hasClass('show')) {
                    $errorBox.addClass('show');
                } else if (!this.numberOfInvalids()) {
                    $errorBox.removeClass('show');
                    $errorText.html('');

                    return;
                }

                var isEmpty = isEmptyObj(errorMap);

                if (isEmpty) {
                    errorMap = {};
                    this.currentElements.each(function () {
                        var name = $(this).attr('name');
                        if (!errorMap[name]) {
                            errorMap[name] = '';
                        }
                    });
                }

                errorCollection = $.extend(errorCollection, errorMap);

                $errorText.html(function () {
                    for (var i in errorCollection) {
                        if (errorCollection[i]) {
                            return errorCollection[i];
                        }
                    }
                    return '';
                });

            }
        });

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

        thumbSlider.init({
            $el: '#slider-bar',
            done: function () {

                this.$text.html('验证通过');
                $('#sub-btn').prop('disabled', false);
            },
            beforeDone: function () {//添加完成验证前的逻辑，return false 则done函数不会执行
                if (!validator.element('#Phone')) {
                    return false;
                }
                codeVerifyer.$btn.removeClass('disabled');
                codeVerifyer.$btn.trigger('click');
            }
        });

        //简单弹出层
        ;(function simpleModal() {

            function hasScrollBar() {
                return document.body.scrollTop === (document.body.scrollTop = 1);
            }

            function getScrollBarWidth() {

                if (!hasScrollBar()) {
                    return 0;
                }

                var el = $('<div style="position:absolute;z-index:-99;visibility:hidden;height:100px;width:100px;overflow: auto"></div>');
                var ch = $('<div style="height: 200px;"></div>');
                var ret = 0;

                el.append(ch);
                $('body').append(el);
                ret = 100 - ch.width();
                el.remove();
                el = null;
                ch = null;
                return ret;
            }

            var scrollWidth = getScrollBarWidth();


            function showModal(selector) {
                var $body = $('body');
                var $modal = $(selector);


                !$body.data('modal_bg') && $body.data('modal_bg', $('<div class="modal-bg">'));

                $body.append($body.data('modal_bg'));
                $modal.addClass('show');
                $body.addClass('modal-show');

                /*   if (scrollWidth) {
                       !$body.data('oldPad') && $body.data('oldPad', $body.css('paddingRight'));
                       $body.css('paddingRight', scrollWidth);
                   }*/


            }


            function hideModal() {
                var $body = $('body');
                if ($body.data('modal_bg')) {
                    $body.data('modal_bg').remove();
                }
                $body.removeClass('modal-show');
                $body.css('paddingRight', $body.data('oldPad'));
                $('.js-modal').removeClass('show');
            }

            $('.js-open-modal').click(function (e) {
                e.preventDefault();
                showModal($(this).attr('data-target'));

            });
            $('.js-modal').on('click', function (e) {
                if (e.target === this) {
                    hideModal();
                }

            });

            $('.js-modal').on('click', '.js-close', function () {
                hideModal();
            });

            $('.js-toggle-pwd').click(function () {

                var ipt = $(this).prev('input');

                $(this).toggleClass('open');
                ipt.prop('type', $(this).hasClass('open') ? 'text' : 'password');
            });

        })()

    })
</script>


</body>


</html>
