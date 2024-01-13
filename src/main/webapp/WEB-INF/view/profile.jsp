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

    <meta name="keywords" content="">
    <meta name="description" content="">

    <meta name="viewport" content="width=1200">
    <meta http-equiv="cleartype" content="on">
    <title>个人资料 · 恋家</title>

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
                <h3 class="right-title">个人资料</h3>
            </div>

            <div class="avatar-upload">

                <form action="${pageContext.request.contextPath}/upload/uploadHardIcon" method="post" id="uploadImg"
                      name="uploadImg" enctype="multipart/form-data">


                    <div class="avatar-pic" id="avatar-box" style="cursor:pointer">

                        <c:if test="${not empty user.hardIcon}">
                            <img src="${pageContext.request.contextPath}/upload/${user.hardIcon}" alt="" width="130"
                                 height="130" id="bigIcon" class="raw"/>
                        </c:if>
                        <c:if test="${ empty user.hardIcon}">
                            <img src="${pageContext.request.contextPath}/img/default-male-avatar.png" width="130"
                                 height="130" id="bigIcon" class="raw" alt=""/>
                        </c:if>
                    </div>
                    <input type="file" id="uploadimage" style="display: initial;" value="" name="upload"
                           class="btn btn-default btn-cus" onchange="showPreview(this)"/>
                    <div style="text-align:center;margin-top:10px;position:relative">
                        <input type="button" class="btn btn-info btn-cus" onclick="uploadHard()" value="更换头像"/>

                    </div>
                    <p>支持JPG、JPEG、PNG格式 / 大小不超过1M</p>
                </form>


                <%--
                     <a href="javascript:;" class="btn btn-info btn-cus"  id="avatar-upload">更换头像</a>
                --%>


            </div>

            <form action="" class="form-horizontal" id="validate-form" method="post" novalidate="novalidate"
                  role="form">
                <div class="meta-info">
                    <h4 class="right-sub-title">
                        <span>完善以下信息，你可以获得更多优质房源</span>
                    </h4>
                    <div class="meta-form">
                        <input type="hidden" id="uid" name="uid" value="${user.id}"/>
                        <div class="form-group">
                            <label class="control-label col-sm-3">昵称</label>
                            <div class="col-sm-9">
                                <input class="form-control" id="uname" name="uname" type="text" value="${user.name}"/>
                                <span class="field-validation-valid" data-valmsg-for="NickName"
                                      data-valmsg-replace="true"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-3">性别</label>
                            <div class="col-sm-9">
                                <c:if test="${empty user.sex}">
                                    <label class="radio-inline">
                                        <input checked="checked" data-val="true" data-val-required="Gender 字段是必需的。"
                                               name="sex" type="radio" value="1"/> <span>男</span>
                                    </label>
                                    <label class="radio-inline">
                                        <input name="sex" type="radio" value="0"/><span>女</span>
                                    </label>
                                </c:if>
                                <c:if test="${user.sex == 0}">
                                    <label class="radio-inline">
                                        <input data-val="true" data-val-required="Gender 字段是必需的。" name="sex"
                                               type="radio" value="1"/> <span>男</span>
                                    </label>
                                    <label class="radio-inline">
                                        <input checked="checked" name="sex" type="radio" value="0"/><span>女</span>
                                    </label>
                                </c:if>
                                <c:if test="${user.sex == 1}">
                                    <label class="radio-inline">
                                        <input checked="checked" data-val="true" data-val-required="Gender 字段是必需的。"
                                               name="sex" type="radio" value="1"/> <span>男</span>
                                    </label>
                                    <label class="radio-inline">
                                        <input name="sex" type="radio" value="0"/><span>女</span>
                                    </label>
                                </c:if>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-3">年龄</label>
                            <div class="col-sm-4 has-feedback">
                                <input class="form-control" id="age" name="age" type="text" value="${user.age}"/>

                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label col-sm-3">职业</label>
                            <div class="col-sm-6">
                                <input class="form-control" id="job" name="job" type="text" value="${user.job}"/>

                                <%--  <input class="form-control" id="Career" name="Career" type="text" value="${user.job}" />--%>
                                <span class="field-validation-valid" data-valmsg-for="Career"
                                      data-valmsg-replace="true"></span>
                            </div>
                        </div>
                        <div class="form-group form-inline">
                            <label class="control-label col-sm-3">所在地 </label>
                            <div class="col-sm-9">
                                <div class="row" style="white-space:nowrap">
                                    <select class="form-control" name="province" id="province"
                                            onchange="provinceChange()" style="margin-left:15px;">
                                        <option value="">省份</option>

                                    </select>

                                    <select class="form-control" name="city" id="city" onchange="cityChange()">
                                        <option value="">城市</option>
                                    </select>

                                    <select class="form-control" name="area" id="area" onchange="areaChange()">
                                        <option value="">区域</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-3">地址</label>
                            <div class="col-sm-9">
                                <input class="form-control" id="address" name="address" type="text"
                                       value="${user.address}"/>
                                <span class="field-validation-valid" data-valmsg-for="Career"
                                      data-valmsg-replace="true"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="characters">
                    <h4 class="right-sub-title">
                        <span>我的标签，完善标签可以帮你找到志同道合的人</span>
                    </h4>

                    <div class="tags-wrap">
                        <div class="tags-bg">
                            <i class="c0"></i><i class="c1"></i><i class="c2"></i><i class="c3"></i>
                        </div>

                        <div id="tag-board" class="tag-board"></div>
                    </div>
                    <div class="text-center">
                        <a href="javascript:;" class="fresh-tag-board" id="fresh-tag-board"><i
                                class="ucenter_icon-fresh"></i>换一批</a>
                    </div>
                    <div class="pill-board" id="pill-board">
                        <div class="pill-board-tit"><span>这就是我</span></div>
                    </div>
                </div>
                <div class="sub-box">
                    <input type="button" value="保存" onclick="addressOnbiur()" class="btn btn-info cus">&nbsp;
                    <a href="/" class="btn btn-default cus">返回</a>
                </div>
            </form>
        </div>

    </div>


</div>
<script src="${pageContext.request.contextPath}/js/data.js"></script>
<script src="${pageContext.request.contextPath}/js/address.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-confirm.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.unobtrusive.js"></script>
<script>

</script>
<script src="${pageContext.request.contextPath}/js/center/ucenter_common.js"></script>
<!--统计代码-->


<script src="${pageContext.request.contextPath}/js/ion.rangeSlider.min.js"></script>

<script src="${pageContext.request.contextPath}/js/underscore.min.js"></script>
<script src="${pageContext.request.contextPath}/js/ucenter_info.js"></script>
<script src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>
<script src="${pageContext.request.contextPath}/js/UploadFile.js"></script>
<script src="${pageContext.request.contextPath}/js/plupload.full.min.js"></script>
<script>

    var address1 = $('#address').val();

    function addressOnbiur() {
        var uid = $('#uid').val();
        var uname = $('#uname').val();
        var age = $('#age').val();
        var job = $("#job").val();
        //var job = $("#job").find("option:selected").text();
        var sex = $("input[name='sex']:checked").val();
        if (addrShow.value == undefined || addrShow.value == null) {
            address1 = $('#address').val();
        } else {
            address1 = addrShow.value + "-" + $('#address').val();
        }

        console.log(address1);
        console.log(job);
        $.post("${pageContext.request.contextPath}/user/updateUserInfo",
            {"uid": uid, "uname": uname, "age": age, "job": job, "sex": sex, "address": address1},
            function (data) {
                if (data.state == 1) {
                    alert(data.message);
                    window.location.href = "${pageContext.request.contextPath}/main/toShowUserInfo";
                } else {
                    alert(data.message);
                }
            })
    }

    //上传头像按钮
    function uploadHard() {
        var fileVal = $('#uploadimage').val();
        if (!fileVal) {
            alert("请选择更换的头像！");
            return false;
        } else {
            var formData = new FormData(uploadImg);
            $.ajax({
                url: '${pageContext.request.contextPath}/upload/uploadHardIcon',
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                success: function (data) {
                    if (data.state == 1) {
                        alert(data.message);
                        window.location.href = '${pageContext.request.contextPath}/main/toShowUserInfo';
                    } else {
                        alert(data.message);
                    }

                }
            })
        }
    }

    //头像上传
    function showPreview(source) {
        var file = source.files[0];
        if (window.FileReader) {
            var fr = new FileReader();
            console.log(fr);
            var icon = document.getElementById('icon');
            var bigIcon = document.getElementById('bigIcon');
            fr.onloadend = function (e) {
                icon.src = e.target.result;
                bigIcon.src = e.target.result;
            };
            fr.readAsDataURL(file);
            icon.style.display = 'block';
        }
    }


    //表单验证
    $(function () {

        $('#validate-form').validate({
            errorElement: 'span',
            errorClass: 'validate_error',
            rules: {
                Name: {
                    required: true
                },
                NickName: {
                    required: true
                },
                Company: {
                    required: true
                },
                Career: {
                    required: true
                },
                Birthday: {
                    required: true,
                    date: true
                }
            },
            messages: {
                Name: {
                    required: '姓名不能为空!'
                },
                NickName: {
                    required: '昵称不能为空！'
                },
                Company: {
                    required: '公司不能为空'

                },
                Career: {
                    required: '工作不能为空！'
                },

            }

        });

    })
</script>


</body>
</html>