<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <title>房屋信息-恋家</title>
    <!--<meta name="keywords" />
    <meta name="description" content="华阳欧尚旁 天府四街五街附近 公交直达世纪城 软件园新希望华银美行中心嘉美地" />-->


    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.bundle.css">
    <style>
        .city-selection .city-cur1 {
            color: #fff;
            font-size: 12px;
        }
    </style>


    <style type="text/css">
        .has-error .help-block {
            color: #ff0000;
            display: block;
            margin-top: 5px;
        }

        .text-info {
            color: #31708f;
        }

        .wx-group {
            padding: 10px;
        }

        .wx-icon {
            float: left;
            background-color: #edecec;
            padding: 10px;
        }

        .order-modal .modal-content {
            padding: 30px 78px 20px 78px;
        }

        .room_callback {
            font-size: 16px;
            color: #474747;
        }

        .room_callback_info {
            white-space: nowrap;
        }

        .order-modal {
            text-align: center;
        }

        .modal-inner {
            text-align: left;
            width: auto !important;
            min-width: 600px;
            display: inline-block;
        }

        .modal-footer {
            padding: 17px 30px;
        }

        .wx-media-group {
            padding-top: 20px;
        }

        .wx-perfect-word {
            padding-top: 20px;
        }

        .wx-hint {
            /*     width: 50%; */
            float: left;
            padding: 20px 0 0 20px;
        }

        .wx-hint .link {
            color: #3fcbc0;
        }

        .wx-hint p {
            margin-bottom: 10px;
        }

        .wx-hint h2 {
            font-size: 24px;
            color: #009099;
            margin-top: 20px;
            margin-bottom: 0;
            font-weight: bold;
            line-height: 1.1;
            white-space: nowrap;
        }

        .wx-icon-pet {
            margin-right: 10px;
        }

        .wx-text-desc {
            font-size: 16px;
            color: #757575;
        }

        .wx-icon-pet, .wx-text-desc {
            display: inline-block;
            vertical-align: top;
        }

        #qr-modal .qr-btn:before {
            content: '';
            position: absolute;
            left: -4px;
            top: -10px;
            z-index: 10;
            height: 40px;
            width: 125px;
        }

        /*周边配套*/
        #surroundMatch {
            margin-bottom: 20px;
            width: 861px;
        }

        #surroundMatch ul li {
            font-size: 0;
            padding: 10px 40px;
            border-top: 1px solid #e5e5e5;
            color: #384655;
        }

        #surroundMatch li:nth-child(2n+1) {
            background-color: #fafbfb;
        }

        #surroundMatch li:last-child {
            border-bottom: 1px solid #e5e5e5;
        }

        #surroundMatch li div {
            display: inline-block;
            vertical-align: text-top;
            font-size: 14px;
        }

        #surroundMatch li div:first-child {
            width: 30%;
        }

        #surroundMatch li div:last-child {
            width: 70%;
            white-space: pre-wrap;
        }

        #local-search-form input:last-child {
            margin-left: 5px;
        }
    </style>


    <link href="${pageContext.request.contextPath}/css/datetimepicker_alone.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/house_detail.bundle.css" rel="stylesheet"/>
    <script src="https://api.map.baidu.com/api?v=2.0&ak=e0dzZmaImw9rUXxWyPBGgs78ZXoAfwhS"></script>


</head>
<body>
<div class="page-wrap">

    <div class="page-main" id="page-main">
        <!-- header -->
        <jsp:include page="header.jsp"></jsp:include>


        <div class="container">
            <div class="breadcrumb mt30">
                <a href="${pageContext.request.contextPath}/main/toIndex">首页</a>&gt;<a
                    href="${pageContext.request.contextPath}/rentout/findRentOut">我要租房</a>
            </div>
            <input type="hidden" id="uname" value="${user.name}"/>
            <div class="prod-detail clearfix">
                <div class="detail-left">
                    <div class="img-viewer js-img-viewer">
                        <ul class="img-viewer-bg">
                            <c:if test="${empty rentOut.roomPicture}">
                                <li class="cur"><a
                                        href="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/8a9fb2b5-2248-4ed8-91b9-0e5c7422bd1e.jpg?imageView2/2/w/880/h/447&amp;watermark/1/image/aHR0cDovL3d3dy51b2tvLmNvbS9zaHVpeWluLnBuZw==/gravity/Center"
                                        title="恋家"><img
                                        data-source="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/8a9fb2b5-2248-4ed8-91b9-0e5c7422bd1e.jpg?imageView2/1/w/450/h/300"
                                        src="${pageContext.request.contextPath}/img/loading.gif" width="450"
                                        height="300" class="exclude-lazy"></a></li>
                            </c:if>
                            <c:if test="${not empty rentOut.roomPicture}">
                                <li class="cur"><img
                                        data-source="${pageContext.request.contextPath}/upload/${rentOut.roomPicture}"
                                        src="${pageContext.request.contextPath}/upload/${rentOut.roomPicture}"
                                        width="420" height="300" class="exclude-lazy"></li>
                            </c:if>

                        </ul>
                        <div class="img-viewer-sm">
                            <a href="javascript:;" role="button" class="sprites icon-arrow-left viewer-prev"></a><a
                                href="javascript:;" role="button" class="sprites icon-arrow-right viewer-next"></a>
                            <ul class="img-viewer-list">
                                <c:if test="${empty rentOut.roomPicture}">
                                    <li class=cur><img src="${pageContext.request.contextPath}/img/loading.gif"
                                                       data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/091e584b-9729-4b03-9ebe-6dc254dbc111.jpg?imageView2/1/w/66/h/44"
                                                       width="66" height="44"></li>
                                    <li class=><img src="${pageContext.request.contextPath}/img/loading.gif"
                                                    data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/091e584b-9729-4b03-9ebe-6dc254dbc111.jpg?imageView2/1/w/66/h/44"
                                                    width="66" height="44"></li>
                                </c:if>
                                <c:if test="${not empty rentOut.roomPicture}">
                                    <li class=cur><img
                                            src="${pageContext.request.contextPath}/upload/${rentOut.roomPicture}"
                                            data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/8a9fb2b5-2248-4ed8-91b9-0e5c7422bd1e.jpg?imageView2/1/w/66/h/44"
                                            width="66" height="44"></li>
                                    <li class=><img src="${pageContext.request.contextPath}/img/loading.gif"
                                                    data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/091e584b-9729-4b03-9ebe-6dc254dbc111.jpg?imageView2/1/w/66/h/44"
                                                    width="66" height="44"></li>
                                </c:if>

                            </ul>
                        </div>
                    </div>
                    <div class="share-wrap">


                    </div>
                </div>
                <div class="detail-right">
                    <h2 class="detail-tit">【${rentOut.roomAddress}】<span
                            id="loc-name">公交直达 地铁附近 ${rentOut.roomDesc}</span></h2>

                    <div class="detail-table">
                        <div class="detail-row">
                            <div class="detail-label"><span>编</span>号</div>
                            <div class="detail-cont">
                                <span class="detail-num col">LRNC${rentOut.rgId}</span>


                            </div>
                        </div>
                        <div class="detail-row">
                            <div class="detail-label"><span>租</span>金</div>
                            <div class="detail-cont">
                                <span class="price col align"><sub>¥</sub><b id="price-claim">${rentOut.roomPrice}</b>元/月</span>
                                <div class="sprites move-wrap" style="margin-top:-4px;">
                                    <div class="icon-text"><!--<i class="sprites icon-yue-2"></i>--></div>
                                    <div class="move-info info-sp"></div>
                                </div>
                            </div>
                        </div>


                        <div class="detail-row">
                            <div class="detail-label"><span>地</span>址</div>
                            <div class="detail-cont">
                                <address class="address col"><span
                                        class="sprites icon-loc2"></span>${rentOut.roomAddress}</address>
                            </div>
                        </div>
                        <div class="detail-row">
                            <div class="detail-label"><span>房</span>龄</div>
                            <div class="detail-cont">
                                ${rentOut.roomAge}&nbsp;年
                            </div>
                        </div>
                        <div class="detail-row">
                            <div class="detail-label"><span>楼</span>层</div>
                            <div class="detail-cont">
                                ${rentOut.isFloor}/${rentOut.allFloor}&nbsp;楼
                            </div>
                        </div>
                        <div class="detail-row no-border check_in_date">
                            <div class="detail-label">发布时间</div>
                            <div class="detail-cont"><fmt:formatDate value='${rentOut.outCreateTime}' type='date'
                                                                     pattern='yyyy-MM-dd'/></div>
                        </div>

                        <div class="detail-row">
                            <div class="detail-label"><span>房</span>间</div>
                            <div class="detail-cont">
                                <div class="state-label-group" id="state-label-group">

                                    <div class="state-label"
                                         data-book-link="/MyUoko/BookingHouse/125FAAAA0A8B4BD8983203C437D80C86"
                                         data-is-short-rental="False"
                                         data-look-link="/room/reservation/125FAAAA0A8B4BD8983203C437D80C86"
                                         data-price="580" data-roomcode="A"
                                         data-roomid="125FAAAA0A8B4BD8983203C437D80C86"
                                         data-sign-link="/MyUoko/SignHouse/125FAAAA0A8B4BD8983203C437D80C86">
                                        ${rentOut.roomStructure}
                                        <c:if test="${rentOut.renovationint == 1}"> &nbsp; 已装修 </c:if>
                                        <c:if test="${rentOut.renovationint == 2}"> &nbsp; 未装修 </c:if>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="detail-row no-border">
                            <div class="detail-label">房屋面积</div>
                            <div class="detail-cont"><b class="serve-phone">${rentOut.roomArea}</b><i>㎡</i></div>
                        </div>
                        <div class="btn-box">
                            <button id="look-link-old" onclick="showModel()" class="prefer-look-btn disabled"
                                    data-toggle="modal" data-target="#staticBackdrop">我要租房
                            </button>
                            <%--<a onclick="NTKF.im_openInPageChat()" class="qq-consult" id="QQMessageOnlick">客服咨询</a>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="fixed-nav-wrap" id="fixed-nav-wrap">
            <div class="fixed-nav-wrap js-fix-nav">
                <div class="container">
                    <div class="fixed-nav-bar">
                        <div class="fixed-info">房屋面积：<b>${rentOut.roomArea}<i>㎡</i></b></div>

                    </div>
                </div>
            </div>
        </div>


        <div id="detailContainer" class="container">
            <div id="detail-section-labels" class="detail-section-labels"></div>
            <div class="item-info-verbose" id="item-info-verbose">
                <div class="verbose-left">
                    <div class="left-block">
                        <div class="block-hd"><span class="sprites icon-detail-tit-label icon-sl-detail"></span>房间基本情况
                        </div>
                        <div class="block-bd">
                            <ul class="house-info">
                                <li>
                                    <div class="info-left">
                                        <h2>${rentOut.roomStructure} <span
                                                class="size">${rentOut.roomArea}<i>㎡</i></span></h2>
                                        <div class="clearfix">
                                            <span class="price"><sub>¥</sub><b>${rentOut.roomPrice}</b></span>
                                            <i class="sprites headpic-girl1 has-tips" title="我是女生！"></i>
                                        </div>
                                    </div>
                                    <div class="info-right">
                                        <div class="house-tag">
                                            <span class="has-tips" title="有独立卫生间哦！"><i
                                                    class="sprites icon-condition-check-sm "></i><b>独卫</b></span>
                                            <span class="has-tips" title="有飘窗哦！"><i
                                                    class="sprites icon-condition-check-sm "></i><b>飘窗</b></span>

                                            <span class="has-tips" title="有空调哦！"><i
                                                    class="sprites icon-condition-check-sm "></i><b>空调</b></span>
                                            <span class="has-tips" title="有采光很好很nice的阳台！"><i
                                                    class="sprites icon-condition-check-sm "></i><b>阳台</b></span>
                                            <span class="time"></span>
                                        </div>
                                        <div class="house-config">
                                            【房间配置】
                                            <span>床</span><span>衣柜</span><span>书桌</span><span>椅子</span><span>窗帘</span><span>灯具</span><span>四位挂钩</span><span>穿衣镜</span>
                                        </div>
                                    </div>
                                    <div class="info-tag"><span>出租</span></div>
                                </li>

                            </ul>

                            <h3 class="block-tit">公共区域都有什么？</h3>
                            <div class="common-prop">
                                <table>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <span>无线WIFI</span><span>冰箱</span><span>洗衣机</span><span>热水器</span><span>浴霸</span><span>公用厨房</span><span>燃气灶（小户型配电磁炉）</span><span>餐桌</span><span>餐椅</span><span>储物柜</span>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <a href="javascript:;" data-target="#qr-modal" class="show-weixin js-open-modal"></a>
                            </div>
                        </div>
                    </div>
                    <div class="left-block">
                        <div id="houseDetail" class="block-hd"><span
                                class="sprites icon-detail-tit-label icon-sl-house"></span>房间详情
                        </div>
                        <div class="block-bd">
                            <div class="detail-info-img"><img
                                    src="${pageContext.request.contextPath}/upload/${rentOut.roomPicture}"
                                    data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/091e584b-9729-4b03-9ebe-6dc254dbc111.jpg?imageView2/1/w/330/h/220"
                                    width="330" height="220">
                                <div class="info-img-desc"><p>ROOM</p>
                                    <p><b></b></p></div>
                            </div>
                        </div>
                    </div>
                    <%-- <div class="left-block">
                         <div class="block-hd"><span class="sprites icon-detail-tit-label icon-sl-pub"></span>公共区域详情</div>
                         <div class="block-bd">

                              <p><img src="${pageContext.request.contextPath}/img/loading.gif" data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/addf4fd0-92b3-44fe-b5ea-b896ef669a19.jpg?imageView2/1/w/600/h/400|watermark/1/image/aHR0cDovL3d3dy51b2tvLmNvbS9zaHVpeWluLnBuZw==/gravity/Center" width="600" height="400"></p>
                             <p><img src="${pageContext.request.contextPath}/img/loading.gif" data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/650ad652-b416-47d8-a2ec-febc265924ed.jpg?imageView2/1/w/600/h/400|watermark/1/image/aHR0cDovL3d3dy51b2tvLmNvbS9zaHVpeWluLnBuZw==/gravity/Center" width="600" height="400"></p>
                             <p><img src="${pageContext.request.contextPath}/img/loading.gif" data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/2fffa844-4369-4fa6-9dbb-7784d79298d4.jpg?imageView2/1/w/600/h/400|watermark/1/image/aHR0cDovL3d3dy51b2tvLmNvbS9zaHVpeWluLnBuZw==/gravity/Center" width="600" height="400"></p>
                             <p><img src="${pageContext.request.contextPath}/img/loading.gif" data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/09583fd3-d13b-4829-a48f-3bbe790c1cdd.jpg?imageView2/1/w/600/h/400|watermark/1/image/aHR0cDovL3d3dy51b2tvLmNvbS9zaHVpeWluLnBuZw==/gravity/Center" width="600" height="400"></p>
                             <p><img src="${pageContext.request.contextPath}/img/loading.gif" data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2017-05-02/79e6a9ef-561e-4783-9c11-93097122a960.jpg?imageView2/1/w/600/h/400|watermark/1/image/aHR0cDovL3d3dy51b2tvLmNvbS9zaHVpeWluLnBuZw==/gravity/Center" width="600" height="400"></p>
                         </div>
                     </div>--%>


                    <div class="left-block">
                        <div class="block-hd"><span class="sprites icon-detail-tit-label icon-sl-why"></span>为什么选择恋家？
                        </div>
                        <div class="block-bd"><img src="${pageContext.request.contextPath}/img/uoko_advantage.png"
                                                   data-original="${pageContext.request.contextPath}/img/uoko_advantage.png"
                                                   width="861" height="643"></div>
                    </div>
                    <div class="left-block">
                        <div class="block-hd"><span class="sprites icon-detail-tit-label icon-sl-how"></span>怎么租房呐</div>
                        <div class="block-bd"><img src="${pageContext.request.contextPath}/img/how-to-rent.jpg"
                                                   data-original="${pageContext.request.contextPath}/img/how-to-rent.jpg"
                                                   width="804" height="124"></div>
                    </div>
                    <div class="left-block">
                        <div class="block-hd"><span class="sprites icon-detail-tit-label icon-sl-like"></span>猜你喜欢</div>
                        <div class="block-bd no-border AsyncLoading"
                             data-url="/room/guessyoulike?communityId=dbcb5734402b4116ad6f1f85b3d93cec&amp;subAreaId=251">

                            <ul class="gallery">
                                <c:forEach items="${Likes}" var="pageRentout">
                                    <li class="gallery-item" style="float: left;">
                                        <span class="sale-tag"></span>
                                        <div class="item-img"><a
                                                href="${pageContext.request.contextPath }/rentout/findRoomById/${pageRentout.rgId}"
                                                target="_blank"><img
                                                src="${pageContext.request.contextPath}/upload/${pageRentout.roomPicture}"
                                                width="250" height="212"/></a></div>
                                        <div class="item-desc">
                                            <span class="item-tag item-tag-standard"></span>
                                            <div class="item-text">为恋家统一标准化装修，多属房龄较短的电梯公寓，在裸房基础上完成精装全配。</div>
                                            <a href="${pageContext.request.contextPath }/rentout/findRoomById/${pageRentout.rgId}"
                                               target="_blank" title="短租3个月丨可月付丨 ${pageRentout.roomDesc}"
                                               class="item-tit">${pageRentout.roomAddress} 短租3个月|可月付</a>
                                        </div>
                                        <div class="item-info">
                                            <div class="item-loc"><i
                                                    class="sprites icon-loc"></i>${pageRentout.roomAddress}</div>
                                            <div class="item-price"><span><sub>￥</sub>${pageRentout.roomPrice}</span>元/月
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>

                        </div>
                    </div>
                </div>
                <div class="verbose-right">
                    <div class="vr-tit">最新发布房源</div>
                    <div class="around-hot AsyncLoading"
                         data-url="/room/nearby?houseId=7B5B6CEF4C024DBF93E1DA6818F07004&amp;communityId=dbcb5734402b4116ad6f1f85b3d93cec">
                        <ul class="gallery">
                            <c:forEach items="${newPush}" var="pageRentout">
                                <li class="gallery-item" style="float: left">
                                    <span class="sale-tag"></span>
                                    <div class="item-img"><a
                                            href="${pageContext.request.contextPath }/rentout/findRoomById/${pageRentout.rgId}"
                                            target="_blank"><img
                                            src="${pageContext.request.contextPath}/upload/${pageRentout.roomPicture}"
                                            width="250" height="212"/></a></div>
                                    <div class="item-desc">
                                        <span class="item-tag item-tag-standard"></span>
                                        <div class="item-text">为恋家统一标准化装修，多属房龄较短的电梯公寓，在裸房基础上完成精装全配。</div>
                                        <a href="${pageContext.request.contextPath }/rentout/findRoomById/${pageRentout.rgId}"
                                           target="_blank" title="短租3个月丨 可月付丨 ${pageRentout.roomDesc}"
                                           class="item-tit">${pageRentout.roomAddress} 短租3个月丨 可月付</a>
                                    </div>
                                    <div class="item-info">
                                        <div class="item-loc"><i class="sprites icon-loc"></i>${pageRentout.roomAddress}
                                        </div>
                                        <div class="item-price"><span><sub>￥</sub>${pageRentout.roomPrice}</span>元/月
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <!--预约看房-->
        <div id="order-modal" class="modal js-modal order-modal">
            <div class="modal-inner">
                <h2 class="modal-hd">我要预约看房<br>
                    <small>APPOINTMENT FORM</small>
                    <%--<span class="close js-close">&times;</span>--%></h2>
                <div class="modal-content">
                    <div class="form-group field">

                        <div class="detail-row">
                            <div class="detail-label">联系人:</div>
                            <div class="detail-cont">
                                <span>${rentOut.rgName}</span>
                            </div>
                        </div>
                        <div class="detail-row">
                            <div class="detail-label">电话:</div>
                            <div class="detail-cont">
                                <span>${rentOut.rgPhone}</span>
                            </div>
                        </div>

                    </div>
                </div>

                <%--<form action="#" class="form" id="reserveForm">
                    <div class="modal-content">
                        <p class="form-desc">请如实填写信息，我们将尽快与您联系：</p>
                        <input type="hidden" name="roomid" />
                        <input type="hidden" name="roomcode" />
                        <input type="hidden" name="roomdescription" />
                        <div class="form-group field">
                            <label class="col3 label">您的名字：</label>
                            <div class="col8">
                                <input type="text" class="control" name="name" check-type="required">
                            </div>
                        </div>
                        <div class="form-group field">
                            <label class="col3 label">您的手机：</label>
                            <div class="col8">
                                <input type="text" class="control" name="phone" check-type="phone">
                            </div>
                        </div>
                        <div class="field">
                            <label class="col3 label">性别：</label>
                            <div class="col8 radio-group">
                                <label>
                                    <input type="radio" name="gender" value="0" checked>男
                                </label>
                                <label>
                                    <input type="radio" name="gender" value="1">女
                                </label>
                            </div>
                        </div>
                        <div class="field">
                            <label class="col3 label">入住人数：</label>
                            <div class="col8 radio-group">
                                <label>
                                    <input type="radio" name="peoplenumber" value="1" checked>1人
                                </label>
                                <label>
                                    <input type="radio" name="peoplenumber" value="2">2人
                                </label>
                            </div>
                        </div>
                        <div class="form-group field">
                            <label class="col3 label">预约时间：</label>
                            <div class="col8">
                                <input type="text" class="control" id="datetime_plan" name="plantime">
                            </div>
                        </div>
                        <div class="field">
                            <label class="col3 label">个人需求：</label>
                            <div class="col8">
                                <textarea class="control" name="remarks"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-round btn-default" data-dismiss="modal">
                           关闭
                        </button>
                    </div>
                </form>--%>
                <div class="modal-footer">
                    <button type="button" class="btn btn-round btn-default" data-dismiss="modal">
                        关闭
                    </button>
                </div>
            </div>
        </div>

        <div id="error-modal" class="modal js-modal order-modal">
            <div class="modal-inner">
                <h2 class="modal-hd">请登录<br>
                    <small>Error</small>
                    <span class="close js-close">&times;</span></h2>
                <div class="modal-content">
                    <p class="room_callback">
                        未登录!
                        <br>

                        <span class="room_callback_info">请您先<a
                                href="${pageContext.request.contextPath}/main/toShowLogin">登录</a>。</span>
                    </p>
                    <%--
                     <div class="wx-media-group clearfix">
                         <div class="wx-icon">
                             <img src="${pageContext.request.contextPath}/img/uoko_wechat_qrcode.jpg" alt="扫一扫加入恋家官方微信，有机会赢取大奖！" class="img-responsive" />
                         </div>
                         <div class="wx-hint">
                             <h2>
                                 下载官方租房社交APP<br />
                                 【喵了隔壁】
                             </h2>
                             <div class="wx-perfect-word">
                                 <!-- <img src="${pageContext.request.contextPath}/img/uoko_pet.png" class="wx-icon-pet"> -->
                                 <p class="wx-text-desc">
                                     有预约记录，<br />
                                     能直接导航到小区唷~
                                 </p>
                             </div>
                             <!--          <a class="link underline" href="/aboutus/contact/">更多联系方式</a> -->
                         </div>
                     </div>--%>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-round btn-default" data-dismiss="modal">
                        确 定
                    </button>
                </div>
            </div>
        </div>
        <div id="qr-modal" class="modal js-modal qr-modal">
            <div class="modal-content animate-y-in">
                <div class="container clearfix">
                    <div class="qr-modal-left"><img src="${pageContext.request.contextPath}/img/weixin_qr_popup.jpg"
                                                    width="316" height="311"></div>
                    <div class="qr-modal-right">
                        <h2 class="qr-modal-title">掏出手机随时随地找房<br>PO地址推荐离你最近的优质房源</h2>
                        <p class="qr-modal-desc">更多优惠，好玩的。尽在微信：UOKOHOME。<br>你还没有关注吗？赶紧的！</p><a href="javascript:;"
                                                                                               class="js-close qr-btn">我知道啦</a><img
                            src="${pageContext.request.contextPath}/img/weixin_body_popup.gif" class="qr-picture">
                    </div>
                </div>
            </div>
        </div>

        <div id="info-pop" class="info-pop-box">
            <div class="info-pop-box-inner">
                <div class="info-pop-close"><a href="javascript:;" data-dismiss class="icon-pop-close"></a></div>
                <div class="info-pop-tit">&nbsp;</div>
                <div class="info-pop-content">
                    <div class="info-pc-inner">你还没有选择房间哟！</div>
                </div>
                <div class="info-pop-foot"><a href="javascript:;" data-dismiss class="btn btn-theme">确认</a></div>
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
        with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = '${pageContext.request.contextPath}/js/share.js'];

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
                    <img src="${pageContext.request.contextPath}/img/footer-weixin-cd.jpg" width="131" height="131"
                         alt="微信找房，扫我吧">
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


<script src="${pageContext.request.contextPath}/js/common.bundle.js?v=1.1"></script>
<!--统计代码-->
<script src="${pageContext.request.contextPath}/js/g.js"></script>
<script>


    NTKF_PARAM = {
        siteid: "kf_9452",
        settingid: "kf_9452_1480658837072",
        uid: "",
        uname: "",
        isvip: "0",
        userlevel: "0",
        itemid: "7B5B6CEF4C024DBF93E1DA6818F07004",
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


    // cookie
    var Cookie = function (name, value, options) {
        if (typeof value != 'undefined') {
            options = options || {};
            if (value === null) {
                options.expires = -1;
            }
            var expires = '';
            if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
                var date;
                if (typeof options.expires == 'number') {
                    date = new Date();
                    date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
                } else {
                    date = options.expires;
                }
                expires = '; expires=' + date.toUTCString();
            }
            //var path = options.path ? '; path=' + options.path : '',
            var path = '; path=/',
                domain = options.domain ? '; domain=' + options.domain : '',
                secure = options.secure ? '; secure' : '';

            document.cookie = [name, '=', value, expires, path, domain, secure].join('');
        } else {
            var nameEQ = name + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1, c.length);
                }
                if (c.indexOf(nameEQ) == 0) {
                    return decodeURIComponent(c.substring(nameEQ.length, c.length));
                }
            }
            return false;
        }
    };

    ;(function ($, undefined) {

        function isArray(o) {
            return Object.prototype.toString.call(o) === '[object Array]';
        }

        //解析查询字符串方法 spliter可选默认 &,sparator可选默认 =;

        //传入 'foo=1&bar=2&foo=3'将返回对象 { foo:[1,3], bar:2 }

        function parseQuery(queryString, spliter, separator) {
            var ret = {};
            spliter = spliter || '&';
            separator = separator || '=';

            if (queryString === '' || queryString === undefined) {
                return ret;
            }

            var paramArr = queryString.split(spliter);

            for (var i = 0; paramArr[i]; i++) {
                var pairs = paramArr[i].split(separator);
                var key = pairs[0];
                var val = pairs[1];

                if (ret[key] === undefined) {
                    ret[key] = val;
                    continue;
                }
                if (!isArray(ret[key])) {
                    ret[key] = [ret[key]].concat(val);
                    continue;
                }

                ret[key].push(val);

            }
            ;

            return ret;

        }

        $.parseQuery = parseQuery;

    })(window.jQuery)

    function isEmptyVal(val) {
        return val === undefined || val === '' || val === null;
    }

    //设置页面cookie
    function setUtmCookie(key) {
        var _utm = Cookie(key);
        var queryString = $.parseQuery(window.location.search.slice(1));
        var cookieVal = [];
        var nameTransfers = {};
        if (_utm !== false && _utm !== '') {
            return;
        }
        var sourceType = !isEmptyVal(queryString['hmsr']) ?
            'hmsr' : !isEmptyVal(queryString['utm_source']) ?
                'utm_source' : undefined;

        if (!sourceType) {
            return;
        }

        if (sourceType === 'hmsr') {//若sourceType是hmsr，替换循环参数
            nameTransfers = {
                'utm_source': 'hmsr',
                'utm_medium': 'hmpl',
                'utm_term': 'hmkw',
                'utm_campaign': 'hmcu',
                'utm_content': 'hmci'
            }
        }

        $.each(setUtmCookie.cookieMap, function (index, key) {
            var queryKey = nameTransfers[key] || key;
            queryString[queryKey] && cookieVal.push(key + '=' + queryString[queryKey]);
        });

        if (!cookieVal.length) {//防止写入空值
            return;
        }
        cookieVal = cookieVal.join('&');
        return Cookie(key, cookieVal, setUtmCookie.cookieOption);
    }

    //配置
    setUtmCookie.cookieMap = ['utm_source', 'utm_medium', 'utm_campaign', 'utm_term', 'utm_content'];
    setUtmCookie.cookieOption = {
        expires: 15,
        path: '/',
        domain: '.uoko.com'
    }

    setUtmCookie('_utm');

</script>

<script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/js/validation.min.js"></script>
<script src="${pageContext.request.contextPath}/js/datetimepicker_standalone.min.js"></script>
<script type="text/javascript">

    function showModel() {
        var uname = $('#uname').val();
        console.log(uname);
        if (uname == null || uname == '') {
            //显示模态框
            $("#error-modal").modal({
                backdrop: 'static'
            });
        } else {
            //显示模态框
            $("#order-modal").modal({
                backdrop: 'static'
            });

        }

    }

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

    $(document).ready(function () {
        $("#detailContainer .AsyncLoading").each(function () {
            var self = $(this);
            loadModule(self);
        });
        $("#reserveForm").validation();

        $('#datetime_plan').datetimepicker({
            language: 'zh-CN',
            format: 'yyyy-mm-dd hh:00',
            startDate: new Date(),
            weekStart: 1,
            minuteStep: 60,
            minView: 1,
            todayBtn: 1,
            autoclose: 1,
            todayHighlight: false,
            forceParse: 0,
        });

    });

</script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/ntkfstat.js" charset="utf-8"></script>
</body>
</html>
