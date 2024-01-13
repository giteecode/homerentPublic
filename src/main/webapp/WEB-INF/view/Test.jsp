<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title></title>

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
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

<!-- 模态框（Modal） -->
<div class="modal fade" id="uploadModel" tabindex="-1" role="dialog" aria-labelledby="uploadModelLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="text-align:center;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title upload" id="uploadModelLabel">
                    用户个人信息
                </h4>
            </div>
            <form class="form-horizontal style-form" method="post" action="" enctype="multipart/form-data"
                  onSubmit="return myCheck(this)">

                <div class="modal-body">
                    <div class="form-group" style="border:none;">
                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">用户名:</span>
                        <div class="col-sm-6">
                            <input type="text" id="modal-username" value="" name="username" class="form-control">
                            <span class="help-block"></span>
                        </div>
                        <div class="col-sm-2" style="text-align:left;padding:0;height:32px;line-height:32px;">
                            <font id="showResult1" style="color:red">*</font>
                        </div>

                    </div>

                    <div class="form-group" style="border:none;margin-top:30px;">
                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">用户姓名:</span>
                        <div class="col-sm-6">
                            <input type="text" name="uname" value="" id="modal-name" class="form-control">
                        </div>
                        <div class="col-sm-2" style="text-align:left;padding:0;height:32px;line-height:32px;">
                            <font id="showResult2" style="color:red"></font>
                        </div>

                    </div>

                    <div class="form-group" style="border:none;margin-top:30px;">
                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">联系电话:</span>
                        <div class="col-sm-6">
                            <input type="text" name="phone" value="" id="modal-phone" class="form-control">
                        </div>
                        <div class="col-sm-2" style="text-align:left;padding:0;height:32px;line-height:32px;">
                            <font id="showResult3" style="color:red"></font>
                        </div>

                    </div>

                    <div class="form-group" style="border:none;margin-top:30px;">
                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">年龄:</span>
                        <div class="col-sm-3">
                            <input type="text" name="age" value="" id="modal-age" class="form-control">
                        </div>
                        <div class="col-sm-1" style="text-align:left;padding:0;height:32px;line-height:32px;">
                            <font id="showResult4" style="color:red"></font>
                        </div>
                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">性别:</span>
                        <div class="col-sm-3">
                            <select class="form-control" name="sex" id="select_sex">
                                <option value="" selected="selected">请选择</option>
                                <option value="1">男</option>
                                <option value="0">女</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group" style="border:none;margin-top:30px;">
                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">使用状态:</span>
                        <div class="col-sm-3">
                            <select class="form-control" name="status" id="select_status">


                                <option value="1" selected="selected">激活</option>
                                <option value="0">禁用</option>

                            </select>
                        </div>

                        <span class="col-sm-3"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">是否是房东:</span>
                        <div class="col-sm-3">
                            <select class="form-control" name="isOwner" id="select_isOwner">

                                <option value="1" selected="selected">房东</option>
                                <option value="0">租客</option>


                            </select>
                        </div>

                    </div>


                    <div class="form-group" style="border:none;margin-top:30px;">
                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">注册时间:</span>
                        <div class="col-sm-4">
                            <input type="text" name="createTime" value="" id="modal-createTime" class="form-control">
                        </div>
                        <div class="col-sm-1" style="text-align:left;padding:0;height:32px;line-height:32px;">
                            <font id="showResult5" style="color:red"></font>
                        </div>

                    </div>


                </div>
                <div class="modal-footer">

                    <button type="button" id="btn_push_files" onclick="updataModel(${user.id})"
                            class="btn btn-round btn-primary">
                        保存
                    </button>
                    <button type="button" class="btn btn-round btn-default" data-dismiss="modal">
                        取消
                    </button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


<!--页头-->
<div class="header-nav-box">
    <div class="container">
        <div class="row header">
            <div class="header-nav-left">
                <a href="/" class="site-log">
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
                        <span class="nav-user-greeting">
                             <c:if test="${not empty user.name}">
                                 您好，${user.name}！
                             </c:if>
                            <c:if test="${ empty user.name}">
                                您好，匿名用户！
                            </c:if>

                        </span>
                    </li>
                    <li>
                        <a href="/logout"><u>退出</u></a>
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
    <div class="main-left" id="left-menu">
        <div class="main-left-inner">
            <section class="left-item">
                <h3 class="left-tit">恋家<span class="caret"></span></h3>
                <ul class="left-list">


                    <li><a id="li3" href="/myuoko/contracts">我的合同</a></li>


                </ul>
            </section>
            <section class="left-item">
                <h3 class="left-tit">服务<span class="caret"></span></h3>
                <ul class="left-list">
                    <li><a id="li21" href="/workorder">我的服务</a></li>
                    <li><a id="li22" href="/workorder/repair">维修申请</a></li>
                    <li><a id="li23" href="/workorder/service">上门服务</a></li>
                    <li><a id="li24" href="/workorder/complainnew">投诉建议</a></li>

                </ul>
            </section>
            <section class="left-item">
                <h3 class="left-tit">账户<span class="caret"></span></h3>
                <ul class="left-list">
                    <li><a id="li8" href="/setting/profile">个人资料</a></li>
                    <li><a id="li9" href="/setting/safe">账户设置</a></li>
                    <li><a id="li7" href="/myuoko/bill">我的账单</a></li>


                </ul>
            </section>

        </div>

    </div>


    <div class="main-right">
        <div class="main-right-inner">
            <div class="right-hd">
                <h3 class="right-title">用户管理</h3>
            </div>
            <div class="container-fluid">
                <div class="row">

                    <!-- 上部放按钮的地方开始 -->
                    <form class="form-horizontal style-form" method="get"
                          action="${pageContext.request.contextPath}/user/findAllUser"
                          style="margin-top:10px;text-align:center;">
                        <div class="form-group" style="border:none;margin-top:5px;">
                            <div class=" col-sm-3" style="float:left;">
                                <button type="button" class="btn btn-success" onclick="jihuodecfm()"
                                        id="user_jihuo_all">
                                    <span class="glyphicon glyphicon-user"
                                          style="color: rgb(255,255,255); font-size: 12px;text-shadow: rgb(255,255,255) 0px 0px 0px; ">&nbsp;全部激活</span>
                                </button>


                                <button type="button" class="btn btn-danger" onclick="deledecfm()" id="user_delete_all">
                                    <span class="glyphicon glyphicon-trash"
                                          style="color: rgb(255,255,255); font-size: 12px;text-shadow: rgb(255,255,255) 0px 0px 0px; ">&nbsp;全部禁用</span>
                                </button>

                            </div>
                            <div class=" col-sm-4" style="float:left;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">用户名/手机号:</span>

                                <input type="text" name="usernameOrphone" value="" class="form-control"
                                       style="width:45%;height:28px;float:left;">

                            </div>


                            <div class=" col-sm-5" style="float:left;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">性别:</span>
                                <div class="col-sm-7">
                                    <select class="form-control"
                                            style="width:45%;font-size:12px;height:28px;text-align: center;"
                                            id="sex-find" name="sex">
                                        <option value="" selected="selected">请选择</option>
                                        <option value="1">男</option>
                                        <option value="0">女</option>
                                    </select>
                                </div>
                            </div>


                        </div>

                        <div class="form-group" style="border:none;">


                            <div class=" col-sm-4" style="float:left;margin-left:40px;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">使用状态：</span>

                                <select class="form-control" style="width:45%;font-size:12px;height:28px;"
                                        name="status">
                                    <option value="" selected="selected">请选择</option>
                                    <option value="1">激活</option>
                                    <option value="0">禁用</option>
                                </select>

                            </div>

                            <div class=" col-sm-4" style="float:left;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">角色：</span>

                                <select class="form-control" style="width:45%;font-size:12px;height:28px;"
                                        name="isOwner">
                                    <option value="" selected="selected">请选择</option>
                                    <option value="1">房东</option>
                                    <option value="0">租客</option>
                                </select>

                            </div>

                            <div class=" col-sm-3" style="float:left;">
                                <input type="text" name="Info" class="form-control" value=""
                                       style="width:60%;height:28px;float:left;">

                                <button type="submit" class="btn btn-round btn-warning"
                                        style="height:28px;text-align:center;line-height:28px;" onclick="sousuo()">
                                    <span class="glyphicon glyphicon-search"
                                          style="color: rgb(255,255,255);text-align: center; font-size: 12px;text-shadow: rgb(255,255,255) 0px 0px 0px; ">&nbsp;搜索</span>
                                </button>

                            </div>

                        </div>
                    </form>
                    <!-- 上部放按钮的地方结束-->
                    <!-- 表格部分开始-->
                    <table class="table ">
                        <thead>
                        <tr class="thead-dark">
                            <th style="text-align:center;"><input type="checkbox" class="list-child" value=""
                                                                  id="check_all"/></th>
                            <th style="text-align:center;">用户名</th>
                            <th style="text-align:center;">姓名</th>
                            <th style="text-align:center;">性别</th>
                            <th style="text-align:center;">年龄</th>
                            <th style="text-align:center;">联系电话</th>
                            <th style="text-align:center;">是否房东</th>
                            <th style="text-align:center;">使用状态</th>
                            <th style="text-align:center;">注册时间</th>
                            <th style="text-align:center;">操作</th>


                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${pageInfo.list}" var="page">
                            <input type="hidden" id="uid" name="uid" value="${page.id}"/>
                            <tr class="mylist">
                                <td style="text-align:center;"><input type="checkbox" class="list-child check_item"
                                                                      class="list-child" value=""/></td>
                                <td style="text-align:center;">${page.username}</td>
                                <td style="text-align:center;">${page.name}</td>

                                <td style="text-align:center;">
                                    <c:if test="${page.sex == 1}">
                                        男
                                    </c:if>
                                    <c:if test="${page.sex == 0}">
                                        女
                                    </c:if>
                                </td>
                                <td style="text-align:center;">${page.age}</td>
                                </td>
                                <td style="text-align:center;">${page.phone}</td>
                                <td style="text-align:center;">
                                    <c:if test="${page.isOwner == 1}">
                                        <button type="button" class="btn btn-info btn-xs">房东</button>
                                    </c:if>
                                    <c:if test="${page.isOwner == 0}">
                                        <button type="button" class="btn btn-primary btn-xs">租客</button>
                                    </c:if>
                                </td>
                                <td style="text-align:center;">
                                    <c:if test="${page.status == 1}">
                                        <a href="${pageContext.request.contextPath }/user/deleteUser/${page.id}">
                                            <button class="btn btn-success btn-xs" onclick="deledecfm()"><i
                                                    class="fa fa-trash-o "></i>激活
                                            </button>
                                        </a>

                                    </c:if>
                                    <c:if test="${page.status == 0}">
                                        <a href="${pageContext.request.contextPath }/user/jihuoUser/${page.id}">
                                            <button class="btn btn-drak btn-xs" onclick="jihuodecfm()"><i
                                                    class="fa fa-trash-o "></i>禁用
                                            </button>
                                        </a>
                                    </c:if>
                                </td>
                                <td style="text-align:center;"><fmt:formatDate value='${page.createTime}' type='date'
                                                                               pattern='yyyy-MM-dd'/></td>

                                <td style="text-align:center;">
                                    <!-- 你根据原型图修改操作的地方 -->
                                    <button type="button" onclick="edit_btn(${page.id})" id="edit_btn"
                                            class="btn btn-primary btn-xs" data-toggle="modal" u-id="${page.id}"><i
                                            class="fa fa-pencil"></i>
                                        编辑
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <!-- 表格部分结束-->
                    <!-- 显示分页条	 -->
                    <div class="row">
                        <div class="col-md-6">当前第${pageInfo.pageNum}页,共${pageInfo.pages}页,共${pageInfo.total}条记录</div>
                        <div class="col-md-6">
                            <nav aria-label="Page navigation">
                                <ul class="pagination">
                                    <li><a href="${pageContext.request.contextPath }/user/findAllUser?pageNo=1">首页</a>
                                    </li>
                                    <li>
                                        <c:if test="${pageInfo.hasPreviousPage}">
                                            <a href="${ pageContext.request.contextPath }/user/findAllUser?pageNo=${pageNum-1}"
                                               aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </c:if>
                                    </li>
                                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                                        <c:if test="${page_num ==pageInfo.pageNum}">
                                            <li class="active"><a href="#">${page_num}</a></li>
                                        </c:if>
                                        <c:if test="${page_num != pageInfo.pageNum}">
                                            <li>
                                                <a href="${ pageContext.request.contextPath }/user/findAllUser?pageNo=${page_num}">${page_num}</a>
                                            </li>
                                        </c:if>
                                    </c:forEach>
                                    <li>
                                        <c:if test="${pageInfo.hasNextPage}">
                                            <a href="${ pageContext.request.contextPath }/user/findAllUser?pageNo=${pageNum+1}"
                                               aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </c:if>

                                    </li>
                                    <li>
                                        <a href="${ pageContext.request.contextPath }/user/findAllUser?pageNo=${pageInfo.pages}">末页</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div><!-- /content-panel -->

            </div>
        </div>


    </div>

</div>
</div>

</div>


</div>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-confirm.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.unobtrusive.js"></script>
<script>


    //---------------------打开模态框--------------------
    function clear_form(ele) {
        //重置内容
        $(ele)[0].reset();
        //移除添加的雷和文本
        $(ele).find("*").removeClass("has-success has-error");
        $(ele).find(".help-block").text("");
    }

    //数组去除第一个
    function curtail(arr) {
        var newarr = [];
        for (i = 1; i < arr.length; i++) {
            newarr.push(arr[i]);
        }
        return newarr;
    }

    //时间戳转时间
    function RiQi(data) {
        var date = new Date(data)
        var Y = date.getFullYear() + '-'
        var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-'
        var D = (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) + ' '
        var h = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':'
        var m = (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes()) + ':'
        var s = (date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds())
        return Y + M + D + h + m + s

    }

    var isOwner = "";
    var status = "";
    var updataModelUid = "";

    function edit_btn(id) {
        //重置表单，清除数据
        clear_form('#uploadModel form');

        updataModelUid = id;
        $.ajax({
            url: "${pageContext.request.contextPath }/user/findById/" + id,
            type: "GET",
            success: function (result) {
                if (result != null) {

                    $('#modal-username').val(result.username);
                    $('#modal-name').val(result.name);
                    $('#modal-phone').val(result.phone);
                    $('#modal-age').val(result.age);
                    $('#modal-createTime').val(RiQi(result.createTime));
                    $("#select_sex").val(result.sex);
                    $('#select_status').val(result.status);
                    $('#select_isOwner').val(result.isOwner);
                    isOwner = result.isOwner;
                    status = result.status;
                } else {
                    alert("编辑失败，请联系管理员！");
                }

            }
        });
        //显示模态框
        $("#uploadModel").modal({
            backdrop: 'static'
        });

    }


    //通过id获取用户信息
    function getUser(id) {
        $.ajax({
            url: "${pageContext.request.contextPath }/user/findById/" + id,
            type: "GET",
            success: function (result) {
                var dept = result.extend.dept;
                $('#deptId').val(dept.deptId);
                $('#deptName_update').val(dept.deptName);
                $('#remark_update').val(dept.remark);
                $('#dept_update_model select').val([dept.deptPId]);
            }
        });
    }


    //完成全选/全部选
    $("#check_all").click(function () {
        //attr获取checked是undefined
        //一般用attr获取自定义的属性，用prop获取dom原生的属性
        $('.check_item').prop("checked", $(this).prop("checked"));
    });
    $(document).on("click", ".check_item", function () {
        var flag = ($(".check_item:checked").length == $(".check_item").length);
        $("#check_all").prop("checked", flag);
    });

    //批量禁用
    $("#user_delete_all").click(function () {
        var userNames = "";
        var del_id_strs = "";
        $.each($(".check_item:checked"), function () {
            //alert(del_id_strs = $(this).parents("tr").find("td:last").find("button").attr('edit-id'));
            userNames += $(this).parents("tr").find("td:eq(2)").text() + ",";
            del_id_strs += del_id_strs = $(this).parents("tr").find("td:last").find("button").attr('u-id') + "-";
        });

        //去除最后的那个,
        userNames = userNames.substring(0, userNames.length - 1);
        del_id_strs = del_id_strs.substring(0, del_id_strs.length - 1);
        if (del_id_strs == "") {
            alert("请选择要禁用的个人信息");
            return false;
        }
        // alert(del_id_strs);
        if (confirm("确定禁用【" + userNames + "】吗?")) {
            $.ajax({
                url: "${pageContext.request.contextPath }/user/deleteUser/" + del_id_strs,
                type: "post",
                success: function (result) {
                    //关闭对话框
                    //alert(result.state);
                    //回到当前页
                    window.location.href = "${pageContext.request.contextPath }/user/findAllUser";
                }
            });
        }

    });


    //激活
    $("#user_jihuo_all").click(function () {
        var userNames = "";
        var del_id_strs = "";
        $.each($(".check_item:checked"), function () {
            //alert(del_id_strs = $(this).parents("tr").find("td:last").find("button").attr('edit-id'));
            userNames += $(this).parents("tr").find("td:eq(2)").text() + ",";
            del_id_strs += del_id_strs = $(this).parents("tr").find("td:last").find("button").attr('u-id') + "-";
        });

        //去除最后的那个,
        userNames = userNames.substring(0, userNames.length - 1);
        del_id_strs = del_id_strs.substring(0, del_id_strs.length - 1);
        if (del_id_strs == "") {
            alert("请选择要激活的个人信息");
            return false;
        }
        // alert(del_id_strs);
        if (confirm("确定激活【" + userNames + "】吗?")) {
            $.ajax({
                url: "${pageContext.request.contextPath }/user/jihuoUser/" + del_id_strs,
                type: "post",
                success: function (result) {
                    //关闭对话框
                    //alert(result.state);
                    //回到当前页
                    window.location.href = "${pageContext.request.contextPath }/user/findAllUser";
                }
            });
        }

    });

    function jihuodecfm() {
        if (!confirm("确认要激活吗？")) {

            window.event.returnValue = false;

        }
    }

    function deledecfm() {
        if (!confirm("确认要禁用吗？")) {

            window.event.returnValue = false;

        }
    }


    //模态框的修改
    function updataModel() {

        var username = $('#modal-username').val();
        var isOwner = $('#select_isOwner').val();
        var uname = $('#modal-name').val();
        var phone = $('#modal-phone').val();
        var age = $('#modal-age').val();
        var sex = $("#select_sex").val();
        var status = $("#select_status").val();


        $.post("${pageContext.request.contextPath}/user/updateManagerUserInfo",
            {
                "uid": updataModelUid,
                "uname": uname,
                "age": age,
                "username": username,
                "sex": sex,
                "phone": phone,
                "isOwner": isOwner,
                "status": status
            },
            function (data) {
                if (data.state == 1) {
                    alert(data.message);
                    window.location.href = '${pageContext.request.contextPath}/user/findAllUser';
                } else {
                    alert(data.message);
                }
            })
    }


    function sousuo() {
        var sex = $('#sex-find').val();
        $.post()
    }

</script>

<script src="${pageContext.request.contextPath}/js/center/ucenter_common.js"></script>
<!--统计代码-->
<script src="${pageContext.request.contextPath}/js/g.js"></script>


<script src="${pageContext.request.contextPath}/js/ion.rangeSlider.min.js"></script>

<script src="${pageContext.request.contextPath}/js/underscore.min.js"></script>
<script src="${pageContext.request.contextPath}/js/ucenter_info.js"></script>
<script src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>
<script src="${pageContext.request.contextPath}/js/UploadFile.js"></script>
<script src="${pageContext.request.contextPath}/js/plupload.full.min.js"></script>
<script src="${pageContext.request.contextPath}/js/qiniu.min.js"></script>


</body>
</html>