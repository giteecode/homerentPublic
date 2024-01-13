<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <title>求租房信息-恋家</title>
    <meta name="keywords"/>
    <meta name="description"
          content="恋家成都租房网提供单间出租,宜家风格精装修的合租房.是成都年轻人喜爱的青年公寓,免费wifi,家具齐全,立即签约立即拎包入住.致力于为年轻人打造租房时代的美好回忆。"/>


    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.bundle.css">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/jquery-confirm.css" rel="stylesheet"/>
    <link href="../css/find_house.bundle.css" rel="stylesheet"/>

    <style>
        .city-selection .city-cur1 {
            color: #fff;
            font-size: 12px;
        }

        .gallery li.gallery-item {
            float: left;
            width: 100%;
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

            width: 500px;
        }

        .gallery .item-info {
            height: 30px;
        }
    </style>


</head>
<body>
<div class="page-wrap">

    <div class="page-main" id="page-main">
        <!-- header -->
        <jsp:include page="header.jsp"></jsp:include>


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
                            求租信息详情
                        </h4>
                    </div>
                    <form class="form-horizontal style-form" method="post" action="" enctype="multipart/form-data"
                          onSubmit="return myCheck(this)">

                        <div class="modal-body">
                            <div class="form-group" style="border:none;">
                                <span class="col-sm-3"
                                      style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">租房标题:</span>
                                <div class="col-sm-5">
                                    <input type="text" id="modal-title" readonly="readonly" check-type="required"
                                           value="" name="title" class="form-control">
                                    <span class="help-block"></span>
                                </div>
                                <div class="col-sm-2" style="text-align:left;padding:0;height:32px;line-height:32px;">
                                    <font id="showResult1" style="color:red">*</font>
                                </div>

                            </div>

                            <div class="form-group" style="border:none;margin-top:30px;">
                                <span class="col-sm-3"
                                      style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">房屋需求:</span>
                                <div class="col-sm-6">
                                    <textarea id="modal-content" readonly="readonly" name="content"
                                              check-type="required" class="form-control message_content" rows="4"
                                              check-type="required" type="text"></textarea>
                                </div>
                                <div class="col-sm-2" style="text-align:left;padding:0;height:32px;line-height:32px;">
                                    <font id="showResult2" style="color:red">*</font>
                                </div>

                            </div>

                            <div class="form-group" style="border:none;margin-top:30px;">

                                <span class="col-sm-3"
                                      style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">我的预算:</span>
                                <span class="col-sm-6" id="modal-price"
                                      style="color:#5bc0de;font-size:16px;float:left;height:28px;text-align:left;line-height:28px;"></span>


                            </div>

                            <div class="form-group" style="border:none;margin-top:30px;">
                                <span class="col-sm-3"
                                      style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">创建人:</span>
                                <div class="col-sm-3">
                                    <input type="text" readonly="readonly" name="createName" check-type="required"
                                           value="" id="modal-createName" class="form-control">
                                </div>

                                <span class="col-sm-3"
                                      style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">想住多大:</span>
                                <span class="col-sm-3" id="modal-roomArea"
                                      style="color:#5bc0de;font-size:16px;float:left;height:28px;text-align:left;line-height:28px;"></span>

                            </div>

                            <div class="form-group" style="border:none;margin-top:30px;">
                                <span class="col-sm-3"
                                      style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">联系电话:</span>
                                <div class="col-sm-4">
                                    <input type="text" name="mPhone" readonly="readonly" value="" id="modal-mphone"
                                           check-type="required tel" class="form-control">
                                </div>
                                <div class="col-sm-1" style="text-align:left;padding:0;height:32px;line-height:32px;">
                                    <font id="showResult3" style="color:red">*</font>
                                </div>


                            </div>

                            <div class="form-group" style="border:none;margin-top:30px;">

                                <span class="col-sm-3"
                                      style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">创建时间:</span>
                                <div class="col-sm-4">
                                    <input type="text" readonly="readonly" name="mCreateTime" value=""
                                           id="modal-mCreateTime" class="form-control">
                                </div>
                                <div class="col-sm-1" style="text-align:left;padding:0;height:32px;line-height:32px;">
                                    <font id="showResult5" style="color:red"></font>
                                </div>

                            </div>

                            <div class="form-group" style="border:none;margin-top:30px;">
                                <span class="col-sm-3"
                                      style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">想住在哪:</span>
                                <div class="col-sm-6">
                                    <input type="text" readonly="readonly" check-type="required" value=""
                                           id="modal-address" class="form-control">
                                </div>


                            </div>
                            <div class="form-group" style="border:none;margin-top:30px;">


                                <span class="col-sm-3"
                                      style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">入住时间:</span>
                                <div class="col-sm-4">
                                    <input type="text" readonly="readonly" value="" id="modal-liveTime"
                                           class="form-control">
                                </div>

                            </div>


                        </div>


                        <div class="modal-footer">

                            <button type="button" class="btn btn-round btn-default" data-dismiss="modal">
                                关闭
                            </button>
                        </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>


        <div class="container-sm">
            <div class="breadcrumb mtb20">
                <a href="${pageContext.request.contextPath}/main/toIndex">首页</a>&gt;<span>房屋求租信息</span>
            </div>
        </div>
        <div class="filter-wrap">
            <div class="container-sm">
                <div class="filter-board">
                    <div class="filter-hd"><span class="hd-item active">条件找房</span></div>
                    <div class="filter-bd">
                        <form method="get" action="${pageContext.request.contextPath}/rentget/findRentget">
                            <div class="search-too-box">

                                <div class="search-tool">

                                    <input type="search" placeholder="请输入标题/内容条件进行查找" class="search-ipt" name="Info"
                                           id="search-ipt">
                                    <input type="submit" value="搜索" class="search-btn js-search-btn"
                                           data-target="#search-ipt">

                                </div>
                                <div class="hot-words">
                                </div>
                            </div>
                            <div class="filter-tags">
                                <div class="filter-row">
                                    <span class="filter-label">入住时间：</span>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control bor3 contract_time_today"
                                               id="startLiveTime" name="startLiveTime" placeholder="起始时间"
                                               style="width:30%;height:28px;float:left;">

                                        <span style="color: rgb(0, 0, 0);float:left;height:28px;text-align:center;line-height:28px;
				                  	  	  font-size: 24px; margin-left:3px;margin-right:3px;text-shadow: rgb(255, 0, 0) 0px 0px 0px;">
										  -
										  </span>

                                        <input type="text" class="form-control bor3 contract_time_today"
                                               name="endLiveTime" id="endLiveTime" placeholder="终止时间"
                                               style="width:30%;height:28px;">

                                    </div>

                                </div>

                                <div class="filter-row">
                                    <span class="filter-label">最低预算：</span>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control round-form" id="minPriceBegin"
                                               name="minPriceBegin" placeholder="最低价格"
                                               style="width:30%;height:28px;float:left;">

                                        <span style="color: rgb(0, 0, 0);float:left;height:28px;text-align:center;line-height:28px;
				                  	  	  font-size: 24px; margin-left:3px;margin-right:3px;text-shadow: rgb(255, 0, 0) 0px 0px 0px;">
										  -
										  </span>

                                        <input type="text" class="form-control round-form" name="minPriceEnd"
                                               id="minPriceEnd" placeholder="最高价格" style="width:30%;height:28px;">

                                    </div>

                                </div>

                                <div class="filter-row">
                                    <span class="filter-label">最高预算：</span>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control round-form" id="maxPriceBegin"
                                               name="maxPriceBegin" placeholder="最低价格"
                                               style="width:30%;height:28px;float:left;">

                                        <span style="color: rgb(0, 0, 0);float:left;height:28px;text-align:center;line-height:28px;
				                  	  	  font-size: 24px; margin-left:3px;margin-right:3px;text-shadow: rgb(255, 0, 0) 0px 0px 0px;">
										  -
										  </span>

                                        <input type="text" class="form-control round-form" name="maxPriceEnd"
                                               id="maxPriceEnd" placeholder="最高价格" style="width:30%;height:28px;">

                                    </div>

                                </div>

                                <div class="filter-row">
                                    <span class="filter-label">我想住在：</span>

                                    <div class="col-sm-2" id="Address">
                                        <select class="form-control" id="province" onchange="provinceChange()"
                                                style="margin-left:15px;">
                                            <option value="">省份</option>
                                        </select>

                                    </div>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="city" onchange="cityChange()">
                                            <option value="">城市</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="area" onchange="areaChange()">
                                            <option value="">区域</option>
                                        </select>
                                    </div>
                                    <input type="hidden" id="re_roomAddress" name="roomAddress" value="">

                                </div>

                                <div class="filter-row">
                                    <span class="filter-label">手机号码：</span>
                                    <div class="col-sm-4">
                                        <input type="text" name="phone" value="" class="form-control"
                                               style="width:45%;height:28px;float:left;">
                                    </div>

                                    <span class="filter-label">联系人：</span>
                                    <div class="col-sm-3">
                                        <input type="text" name="rgName" value="" class="form-control"
                                               style="width:45%;height:28px;float:left;">
                                    </div>

                                </div>

                            </div>

                        </form>
                    </div>
                    <a class="new_email email-c" href="${pageContext.request.contextPath }/main/toShowPushRent"
                       title="发布租房信息"></a>
                </div>

            </div>
        </div>

        <div class="container-sm">
            <div class="gallery-wrap">
                <div class="tab-resources">
                    <a href="#" class="current">全部</a>
                    <a href="${pageContext.request.contextPath }/main/toShowPushRent">发布租房信息</a>


                </div>

                <ul class="gallery">


                    <c:forEach items="${pageRentgetInfo.list}" var="pageRentget">
                        <li class="gallery-item">
                            <span class="sale-tag"></span>
                            <div class="item-desc">
                                <span class="item-tag item-tag-standard"></span>
                                <div class="item-text">
                                    为恋家统一标准化装修，多属房龄较短的电梯公寓，在裸房基础上完成精装全配。
                                </div>
                                <a onclick="edit_btn(${pageRentget.rgId})" target="_blank"
                                   class="item-tit">${pageRentget.rgTitle}(${pageRentget.roomAddress}，${pageRentget.roomArea}平精装)</a>
                            </div>
                            <div class="item-info">
                                <div class="item-loc"><i class="sprites icon-loc"></i>&nbsp;${pageRentget.roomAddress}
                                </div>
                                <div class="item-loc">&nbsp;&nbsp;<span class="glyphicon glyphicon-user"></span>
                                    &nbsp;联系人：<span>${pageRentget.rgName}</span></div>
                                <div class="item-loc"><span
                                        class="glyphicon glyphicon-phone-alt"></span>&nbsp;联系电话：<span>${pageRentget.rgPhone}</span>
                                </div>
                                <div class="item-price">
                                    <span><sub>￥</sub>${pageRentget.minPrice}—${pageRentget.maxPrice}</span>元/月
                                </div>
                            </div>
                            <div class="item-info">
                                <div class="item-loc">&nbsp;&nbsp;<span class="glyphicon glyphicon-th-large"></span>&nbsp;<span>预期房屋面积：${pageRentget.roomArea}平方米</span>
                                </div>
                                <div class="item-loc">&nbsp;&nbsp;<span class="glyphicon glyphicon-calendar"></span>&nbsp;<span>预期入住时间：<fmt:formatDate
                                        value='${pageRentget.getCreateTime}' type='date' pattern='yyyy-MM-dd'/></span>
                                </div>
                            </div>
                            <div class="item-info">
                                <div class="item-loc">&nbsp;&nbsp;<span class="glyphicon glyphicon-folder-close"></span>&nbsp;<span>需求描述：${pageRentget.roomDesc}</span>
                                </div>
                            </div>
                        </li>

                    </c:forEach>


                </ul>

            </div>
        </div>

        <div class="container-sm">
            <div class="pagenation">
                <div class="col-md-6">
                    当前第${pageRentgetInfo.pageNum}页,共${pageRentgetInfo.pages}页,共${pageRentgetInfo.total}条记录
                </div>
                <div class="col-md-6">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li><a href="${pageContext.request.contextPath }/rentget/findRentget?pageNo=1">首页</a></li>
                            <li>
                                <c:if test="${pageRentgetInfo.hasPreviousPage}">
                                    <a href="${ pageContext.request.contextPath }/rentget/findRentget?pageNo=${pageNum-1}"
                                       aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </c:if>
                            </li>
                            <c:forEach items="${pageRentgetInfo.navigatepageNums}" var="page_num">
                                <c:if test="${page_num ==pageRentgetInfo.pageNum}">
                                    <li class="active"><a href="#">${page_num}</a></li>
                                </c:if>
                                <c:if test="${page_num != pageRentgetInfo.pageNum}">
                                    <li>
                                        <a href="${ pageContext.request.contextPath }/rentget/findRentget?pageNo=${page_num}">${page_num}</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                            <li>
                                <c:if test="${pageRentgetInfo.hasNextPage}">
                                    <a href="${ pageContext.request.contextPath }/rentget/findRentget?pageNo=${pageNum+1}"
                                       aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </c:if>

                            </li>
                            <li>
                                <a href="${ pageContext.request.contextPath }/rentget/findRentget?pageNo=${pageRentgetInfo.pages}">末页</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <%--<a href="/room/pg1/">首页</a><a href="/room/pg1/" class="cur">1</a><a href="/room/pg2/">2</a><a href="/room/pg3/">3</a><a href="/room/pg4/">4</a><a href="/room/pg5/">5</a><a href="/room/pg6/">6</a><a href="/room/pg7/">7</a><a href="/room/pg8/">8</a><a href="/room/pg9/">9</a><a href="/room/pg10/">10</a><a href="/room/pg2/">下一页</a><a href="/room/pg65/">尾页</a>--%>

        </div>
        <div class="container-sm">
            <h2 class="reco-tit">管家推荐</h2>
            <div id="AsyncLoading" class="reco-wrap" data-url="/room/recommend?cityID=278">

            </div>
        </div>


    </div>


    <script type="text/javascript">
        window._bd_share_config = {
            common: {
                "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdMiniList": !1, "bdPic": "",
                "bdStyle": "0", "bdSize": "16", bdMini: 2, bdPopupOffsetLeft: -207
            },
            share: [{"bdSize": 16}]
        }
        with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = '../js/share.js'];

    </script>
    <div class="side-fix">
        <ul>
            <li class="side-share-box">
                <a href="javascript:void(0);" class="sprites side-share"></a>
                <div class="side-desc">
                    <div class="bdsharebuttonbox">
                        <a title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina"></a>
                        <a title="分享到QQ好友" href="#" class="bds_sqq" data-cmd="sqq"></a>
                        <a title="分享到豆瓣网" href="#" class="bds_douban" data-cmd="douban"></a>
                        <a title="分享到人人网" href="#" class="bds_renren" data-cmd="renren"></a>
                        <a title="分享到QQ空间" href="#" class="bds_qzone" data-cmd="qzone"></a>
                        <a title="分享到微信" href="#" class="bds_weixin" data-cmd="weixin"></a>
                    </div>
                </div>
            </li>

            <li>
                <a href="/aboutus/contact?op=2#contact_mess_anchor" target="_blank" class="sprites side-comment"></a>
                <div class="side-desc">留言建议</div>
            </li>
            <li class="side-weixin-box">
                <a href="javascript:void(0);" class="sprites side-weixin"></a>
                <div class="side-desc">
                    <img src="/Content/img/footer-weixin-cd.jpg" width="131" height="131" alt="微信找房，扫我吧">
                    <p><b>微信找房</b>，扫我吧!</p>
                </div>
            </li>
            <li id="back-top" class="back-top"><a href="javascript:void(0);" class="sprites side-top"></a></li>
        </ul>

    </div>


    <div class="customer-service" id="customer-service">
        <a class="bar-link" onclick="NTKF.im_openInPageChat('kf_9452_1480658837072')" target="_blank" rel="nofollow">
            <img src="${pageContext.request.contextPath}/img/serv.gif" id="customer-service-img"/>
            <img src="${pageContext.request.contextPath}/img/serv_hover.gif" style="display:none"/>
        </a>
    </div>


    <!-- footer -->
    <jsp:include page="footer.jsp"></jsp:include>

</div>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/js/data.js"></script>
<script src="${pageContext.request.contextPath}/js/address.js"></script>
<script src="${pageContext.request.contextPath}/js/center/ucenter_common.js"></script>
<!--统计代码-->
<script src="${pageContext.request.contextPath}/js/g.js"></script>
<script type="text/javascript">

    $(function () {
        $("#dateStart").datetimepicker({
            bootcssVer: 3,  //bootstrap-datetimepicker＋bootstrap v3，但这个插件使用的时候，并没有和V3相匹配，仍然调用的是bootstrap V2的图标 把bootcssVer的值直接设为3，否则datetimepicker不会显示出上、下个月的箭头
            format: 'yyyy-mm-dd',
            minView: 'month',//设置时间选择为年月日 去掉时分秒选择
            todayBtn: true, //如果此值为true 或 "linked"，则在日期时间选择器组件的底部显示一个 "Today" 按钮用以选择当前日期。如果是true的话，"Today" 按钮仅仅将视图转到当天的日期，如果是"linked"，当天日期将会被选中。
            language: 'zh-CN',
            autoclose: true, //当选择一个日期之后是否立即关闭此日期时间选择器。
            keyboardNavigation: true, //是否允许通过方向键改变日期。
            forceParse: true, //当选择器关闭的时候，是否强制解析输入框中的值。
            todayHighlight: 1  //如果为true, 高亮当前日期
        }).on("click", function () {
            //設置可选的最后日期為當前日期
            $("#dateStart").datetimepicker("setEndDate", getToday())
        });
    });
    $(function () {
        $("#finalTime").datetimepicker({
            bootcssVer: 3,  //bootstrap-datetimepicker＋bootstrap v3，但这个插件使用的时候，并没有和V3相匹配，仍然调用的是bootstrap V2的图标 把bootcssVer的值直接设为3，否则datetimepicker不会显示出上、下个月的箭头
            format: 'yyyy-mm-dd',
            minView: 'month',//设置时间选择为年月日 去掉时分秒选择
            todayBtn: true, //如果此值为true 或 "linked"，则在日期时间选择器组件的底部显示一个 "Today" 按钮用以选择当前日期。如果是true的话，"Today" 按钮仅仅将视图转到当天的日期，如果是"linked"，当天日期将会被选中。
            language: 'zh-CN',
            autoclose: true, //当选择一个日期之后是否立即关闭此日期时间选择器。
            keyboardNavigation: true, //是否允许通过方向键改变日期。
            forceParse: true, //当选择器关闭的时候，是否强制解析输入框中的值。
            todayHighlight: 1  //如果为true, 高亮当前日期
        }).on("click", function () {
            //設置可选的最后日期為當前日期
            $("#finalTime").datetimepicker("setEndDate", getToday())
        });
    });

    $(function () {
        $("#startLiveTime").datetimepicker({
            bootcssVer: 3,  //bootstrap-datetimepicker＋bootstrap v3，但这个插件使用的时候，并没有和V3相匹配，仍然调用的是bootstrap V2的图标 把bootcssVer的值直接设为3，否则datetimepicker不会显示出上、下个月的箭头
            format: 'yyyy-mm-dd',
            minView: 'month',//设置时间选择为年月日 去掉时分秒选择
            todayBtn: true, //如果此值为true 或 "linked"，则在日期时间选择器组件的底部显示一个 "Today" 按钮用以选择当前日期。如果是true的话，"Today" 按钮仅仅将视图转到当天的日期，如果是"linked"，当天日期将会被选中。
            language: 'zh-CN',
            autoclose: true, //当选择一个日期之后是否立即关闭此日期时间选择器。
            keyboardNavigation: true, //是否允许通过方向键改变日期。
            forceParse: true, //当选择器关闭的时候，是否强制解析输入框中的值。
            todayHighlight: 1  //如果为true, 高亮当前日期
        }).on("click", function () {
            //設置可选的最后日期為當前日期
            //  $("#dateStart").datetimepicker("setEndDate", getToday())
        });
    });
    $(function () {
        $("#endLiveTime").datetimepicker({
            bootcssVer: 3,  //bootstrap-datetimepicker＋bootstrap v3，但这个插件使用的时候，并没有和V3相匹配，仍然调用的是bootstrap V2的图标 把bootcssVer的值直接设为3，否则datetimepicker不会显示出上、下个月的箭头
            format: 'yyyy-mm-dd',
            minView: 'month',//设置时间选择为年月日 去掉时分秒选择
            todayBtn: true, //如果此值为true 或 "linked"，则在日期时间选择器组件的底部显示一个 "Today" 按钮用以选择当前日期。如果是true的话，"Today" 按钮仅仅将视图转到当天的日期，如果是"linked"，当天日期将会被选中。
            language: 'zh-CN',
            autoclose: true, //当选择一个日期之后是否立即关闭此日期时间选择器。
            keyboardNavigation: true, //是否允许通过方向键改变日期。
            forceParse: true, //当选择器关闭的时候，是否强制解析输入框中的值。
            todayHighlight: 1  //如果为true, 高亮当前日期
        }).on("click", function () {
            //設置可选的最后日期為當前日期
            // $("#finalTime").datetimepicker("setEndDate", getToday())
        });
    });

    $(function () {
        $("#minPriceBegin").on("keyup", function () {
            var valid = /^\d{0,8}(\.\d{0,2})?$/.test(this.value),
                val = this.value;
            $("#price_info").html("");
            if (!valid) {
                $("#price_info").css("color", "red").html("请输入正确格式的金额");
                //console.log("Invalid input!");
                this.value = val.substring(0, val.length - 1);
            }
        });
    });

    $(function () {
        $("#maxPriceBegin").on("keyup", function () {
            var valid = /^\d{0,8}(\.\d{0,2})?$/.test(this.value),
                val = this.value;
            $("#price_info").html("");
            if (!valid) {
                $("#price_info").css("color", "red").html("请输入正确格式的金额");
                //console.log("Invalid input!");
                this.value = val.substring(0, val.length - 1);
            }
        });
    });

    $(function () {
        $("#minPriceEnd").on("keyup", function () {
            var valid = /^\d{0,8}(\.\d{0,2})?$/.test(this.value),
                val = this.value;
            $("#price_info").html("");
            if (!valid) {
                $("#price_info").css("color", "red").html("请输入正确格式的金额");
                //console.log("Invalid input!");
                this.value = val.substring(0, val.length - 1);
            }
        });
    });

    $(function () {
        $("#maxPriceEnd").on("keyup", function () {
            var valid = /^\d{0,8}(\.\d{0,2})?$/.test(this.value),
                val = this.value;
            $("#price_info").html("");
            if (!valid) {
                $("#price_info").css("color", "red").html("请输入正确格式的金额");
                //console.log("Invalid input!");
                this.value = val.substring(0, val.length - 1);
            }
        });
    });

    //獲取當前日期
    function getToday() {
        var today = new Date()
        var year = today.getFullYear();
        var month = today.getMonth() + 1;
        var day = today.getDate();
        var todayStr = year + "-" + month + "-" + day;
        return todayStr;
    }
</script>
<script>


    NTKF_PARAM = {
        siteid: "kf_9452",
        settingid: "kf_9452_1480658837072",
        uid: "",
        uname: "",
        isvip: "0",
        userlevel: "0",
        itemid: "",
        erpparam: ""
    }

    $(function () {
        //页脚沉降
        var $bottom = $('#page-bottom');
        var $footer = $('#page-footer');
        var $main = $('#page-main');

        var h = $bottom.outerHeight() + $footer.outerHeight();
        $main.css({
            paddingBottom: h,
            marginBottom: -h
        });


        //在线客服切换效果

        $('#customer-service').hover(function () {
            $('#customer-service-img').attr('src', '${pageContext.request.contextPath}/img/serv_hover.gif');

        }, function () {

            $('#customer-service-img').attr('src', '${pageContext.request.contextPath}/img/serv.gif');
        });

        //nav高亮
        var pathname = window.location.pathname
        var $navBar = $('.uoko-navbar li')
        switch (true) {
            case pathname == '/':
                $navBar.eq(0).addClass('active')
                break;
            case pathname.indexOf('/questions') > -1:
                $navBar.eq(2).addClass('active')
                break;
            case pathname.indexOf('/room') > -1:
                $navBar.eq(1).addClass('active')
                break;
            case pathname.indexOf('/history') > -1:
                $navBar.eq(5).addClass('active')
                break;
        }
    });


</script>

<script>
    function loadModule(container) {
        var self = container;
        var requestUrl = self.attr("data-url");

        $.ajax({
            type: 'GET',
            cache: false,
            url: requestUrl,
            success: function (data) {
                if (data.success === false) {
                    alert(data.message);
                } else {
                    self.html(data);
                }
            }
        });
    }

    $(function () {
        $('#no-search').delay(1000).hide(600);
        loadModule($("#AsyncLoading"));
    });

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
        //var h = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':'
        // var m = (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes()) + ':'
        // var s = (date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds())
        //return Y + M + D + h + m + s
        return Y + M + D
    }


    var updataModelUid = "";

    function edit_btn(id) {
        //重置表单，清除数据
        clear_form('#uploadModel form');

        updataModelUid = id;
        $.ajax({
            url: "${pageContext.request.contextPath }/rentget/findById/" + id,
            type: "GET",
            success: function (result) {
                if (result != null) {

                    $('#modal-title').val(result.rgTitle);
                    $('#modal-content').val(result.roomDesc);
                    $('#modal-mphone').val(result.rgPhone);
                    $('#modal-liveTime').val(RiQi(result.liveTime));
                    $('#modal-roomArea').html(result.roomArea + "平方米");
                    $('#modal-price').html('￥' + result.minPrice + '-' + result.maxPrice + '元');
                    $('#modal-address').val(result.roomAddress);
                    $('#modal-createName').val(result.rgName);
                    $('#modal-mCreateTime').val(RiQi(result.getCreateTime));
                    $("#select_status").val(result.getStatus);
                    if (result.user != null) {
                        $("#modal-user_name").val(result.user.name);
                        $("#modal-user_phone").val(result.user.phone);
                        if (result.user.sex == 1) {
                            $("#modal-user_sex").val("男");
                        } else {
                            $("#modal-user_sex").val("女");
                        }

                        if (result.user.isOwner == 1) {
                            $("#modal-user_role").val("房东");
                        } else {
                            $("#modal-user_role").val("租客");
                        }

                    }

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
</script>

</body>
</html>
