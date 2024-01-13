<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 17:55
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
    <title>我的求租信息 · 恋家</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.bundle.css">
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

        .gallery li.gallery-item {
            float: left;
            width: 70%;
            height: 35%;
            padding: 15px 15px 5px;
            margin: 10px 1px;
            background: #fff;
            border-bottom: 3px solid #e0e0e0;
            box-sizing: border-box;
        }

        .gallery .item-loc {
            font-size: 16px;
            color: #2b333f;
            width: 250px;

        }

        .gallery .gallery-item .item-tit {

            width: 600px;
        }

        .gallery .item-info {
            height: 30px;
        }

        .gallery .item-price {
            float: right;
            color: #ff5300;
            font-size: 12px;
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
                <h3 class="right-title">我的求租列表</h3>
            </div>
            <div class="meta-form">
                <div class="col-sm-12 go-rent">

                    <c:if test="${empty userRentGetByid.rentgets}">
                        <p style="text-align: center">您还未发布求租信息，现在就去寻找您的专属小窝吧！<a
                                href="${pageContext.request.contextPath}/main/toShowPushRent" class="btn btn-info cus">我要发布求租</a>
                        </p>

                    </c:if>
                    <c:if test="${not empty userRentGetByid.rentgets}">
                        <h4 style="text-align: center;color: #0b0b0b;">尊敬的用户，你可以发布房屋求租，寻找你满意的小窝...<a
                                href="${pageContext.request.contextPath}/main/toShowPushRent" class="btn btn-info cus">我要发布求租</a>
                        </h4>
                        <br>
                        <h4 style="float: left;color: #0b0b0b;">您发布的求租信息:</h4><br>
                        <div class="col-sm-12 go-rent">
                            <div class="container-sm">
                                <div class="gallery-wrap">
                                    <ul class="gallery">
                                        <c:forEach items="${userRentGetByid.rentgets}" var="pageRentget">
                                            <c:if test="${pageRentget.getStatus == 1}">
                                                <li class="gallery-item">

                                                    <span class="sale-tag"></span>
                                                    <div class="item-desc">
                                                        <span class="item-tag item-tag-standard"></span>
                                                        <div class="item-text">
                                                            为恋家统一标准化装修，多属房龄较短的电梯公寓，在裸房基础上完成精装全配。
                                                        </div>
                                                        <a onclick="edit_btn(${pageRentget.rgId})" target="_blank"
                                                           style="text-align: left;float: left;"
                                                           class="item-tit">${pageRentget.rgTitle}(${pageRentget.roomAddress}，${pageRentget.roomArea}平精装)</a>
                                                    </div>
                                                    <div class="item-info" style="text-align: left;float: left;">
                                                        <div class="item-loc"><i
                                                                class="sprites icon-loc"></i>&nbsp;${pageRentget.roomAddress}
                                                        </div>

                                                    </div>
                                                    <div class="item-info" style="text-align: left;float: left;">
                                                        <div class="item-price" style="text-align: right;float: right;">
                                                            <span><sub>￥</sub>${pageRentget.minPrice}—${pageRentget.maxPrice}</span>元/月
                                                        </div>
                                                    </div>
                                                    <div class="item-info" style="text-align: left;float: left;">
                                                        <div class="item-loc">&nbsp;&nbsp;<span
                                                                class="glyphicon glyphicon-user"></span>
                                                            &nbsp;联系人：<span>${pageRentget.rgName}</span></div>
                                                        <br>
                                                    </div>
                                                    <div class="item-info" style="text-align: left;float: left;">
                                                        <div class="item-loc" style="text-align: right;float: right;">
                                                            <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;联系电话：<span>${pageRentget.rgPhone}</span>
                                                        </div>

                                                    </div>
                                                    <div class="item-info" style="text-align: left;float: left;">
                                                        <div class="item-loc">&nbsp;&nbsp;<span
                                                                class="glyphicon glyphicon-th-large"></span>&nbsp;<span>预期房屋面积：${pageRentget.roomArea}平方米</span>
                                                        </div>
                                                    </div>
                                                    <div class="item-info" style="text-align: left;float: left;">
                                                        <div class="item-loc" style="text-align: right;float: right;">
                                                            &nbsp;&nbsp;<span
                                                                class="glyphicon glyphicon-calendar"></span>&nbsp;<span>预期入住时间：<fmt:formatDate
                                                                value='${pageRentget.getCreateTime}' type='date'
                                                                pattern='yyyy-MM-dd'/></span></div>
                                                    </div>
                                                    <div class="item-info" style="text-align: left;float: left;">
                                                        <div class="item-loc">&nbsp;&nbsp;<span
                                                                class="glyphicon glyphicon-folder-close"></span>&nbsp;<span>需求描述：${pageRentget.roomDesc}</span>
                                                        </div>
                                                    </div>
                                                    <button type="button" onclick="del_btn(${pageRentget.rgId})"
                                                            class="btn btn-danger btn-xs"><i class="fa fa-pencil"></i>
                                                        删除
                                                    </button>
                                                </li>
                                            </c:if>
                                        </c:forEach>


                                    </ul>
                                </div>
                            </div>
                        </div>

                    </c:if>
                </div>
            </div>

        </div>

    </div>


</div>


</body>
<script>
    function del_btn(ids) {
        var uid = $('#uid').val();
        if (confirm("确定删除吗?")) {
            $.ajax({
                url: "${pageContext.request.contextPath}/userFind/deleteRentGet/" + ids,
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
                        window.location.href = "${pageContext.request.contextPath}/userFind/findId/" + uid;

                    }

                }
            });
        }
    }
</script>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</html>