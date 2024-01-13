<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <title>出租房租前须知 - 恋家月租房疑问解答，非中介！</title>
    <meta name="keywords"/>
    <meta name="description"/>


    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.bundle.css">
    <style>
        .city-selection .city-cur1 {
            color: #fff;
            font-size: 12px;
        }
    </style>


    <link href="${pageContext.request.contextPath}/css/question.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/common.bundle.css" rel="stylesheet"/>


</head>
<body>
<div class="page-wrap">

    <div class="page-main" id="page-main">
        <!-- header -->
        <jsp:include page="header.jsp"></jsp:include>

        <div class="body_back_f back_box">
            <div class="container container-backtop">
                <div class="breadcrumb mt30">
                    <a href="${pageContext.request.contextPath}/main/toIndex">首页</a>&gt;<span>租前须知</span>
                </div>
                <div class="clearfix">
                    <div class="leftNav ">
                        <div id="myaffix" class="question_list_box hidden-print affix-top">
                            <h4 class="title">FAQ</h4>
                            <dl class="navwrap" id="fixed-nav">
                                <dt>租前服务<i class="icon"></i></dt>
                                <dd>
                                    <ul class="nav bs-sidenav list-unstyled">
                                        <li>
                                            <a href="#1" title="恋家简介">
                                                恋家简介
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#2" title="恋家找房预约指南">
                                                恋家找房预约指南
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#3" title="恋家提供的房租月付及费用计算方式">
                                                恋家提供的房租月付及费用计算方式
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#4" title="恋家交定方式及签约">
                                                恋家交定方式及签约
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#5" title="恋家长租与短租">
                                                恋家长租与短租
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#6" title="恋家双人间与单人间">
                                                恋家双人间与单人间
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#7" title="恋家租客认证">
                                                恋家租客认证
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#8" title="恋家饲养宠物规则">
                                                恋家饲养宠物规则
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#9" title="恋家搬家券领取">
                                                恋家搬家券领取
                                            </a>
                                        </li>
                                    </ul>
                                </dd>
                                <dt>租期服务<i class="icon"></i></dt>
                                <dd>
                                    <ul class="nav bs-sidenav list-unstyled">
                                        <li>
                                            <a href="#11" title="恋家保洁服务">
                                                恋家保洁服务
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#13" title="恋家代收代缴服务">
                                                恋家代收代缴服务
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#14" title="恋家巡房服务">
                                                恋家巡房服务
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#15" title="恋家暖心客服">
                                                恋家暖心客服
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#16" title="恋家投诉服务">
                                                恋家投诉服务
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#18" title="恋家管家服务">
                                                恋家管家服务
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#19" title="租客入住期间信息变更服务">
                                                租客入住期间信息变更服务
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#20" title="恋家在线账单服务">
                                                恋家在线账单服务
                                            </a>
                                        </li>
                                    </ul>
                                </dd>
                                <dt>租约变更服务<i class="icon"></i></dt>
                                <dd>
                                    <ul class="nav bs-sidenav list-unstyled">
                                        <li>
                                            <a href="#21" title="租客提前退租服务">
                                                租客提前退租服务
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#22" title="租客入住期间转租服务">
                                                租客入住期间转租服务
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#23" title="租客入住期间换房服务">
                                                租客入住期间换房服务
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#24" title="租客续租与到期退租服务">
                                                租客续租与到期退租服务
                                            </a>
                                        </li>
                                    </ul>
                                </dd>
                                <dt>恋家承诺<i class="icon"></i></dt>
                                <dd>
                                    <ul class="nav bs-sidenav list-unstyled">
                                        <li>
                                            <a href="#25" title="恋家承诺">
                                                恋家承诺
                                            </a>
                                        </li>
                                    </ul>
                                </dd>
                                <dt>缴费须知<i class="icon"></i></dt>
                                <dd>
                                    <ul class="nav bs-sidenav list-unstyled">
                                        <li>
                                            <a href="#26" title="缴费须知">
                                                缴费须知
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#28" title="缴费方式">
                                                缴费方式
                                            </a>
                                        </li>
                                    </ul>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <div class="rightCont question_con">
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="1">
                                    <span class="i">
                                        Q1
                                    </span>
                                    恋家简介
                                </h4>
                                <div class="content">
                                    <p>
                                        <span style="font-size:14px;"> </span>
                                    </p>
                                    <p class="MsoNormal" style="text-indent:21.0pt;">
                                        <span>无中介费、宜家风格、精装全配、公寓式服务、网络社交平台——这是恋家的几个标签</span>
                                    </p>
                                    恋家成立于<span>2012</span>年，作为互联网时代新型租房模式的引领者，恋家为城市租房人群提供品质长租公寓产品，以及围绕租后服务和居住社交衍生的其他服务。我们以标准化的方式打造租住环境，更好的满足租客需求。运营四年来，我们一直努力践行“打造租房时代美好回忆”的品牌承诺，致力为都市年轻人打造更多样化的居住和社交生活体验。
                                    <p>
                                        <br/>
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="2">
                                    <span class="i">
                                        Q2
                                    </span>
                                    恋家找房预约指南
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal">
                                        <span>一、如何快速的在官网搜索到目标房源（首先进入官网www.uoko.com的首页）</span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span>1.条件找房</span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span>进入“我要租房”板块，选择区域、租金、户型等标签信息，缩小找房范围或使用我们的快捷搜索“地图找房”，直接在地图上寻找房源</span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span>&nbsp;<img
                                                src="http://images.uoko.com/Upload/EditorFiles/image/2016-08-05/00db6ff7-a2ea-4e05-b354-08f94c641022.png"
                                                alt=""/></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span>2.查看房源</span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span>按区域、租金等条件查找后即可看到对应的房源</span>
                                    </p>
                                    <h6>
                                        <img src="http://images.uoko.com/Upload/EditorFiles/image/2016-08-05/0711a15f-3472-4c2b-9228-cb24b99d8e48.png"
                                             alt=""/><br/>
                                    </h6>
                                    <h6>
                                        <span style="font-weight:normal;line-height:1.5;">点击即可进入查看房屋具体信息</span>
                                    </h6>
                                    <p class="MsoNormal">
                                        <img src="http://images.uoko.com/Upload/EditorFiles/image/2018-08-23/f68cca05-e76b-44cd-94e8-440c0a319db4.png"
                                             alt=""/>
                                    </p>
                                    <p class="MsoNormal">
                                        <br/>
                                    </p>
                                    <p class="MsoNormal">
                                        3.预约看房
                                    </p>
                                    <p class="MsoNormal">
                                        方式一：直接拨打<span>10105288</span>恋家官网预约电话<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        方式二：点击“我要看房”，输入对应信息即可<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        方式三：点击“<span>QQ</span>咨询”，可以直接咨询客服小伙伴
                                    </p>
                                    <p class="MsoNormal">
                                        <br/>
                                    </p>
                                    <p class="MsoNormal">
                                        二、找房注意事项
                                    </p>
                                    <p class="MsoNormal">
                                        1.如何节省找房时间
                                    </p>
                                    <p class="MsoNormal">
                                        &nbsp; &nbsp;不同的恋家管家会负责不同的区域，所以在预约时请告知清楚需求，让管家帮忙推荐可以最大限度节省宝贵的时间
                                    </p>
                                    <p class="MsoNormal">
                                        2.看房前考虑清楚对交通、户型、周边配套等要素的需求度，提高找房精准度
                                    </p>
                                    <p class="MsoNormal">
                                        3.交付钥匙
                                    </p>
                                    <p class="MsoNormal">
                                        &nbsp; &nbsp;在合同规定的房屋交付日交验时您需注意：（1）房屋是否与合同约定的一致；（2）家电、家具等是否与合同相符；（3）钥匙是否已交付；（4）水电气表读数等（物业交割时未满会帮您计算清楚）
                                    </p>
                                    <h5>
                                        <br/>
                                    </h5>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="3">
                                    <span class="i">
                                        Q3
                                    </span>
                                    恋家提供的房租月付及费用计算方式
                                </h4>
                                <div class="content">
                                    <p>
                                        房租月付帮你完美解放钱包，各种面膜、美食向你袭来，当然享受月付还是会有些小小的条件。
                                    </p>
                                    <p>
                                        恋家房租分期月付办理及计费方式：<br/>
                                        <br/>
                                        首次租房押二付一（短租押二付三），解放钱包！轻松住！<br/>
                                        <br/>
                                        1、办理分期月付条件：<br/>
                                        *需要满足签约一年及两年及以上的条件（签约两年的福利请看“关于租期的选择”）<br/>
                                        <br/>
                                        2、什么费用可以用于分期：<br/>
                                        可用于分期：租金+管理服务费<br/>
                                        不可用于分期：水电气、物业费（先用后付费）<br/>
                                        <br/>
                                        3、办理分期月付，首次入住计费方式：<br/>
                                        押金*2+（租金+管理服务费）*1<br/>
                                        <br/>
                                        以租金为￥600元的合租房为例，首次入住需支付：<br/>
                                        押金：600元*2个月=1200元<br/>
                                        租金：600元*1个月=600元<br/>
                                        月付租金的管理服务费定额收取120元<br/>
                                        共计：1920元<br/>
                                        <br/>
                                        按月付需支付：租金600元+管理服务费120元。每三个月结算一次水电气费和物业费。<br/>
                                        <br/>
                                        4、支付方式：<br/>
                                        首次支付：与签约管家现场支付宝、微信、信用卡等方式<br/>
                                        按月支付：以签约两年为例，签约月付后剩余23个月房租，按月按时存入指定银行卡或通过支付宝还款即可！<br/>
                                        <br/>
                                        5、房租分期月付有没有手续费，额外利息？<br/>
                                        除去金融公司收取的分期手续费，恋家不会额外收费；活动期间，根据不同的金融产品，恋家还会给到客户利息补贴或服务费折扣的优惠。
                                    </p>
                                    <p>
                                        <br/>
                                        6、分期月付办理流程：<br/>
                                        管家现场办理：确认房租月付分期→提供个人信息→申请→审核通过<br/>
                                        <br/>
                                        7、如提前违约退租，除了合同违约金之外，分期月付会有一定的还款手续费：（还款手续费是金融公司收取）<br/>
                                        例如：恋家提供的“海尔月付”<br/>
                                        <br/>
                                        海尔月付（2年）：<br/>
                                        【利息】利息由恋家一次性支付<br/>
                                        【违约金】住满1年（含）以上退租，免违约金；不满一年退租不免违约金<br/>
                                        【提前还款手续费】中途退租需支付剩余房租的1%作为金融机构“提前还款手续费”。<br/>
                                        <br/>
                                        以上所有方式后续还款由租客按账单日每期通过银行代扣或者支付宝（限网商月付）支付给第三方。<br/>
                                        <br/>
                                        <br/>
                                        8、有保障——知名金融合作机构：
                                    </p>
                                    <p>
                                        百度&nbsp;&nbsp; &nbsp;&nbsp;百度集团旗下的金融公司
                                    </p>
                                    <p>
                                        京东&nbsp;&nbsp; &nbsp;&nbsp;京东集团旗下的金融公司
                                    </p>
                                    <p>
                                        海尔&nbsp;&nbsp; &nbsp;&nbsp;海尔集团旗下的金融公司
                                    </p>
                                    <br/>
                                    PS：如有不清楚的，可以拨打10105288详细咨询。
                                    <p>
                                        <br/>
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="4">
                                    <span class="i">
                                        Q4
                                    </span>
                                    恋家交定方式及签约
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal">
                                        <span style="line-height:1.5;">一、交定方式</span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span style="line-height:1.5;">1、现场交定：</span>
                                    </p>
                                    <p class="MsoNormal">
                                        与工作人员现场POS机刷卡支付，为了您和管家哥哥（or 妹妹）们的安全，最好不要带现金哦<br/>
                                        2、在线支付：<br/>
                                        通过关注恋家官方微信（uokohome）或注册登录我们的官方网站，在【我的账单】列表查看账单并进行支付。<br/>
                                        警示：如有您收到来历不明的收款短信，请与我们10105288取得联系，并确认账号的真实性哦。
                                    </p>
                                    <p class="MsoNormal">
                                        二、房间签约
                                    </p>
                                    <p class="MsoNormal">
                                        <br/>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:21pt;text-indent:-21pt;">
                                        1、交定后，以交定时间点开始计时，于交定的3天后开始计算租期（若是未交付房源，以交付时间点开始计时，于交付的3天后开始计算租期）。
                                    </p>
                                    <p class="MsoNormal" style="margin-left:21pt;text-indent:0pt;">
                                        即，交定后的3天（72小时）内务必与公司签约并支付尾款，否则定金作废！公司有权对交定房间再次出租。
                                    </p>
                                    <p class="MsoNormal" style="margin-left:21pt;text-indent:-21pt;">
                                        &nbsp; &nbsp; &nbsp; &nbsp;举个栗子：
                                    </p>
                                    <p class="MsoNormal" style="margin-left:21pt;text-indent:0pt;">
                                        如果是3月1日24:00前完成定金交付，那么，您务必在3月3日24:00前与公司签订租房合同，否则定金作废，且不退不换！
                                    </p>
                                    <p class="MsoNormal" style="margin-left:21pt;text-indent:-21pt;">
                                        2、如有特殊情况，需要提前沟通，在双方都同意的情况下+已完成首次房租支付+租期已经从交定后第3天开始计算的三个前提下，可以延迟到交定完成后的7天内签写租房合同。
                                    </p>
                                    <p class="MsoNormal" style="margin-left:21pt;text-indent:-21pt;">
                                        3、友情提示：房间以交定为准，逾期则定金不退不换！
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:10.5pt;text-indent:0pt;">
                                        <br/>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="5">
                                    <span class="i">
                                        Q5
                                    </span>
                                    恋家长租与短租
                                </h4>
                                <div class="content">
                                    <p>
                                        <span style="line-height:1.5;">一、短租每月租金上浮100元，3个月起签；期满续租1年以上，上浮租金可全额返还。</span>
                                    </p>
                                    <p class="MsoNormal">
                                        二、长租<span>=</span>租期两年，长租可享受以下福利：
                                    </p>
                                    <p class="MsoNormal">
                                        &nbsp; &nbsp; &nbsp;两年不涨租；
                                    </p>
                                    <p class="MsoNormal">
                                        &nbsp; &nbsp; &nbsp;房租月付，鸭梨全无（手续稍稍麻烦些哟）；<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        &nbsp; &nbsp; &nbsp;入住时间只要满一年，违约退租不会再收取一个月房租作为违约金！<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        &nbsp; &nbsp;（看来是没有理由不签两年的）<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        三、<span style="line-height:1.5;">&nbsp;如果在长租期间工作地点发生变化，你可以选择顶租，直接将房间转租给下一位租客；或是选择换房，直接搬到离工作地点更近的恋家</span><span
                                            style="line-height:1.5;">房间，深受年轻人喜爱的恋家房间风格不愁顶，全城房源分布不愁换！</span>
                                    </p>
                                    四、如需详询请致电：<span>10105288</span>
                                    <p>
                                        <br/>
                                    </p>
                                    <p class="p" style="text-indent:0pt;margin-left:0pt;">
                                        <span style="line-height:1.5;"></span>
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                    <br/>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="6">
                                    <span class="i">
                                        Q6
                                    </span>
                                    恋家双人间与单人间
                                </h4>
                                <div class="content">
                                    <p>
                                        <span style="line-height:1.5;">1、为了大家能够居住得舒适，并且公共卫生间和厨房等可以合理的使用，我们将房屋分类为双人间（双人间大都为整租房、标间、主卧）和单人间。</span>
                                    </p>
                                    <p>
                                        <span style="line-height:1.5;">2、凡是可以入住<span>两个人的房间，在官网的房间详情里都有标注，若超额入住可能被解约哦，好环境要大家一起营造</span></span>
                                    </p>
                                    <p class="p" style="margin-left:0.0000pt;">
                                        <img src="http://images.uoko.com/Upload/EditorFiles/image/2016-08-05/da949be2-7b14-47aa-92df-1a807468c48f.png"
                                             alt=""/>
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="7">
                                    <span class="i">
                                        Q7
                                    </span>
                                    恋家租客认证
                                </h4>
                                <div class="content">
                                    <p>
                                        <span style="line-height:1.5;">1、&nbsp;我们和大家一样在意入住租客的素质，努力为大家提供合租的品质生活。</span>
                                    </p>
                                    <p class="p" style="margin-left:0.0000pt;text-indent:0.0000pt;">
                                        2、 首先为了合租室友的稳定性，我们拒绝了大多数短租需求的租客。<br/>
                                        3、 我们暂时没有男生/女生的公寓，如果同一套房子入住的大多为男生/女生，我们会尽量为大家匹配同性别的租客。<br/>
                                        4、&nbsp;我们实行对签约租客的认证，即：租客身份证复印件、租客学生证或单位名片、工牌复印件等备案。<br/>
                                        5、&nbsp;对于合租来说，遇到合适的室友，确实是一件喜大普奔的事情。<span>为了创造这种可能性，</span>我们对合租租客的年龄要求为18至35岁之间。
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="8">
                                    <span class="i">
                                        Q8
                                    </span>
                                    恋家饲养宠物规则
                                </h4>
                                <div class="content">
                                    1、虽然我们和您一样的喜爱宠物，但因为合租的室友可能会对毛发过敏，同时也为了给您的爱宠一个宽敞的环境，咱们的合租房是不能养宠物的。<br/>
                                    2、若是您饲养的是金鱼、乌龟则不受限制。
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="9">
                                    <span class="i">
                                        Q9
                                    </span>
                                    恋家搬家券领取
                                </h4>
                                <div class="content">
                                    <p>
                                        <br/>
                                    </p>
                                    <div style="font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
                                        凡是恋家新签约租客，可领取20元蓝犀牛搬家抵金券（限蓝犀牛新注册用户）。
                                    </div>
                                    <div style="font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
                                        搬家券使用规则：
                                    </div>
                                    <div style="font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
                                        1、通过恋家官网及APP入口进入优惠券领取页面，填写手机及验证码，符合条件即可获得搬家券。
                                    </div>
                                    <div style="font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
                                        2、通过蓝犀牛平台，按其下单流程预定搬家服务即可。
                                    </div>
                                    <div style="font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
                                        3、超过抵金券金额部分，租客须补足多余款项。
                                    </div>
                                    <div style="font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
                                        4、该抵金券只作为搬家费用的抵扣，不作为其他费用冲抵，不兑现、不找补。
                                    </div>
                                    <p style="font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
                                        5、恋家为租客推荐租房搬家福利，具体搬家服务及责任均由蓝犀牛承担。
                                    </p>
                                    <p style="font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">
                                        6、&nbsp;活动有效期截止为2017年12月31日。
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                    <br/>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="11">
                                    <span class="i">
                                        Q11
                                    </span>
                                    恋家保洁服务
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>一、</b><b>服务介绍<span>&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        恋家保洁旨在为每一位租客打造清洁、舒适的居住环境。自推出以来已累计为租客提供上万次保洁服务，专业的保洁团队为您的居住生活提供强有力的后勤保障。<span>&nbsp;&nbsp;&nbsp; </span><b>&nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>二、</b><b>服务内容<span></span></b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        我们为所有合租房提供双周公区保洁服务。包括：<span
                                            style="font-family:微软雅黑, sans-serif;font-size:13.3333px;">公共区域厨房、公共区域卫生间及公共区域的墙面、地面及家具、家电表面的清洁和厨房、公共区域卫生间下水等。</span>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>三、服务特点<span>&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        专业：专业保洁团队，人员训练有素，专业清洁工具，客户安心、放心<span>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span>
                                    </p>
                                    <p class="MsoNormal">
                                        便捷：全城多家专业保洁公司合作，按计划及预约提供上门保洁服务<b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>四、</b><b>服务流程<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        合租房双周保洁无需预约，保洁上门——保洁完成——微信回访<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="13">
                                    <span class="i">
                                        Q13
                                    </span>
                                    恋家代收代缴服务
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>一、</b><b>服务介绍<span>&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        费用代收代缴服务旨在为每一位租客免去缴纳各种费用的烦恼，保障日常生活需求，专业的服务管家团队为您的居住生活提供强有力的后勤保障。目前代收代缴只适用部分房源。<span>&nbsp; </span><b>&nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>二、</b><b>服务内容与标准<span> </span></b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>
                                            <table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0"
                                                   style="border:none;">
                                                <tbody>
                                                <tr>
                                                    <td width="72" style="border:solid black 1.0pt;">
                                    <p class="MsoNormal" align="center"
                                       style="text-align:center;vertical-align:middle;">
                                        <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">序号</span><span
                                            style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                    </p>
                                    </td>
                                    <td width="72" style="border:solid black 1.0pt;">
                                        <p class="MsoNormal" align="center"
                                           style="text-align:center;vertical-align:middle;">
                                            <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">服务内容</span><span
                                                style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                        </p>
                                    </td>
                                    <td width="470" style="border:solid black 1.0pt;">
                                        <p class="MsoNormal" align="center"
                                           style="text-align:center;vertical-align:middle;">
                                            <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">服务标准</span><span
                                                style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                        </p>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td width="72" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="center"
                                               style="text-align:center;vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">1</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                        <td width="72" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="center"
                                               style="text-align:center;vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">水气费</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                        <td width="470" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="left" style="vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">由服务管家代缴，目前使用包干价收取。特殊房源除外。</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="72" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="center"
                                               style="text-align:center;vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">2</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                        <td width="72" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="center"
                                               style="text-align:center;vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">电费</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                        <td width="470" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="left" style="vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">部分房源由服务管家代缴，每月抄录电表底度<span>/</span>余额，按照实际使用情况分摊至每人，每三个月由恋家收取一次费用。特殊房源除外。</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="72" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="center"
                                               style="text-align:center;vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">3</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                        <td width="72" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="center"
                                               style="text-align:center;vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">物业费</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                        <td width="470" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="left" style="vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">由服务管家代缴，按照实际产生费用分摊至每个房间，每三个月由恋家收取一次费用。特殊房源除外。</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="72" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="center"
                                               style="text-align:center;vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">4</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                        <td width="72" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="center"
                                               style="text-align:center;vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">垃圾费</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                        <td width="470" style="border:solid black 1.0pt;">
                                            <p class="MsoNormal" align="left" style="vertical-align:middle;">
                                                <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">由服务管家代缴，按照实际产生费用分摊至每个房间，每三个月收取一次费用。特殊房源除外。</span><span
                                                    style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                            </p>
                                        </td>
                                    </tr>
                                    </tbody>
                                    </table>
                                    <br/>
                                    <br/>
                                    </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>三、特别提示&nbsp;&nbsp;</b><b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        服务管家每月进行固定额度缴费，请您及时关注水电气费用余额情况，避免超额使用，若发现余额不足<span>20</span>元，及时联系<span>10105288</span>客服。<span></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="14">
                                    <span class="i">
                                        Q14
                                    </span>
                                    恋家巡房服务
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>一、</b><b>服务介绍<span>&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        管家每月进行巡房检查，旨在为每一位租客打造安全、舒适的居住环境，专业的服务管家团队为您的居住生活提供强有力的后勤保障。<span>&nbsp;&nbsp;&nbsp; </span><b></b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>二、</b><b>服务内容<span></span></b>
                                    </p>
                                    <table class="MsoNormalTable ke-zeroborder" border="0" cellspacing="0"
                                           cellpadding="0">
                                        <tbody>
                                        <tr>
                                            <td width="72" style="border:none;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">序号</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="84" style="border:none;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">服务内容</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="461" style="border:none;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">服务标准</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="72" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">1</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="84" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">安全性检查</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="461" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="left" style="vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">检查灭火器是否过期、燃气、水阀、插座开关等是否存在安全隐患，若发现隐患及时处理</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="72" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">2</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="84" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">功能性检查</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="461" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="left" style="vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">检查冰箱、洗衣机，热水器、浴霸、门锁等是否能正常使用，若发现隐患及时处理</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="72" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">3</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="84" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">舒适性检查</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="461" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="left" style="vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">检查热水温度、重启光猫路由器、检查公区卫生情况，是否有养宠物等，若发现问题及时处理</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>三、服务流程<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        管家巡房无需预约。<span></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="15">
                                    <span class="i">
                                        Q15
                                    </span>
                                    恋家暖心客服
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal">
                                        <b>一、服务介绍<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        我们提供一周<span>7</span>×<span>11</span>小时（<span>9</span>：<span>00-20</span>：<span>00</span>）的客服服务，客服电话：10105288，方便您有问题的时候能及时联系我们。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>二、服务内容<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        除了<span>10105288</span>电话，工作日我们还提供了微信客服（<span>uokohome</span>）
                                    </p>
                                    <p class="MsoNormal">
                                        1. 客服可以协助您报修、查询您的保洁计划。如果您是整租的租客，可以帮您预约保洁。当然，我们更欢迎您选择自助服务<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        2.客服可以帮你查询您业务办理的进度，解答您关于合同政策的问题。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        &nbsp;
                                    </p>
                                    <p class="MsoNormal">
                                        <b>三、特别提示<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1.
                                        为了保证租客的咨询都能及时接待处理，我们不建议您找客服闲聊。客服通常的工作都很忙碌，因为要处理众多租客的事务性工作，我们希望您真正遇到问题的时候能及时联系到我们。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        2.客服会尊重和重视您的需求，也希望您能尊重客服工作。如果超出我们的服务范围，我们也会坦诚告知，比如帮您找个女朋友。我们希望客服和租客相敬如宾，赤诚相待。<span></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="16">
                                    <span class="i">
                                        Q16
                                    </span>
                                    恋家投诉服务
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal">
                                        <b>一、服务介绍<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        在您租住期间产生的不便，表示非常遗憾，我们会全力协调处理您的问题。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>二、服务标准<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        您提交的投诉建议我们会在一个工作日内首次联系，请保持电话畅通。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        &nbsp;
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>三、</b><b>服务流程<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        关注恋家微信公众号<span>UOKOHome,</span>选择自主服务的投诉建议或联系10105288客服协助<span> &nbsp;&nbsp;&nbsp; </span>
                                    </p>
                                    <p class="MsoNormal">
                                        投诉单受理—了解核实投诉建议事实—协商处理方案—完成结单—微信回访<span>&nbsp; </span><b>&nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>四、特别提示<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1.我们会尊重和重视您的需求，尽量的帮您协调处理。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        2.我们希望您的诉求是合理和理智的，不超出合同之外的。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        3.室友之间的矛盾我们会以协调为主，请大家互相尊重。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        4.如果有违反法律或者治安管理条例的事情，我们会按照司法流程处理，并以司法处理结果为准。<span></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="18">
                                    <span class="i">
                                        Q18
                                    </span>
                                    恋家管家服务
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>一、</b><b>服务介绍<span>&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        管家服务旨在为每一位租客提供方便、美好的居住体验，专业的服务管家团队为您的居住生活提供强有力的后勤保障。<span>&nbsp;&nbsp;&nbsp; </span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span> </span>
                                    </p>
                                    <p>
                                        管家上门的服务时间是在每天的10:00-20:00。
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>二、</b><b>服务内容<span></span></b>
                                    </p>
                                    <table class="MsoNormalTable ke-zeroborder" border="0" cellspacing="0"
                                           cellpadding="0">
                                        <tbody>
                                        <tr>
                                            <td width="72" style="border:none;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">序号</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="570" colspan="2" style="border:none;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">服务内容</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="72" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">1</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="112" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">备用钥匙</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="458" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="left" style="vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">当您不小心忘记带钥匙时，其他租客也无法也联系不上，工作时间内可联系您的管家，去管家的办公驻点借用大门的备用钥匙并按时归还。非工作时间无法提供备用钥匙，请您谅解。</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="72" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">2</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="112" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">维修协调</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="458" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="left" style="vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">若是我们的房间出现工程质量问题，导致您无法居住，我们会为您提供一个临时的房间居住，满足您的基本居住需求</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="72" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">3</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="112" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">室友关系协调</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="458" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="left" style="vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">我们的服务宗旨是：为您创造租房时代的美好回忆。在您居住期间当您发现租客不符合筛查制，或者劝说后也不能遵守租客公约，可以致电<span>10105288</span>， 您的管家会进行上门协调；</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="72" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">4</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="112" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="center"
                                                   style="text-align:center;vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">邻里关系协调</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                            <td width="458" style="border:solid black 1.0pt;">
                                                <p class="MsoNormal" align="left" style="vertical-align:middle;">
                                                    <span style="font-size:10pt;font-family:微软雅黑, sans-serif;">因房屋质量问题或生活习惯问题，导致邻里间投诉，我们会为及时介入，协调处理问题</span><span
                                                        style="font-size:10pt;font-family:微软雅黑, sans-serif;"></span>
                                                </p>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>三、</b><b>服务流程<span></span></b>
                                    </p>
                                    如遇到此类问题，请联系<span>10105288</span>客服请求协助。
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="19">
                                    <span class="i">
                                        Q19
                                    </span>
                                    租客入住期间信息变更服务
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal">
                                        <b>一、服务介绍<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        您在租住期间重要信息等发生了变更，我们会协助您更改。方便您能及时接收我们的通知，也方便您办理后续业务。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>二、</b><b>服务内容<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        变更信息主要包括您的电话、缴费银行卡账号、租住人数。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>三、服务流程<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        变更手机号码：关注恋家微信服务号<span>Uokohome</span>自助服务，选择修改手机号码。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        变更合同内其他信息：因为需要上门做变更手续， 需要提前三天预约<span>10105288</span>客服热线办理。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        &nbsp;
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>四、</b><b>特别提示<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1. 变更手机号码，如为即科用户的租客，需主动通知到即科金融公司客服。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        2. 缴费银行卡变更：合同期内银行卡变更只有一次机会。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        注：地方银行、邮政储蓄银行、交通银行、华夏银行、中信银行、农业发展银行及农业银行不支持代扣。<span>3. </span>租住人数变更：合同期内变更租住人数，恋家将会收取<span>200</span>元的变更手续费。<span></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="20">
                                    <span class="i">
                                        Q20
                                    </span>
                                    恋家在线账单服务
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal">
                                        <b>一、服务介绍<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        提供简洁清晰的账单方便查询，并且可以在线缴费，支持信用卡，方便快捷。同时可以查询历史账单，帮你记账。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>二、账单支付方式<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1. 微信账单<span>&nbsp; </span>
                                    </p>
                                    <p class="MsoNormal">
                                        2. 银联代扣<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>三、特别提示<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>① 在线交租金提示<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1.我们会在您的缴费日提前<span>3</span>天生成您的账单，请及时缴费。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        2.我们的管家是不接受现金的，无论多少金额。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        3.如您有多份合同，交租金时，请分清合同，避免出现交错租金的情况。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        4.您在线支付完租金后，可看到付款状态为‘付款成功’。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        5.如果有疑问请及时联系客服，不要透露您的个人信息给不确认身份的第三方。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        6.也许你又淘宝剁手了，也许各种节日你又给你的男<span>/</span>女朋友买礼物了。你没有做好你的经济规划，导致交租的时候你很为难，但是原谅我们无法体谅您，我们会按合同要求收取逾期违约金，违约金达到合同约定金额后，我们就不得不分手了……<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>② 在线交纳生活费用提示<span></span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1.生活费用是指您居住期间产生的水、电、燃气费，物业垃圾的费用。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        2.每发生一次客户入住和解约时，我们管家会记录当前示数，生成该期间的费用账单。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        3.默认按户分摊，如果您屋内有特殊分摊方式可线下相互协商。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        4.当您收到收费单位的缴费通知时，请及时联系您的服务管家，恋家可代您缴费，如果您选择自行缴费，请保留好缴费凭证（小票回执、发票）。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        5.当您发现家里的水表、电表、燃气表出现不走字等坏的迹象，请及时联系您的服务管家。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        6.也许你又淘宝剁手了，也许各种节日你又给你的男<span>/</span>女朋友买礼物了。你没有做好你的经济规划，导致交租的时候你很为难，但是原谅我们无法体谅您，我们会按合同要求收取逾期违约金，违约金达到合同约定金额后，我们就不得不分手了……<span></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="21">
                                    <span class="i">
                                        Q21
                                    </span>
                                    租客提前退租服务
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>一、</b><b>定义<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        是指合同未到期时，客户申请单方面解除合约退租的情形。<span>&nbsp;</span><b>&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>二、</b><b>流程<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        提前30天预约上门退租时间——管家上门办理退租手续<span>--</span>退租结算<span>--</span>提交财务审核<span>--</span>与租客确认<span>--</span>退款<b></b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>三、</b><b>特别提示<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1、在管家上门办理手续前，请您将私人物品整理好，特别在公共区域的物品，以免造成其他租客的困惑；<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        2、将房间还原成最初的布置，并打扫干净，为下一个租客提供清爽的环境，否则我们会收取相应的保洁费用；<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        3、为快速办理，请提前准备好退款的银行卡卡号、开户行、开户名信息。<b>&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>四、</b><b>缴费<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1、违约金：一个月房租<span>&nbsp;&nbsp; </span>
                                    </p>
                                    <p class="MsoNormal">
                                        2、未结算的水电气物业垃圾费<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        3、月付租客还包括剩余的月付手续费，享受年付折扣租客要补齐相应的费用<b> &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>五、</b><b>退费与时效<span> </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        退费内容：剩余押金、剩余服务费、剩余租金<span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span>
                                    </p>
                                    <p class="MsoNormal">
                                        退租手续完成后<span>10</span>个工作日内。<span></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="22">
                                    <span class="i">
                                        Q22
                                    </span>
                                    租客入住期间转租服务
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>一、</b><b>定义<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        转租是指租客<span>A </span>要退租，但是找租客<span>B </span>来租住他的房间。即原承租人在承租合同到期前提出解约并自行找到该房屋的新租客的行为为转租。新租客需按当前的政策，与恋家重新签订承租合同。<span>&nbsp; </span><b>&nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>二、</b><b>流程<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        租客有转租意向——自行寻找新租客——提前<span>3</span>天预约办理转租手续——管家上门办理转租手续，并与新租客签约<span>--</span>转租结算<span>--</span>提交财务审核<span>--</span>与租客确认<span>--</span>退款<span>&nbsp; </span><b>&nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>三、特别提示<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1、在管家上门办理手续前，请您将私人物品整理好，特别在公共区域的物品，以免造成其他租客的困惑；<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        2、将房间还原成最初的布置，并打扫干净，为新租客提供清爽的环境，否则我们会收取相应的保洁费用；<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        3、为快速办理，请提前准备好退款的银行卡卡号、开户行、开户名信息。；<b>&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        4、转租租客不能享受老租客推荐优惠。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <br/>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>四、缴费<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1、手续费：<span>200</span>元<span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span>
                                    </p>
                                    <p class="MsoNormal">
                                        2、未结算的水电气物业垃圾费<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        3、月付租客还包括剩余的月付手续费，享受年付折扣租客要补齐相应的费用<b> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>五、退费和时效<span> </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        退还押金、剩余服务费、剩余租金<span>&nbsp; &nbsp;&nbsp;&nbsp; </span>
                                    </p>
                                    <p class="MsoNormal">
                                        退款在转租手续办理后<span>7</span>个工作日内完成<b></b>
                                    </p>
                                    <p>
                                        <br/>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="23">
                                    <span class="i">
                                        Q23
                                    </span>
                                    租客入住期间换房服务
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>一、</b><b>定义<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        换房是指租客<span>A </span>从恋家“房间<span>X</span>”换到恋家“房间<span>Y</span>”，即承租期间，客户提出换到恋家的另外一间房子<b>&nbsp;
                                        &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>二、</b><b>流程<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        寻找新房源——签约新房源——提前7天预约换房手续——管家上门办理换房手续——换房结算<span>--</span>提交财务审核<span>--</span>与租客确认<span>--</span>退款<span>&nbsp; </span><b>&nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>三、特别提示<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1、在管家上门办理手续前，请您将私人物品整理好，特别在公共区域的物品，以免造成其他租客的困惑；<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        2、将房间还原成最初的布置，并打扫干净，为新租客提供清爽的环境，否则我们会收取相应的保洁费用；<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        3、为快速办理，请提前准备好退款的银行卡卡号、开户行、开户名信息。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>四、缴费<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        1、手续费：月租金<span>50%&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span>
                                    </p>
                                    <p class="MsoNormal">
                                        2、未结算的水电气物业垃圾费<b> &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        3、月付租客还包括剩余的月付手续费，享受年付折扣租客要补齐相应的费用<b> &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>五、退费和时效<span> &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        退还押金、剩余服务费、剩余租金<span>&nbsp; &nbsp;&nbsp;&nbsp; </span>
                                    </p>
                                    退款在换房手续完成后<span>7</span>个工作日内完成<span>&nbsp; &nbsp;&nbsp;</span>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="24">
                                    <span class="i">
                                        Q24
                                    </span>
                                    租客续租与到期退租服务
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        <b>一、</b><b>定义<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span></b>
                                    </p>
                                    <p class="MsoNormal">
                                        续租是指客户在合同到期后继续租住恋家房间的情形。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        到期退租时指客户在合同到期后办理退租的情形。<b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>二、流程<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <br/>
</span></b>确定是否续租——提前<span>3</span>天预约上门时间<span>---</span>管家上门办理续租手续<span>/</span>到期退租手续<b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;">
                                        三、<b>缴费与退费<span> &nbsp;&nbsp;&nbsp; <br/>
</span></b>1. 续租：缴纳上期水电气物业垃圾费及下期房租服务费账单。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        2. 到期退租：缴纳未结算的水电气物业垃圾费，退还押金，退款在退租手续完成后10个工作日内完成。<span></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp; </b>
                                    </p>
                                    <p class="MsoNormal">
                                        <b>四、特别提示<span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <br/>
</span></b>超期<span>5</span>天未办理退租<span>/</span>续租手续，恋家有权收回房屋<b></b>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="25">
                                    <span class="i">
                                        Q25
                                    </span>
                                    恋家承诺
                                </h4>
                                <div class="content">
                                    <p>
                                        1. 100%真实房源信息
                                    </p>
                                    <p>
                                        2.租住中房屋质量问题维修无责任换房&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;&nbsp;1）房屋质量问题承诺的范围&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;&nbsp; 卫生间防水问题导致不能正常使用，严重影响你的租住生活&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;&nbsp; 房屋墙面返潮发霉需维修，严重影响你的租住生活&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;&nbsp; 房屋内外墙渗水需维修，严重影响你的租住生活&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;&nbsp; 房屋窗户、玻璃自然破裂掉落需维修，严重影响你的租住生活&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;&nbsp; 室内空气质量问题，严重影响你的租住生活&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;&nbsp; 2)当我认为存在以上房屋质量问题后，该如何操作呢？后面需要我配合做什么？&nbsp; &nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;&nbsp; a：通过微信联系恋家微信服务号（uokoHome），或致电10105288，向客服人员提出遇到房屋质量问题，提出维修；
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;&nbsp; b：客服中心将会派维修单，维修师傅上门检查是否可以通过维修来解决问题，并给出维修方案；
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;&nbsp; c：如果您对维修方案表示接受，我们会根据维修方案尽快帮助您解决问题。
                                    </p>
                                    <p>
                                        3.保洁问题24小时内反馈可返工
                                    </p>
                                    <p>
                                        &nbsp; &nbsp;保洁后若发现未打扫干净，在保洁之日起24小时内拍照通过微信公众号发送给小蜜，我们会联系责任保洁公司核实情况，若事实成立，可要求保洁公司返工。
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="26">
                                    <span class="i">
                                        Q26
                                    </span>
                                    缴费须知
                                </h4>
                                <div class="content">
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;" align="left">
                                        <br/>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;" align="left">
                                        <!--[if !supportLists]-->一、<!--[endif]--> 付款方式<span></span>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        为满足大家各种需求，我们有多种付款方式，一定有最适合你的。<span></span>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        签约两年及以上为长租，付款方式有：月付、年付（<span>9.5</span>折）<span></span>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        签约不足一年为短租，付款方式有：季付、半年付（<span>9.8</span>折）<span></span>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        &nbsp;
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;" align="left">
                                        <!--[if !supportLists]--><b>二、</b><!--[endif]--><b>付款渠道<span></span></b>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;" align="left">
                                        <!--[if !supportLists]-->1.<!--[endif]-->
                                        恋家（成都地区租客）于<span>2016</span>年<span>2</span>月<span>22</span>日起全面转为线上支付渠道收款；<span></span>
                                    </p>
                                    <p class="MsoNormal" style="margin-left:0cm;text-indent:0cm;" align="left">
                                        <!--[if !supportLists]-->2.<!--[endif]-->
                                        通过银联代扣实现房租、管理费、水电气费的一卡代缴，让租客更贴近“现代化”，目前所有租客都积极参与我们的银联代扣项目，方便快捷。<span></span>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        &nbsp;
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        <b>三、缴费流程<span></span></b>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        1、请绑定恋家微信服务号（<span>uokohome</span>）或者注册登录我们的官方网站，在【账单】列表查看账单并进行支付（支持信用卡）<span></span>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        2、恋家提供银联代扣服务，定期从客户提供的银联卡上扣除房屋租金及房屋产生的其他费用<span></span>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        <b>&nbsp;</b>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        <b>四、费用明细<span></span></b>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        所有费用明细通过官网个人中心、微信服务号（<span>uokoHome</span>）、<span>APP</span>都可以查询。<span></span>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        &nbsp;
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        <b>五、特别提示<span></span></b>
                                    </p>
                                    <p class="MsoNormal" align="left">
                                        1、为了您的资金安全，在任何时间地点，请勿向任何非官方渠道获知的账号转账汇款，以免上当受骗。<span></span>
                                    </p>
                                    2、在<span>2016</span>年<span>2</span>月<span>22</span>日起，请勿转账至恋家支付宝和银行账户，感谢大家的支持！
                                    <p>
                                        <br/>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="media media-box">
                            <div class="media-body">
                                <h4 class="title" id="28">
                                    <span class="i">
                                        Q28
                                    </span>
                                    缴费方式
                                </h4>
                                <div class="content">
                                    <p class="p" style="margin-left:0pt;">
                                        <span style="line-height:1.5;">为满足大家各种需求，我们有多种付款方式，一定有适合你的。</span>
                                    </p>
                                    <p class="p" style="margin-left:0pt;">
                                        下面简单介绍，也可详询10105288。
                                    </p>
                                    <p class="p" style="margin-left:0pt;">
                                        另外，多项优惠的话只能任选其一，不能反复重叠的哟。
                                    </p>
                                    <p class="p" style="margin-left:0pt;">
                                        签约两年及以上为长租，付款方式有：月付、年付（9.5折）
                                    </p>
                                    <p class="p" style="margin-left:0pt;">
                                        1、大家都关心的月付问题，后面的Q&amp;A有专门为大家解答哟
                                    </p>
                                    <p class="p">
                                        2、银联代扣：实现房租、管理费、水电气费的一卡代缴，让租客更贴近“现代化”，目前所有租客都积极参与我们的银联代扣项目，方便快捷哦。
                                    </p>
                                    <p class="p">
                                        3、当然所有费用明细都能查到，不用担心数额不对的问题，若有疑问也不用着急，官网个人中心以及微信都有详细账单，也可通过客服或者管家查询核实。
                                    </p>
                                    <p class="p">
                                        <strong>恋家（成都地区租客）于2016年2月22日起全面启用线上支付渠道收款，届时同步停止使用转账渠道（包含支付宝和银行转账），更方便快捷的缴费方式看这里：</strong>
                                    </p>
                                    <p class="p">
                                        <strong>1、通过关注绑定恋家微信（uokohome）或者注册登录我们的官方网站，在【账单】列表查看账单并进行支付（支持信用卡）</strong>
                                    </p>
                                    <p class="p">
                                        <strong>2、恋家提供银联代扣服务，定期从客户提供的银联卡上扣除房屋租金及房屋产生的其他费用</strong>
                                    </p>
                                    <p class="p">
                                        <strong>特别提示：为了您的资金安全，在任何时间地点，请勿向任何非官方渠道获知的账号转账汇款，以免上当受骗。</strong>
                                    </p>
                                    <p class="p">
                                        <strong>在2016年2月22日后，请勿转账至恋家支付宝和银行账户，我公司将停止转账渠道的到账查询，感谢大家的支持！</strong>
                                    </p>
                                    <div>
                                        <strong><br/>
                                        </strong>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="bk30"></div>
            </div>
        </div>

    </div>


    <!--   <script type="text/javascript">
           window._bd_share_config = {
               common: {
                   "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdMiniList": !1, "bdPic": "",
                   "bdStyle": "0", "bdSize": "16", bdMini: 2, bdPopupOffsetLeft: -207
               },
               share: [{ "bdSize": 16 }]
           }
           with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = '/statics/baidu/api/js/share.js'];

       </script>-->
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

<script src="${pageContext.request.contextPath}/js/common.bundle.js"></script>
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

<script src="${pageContext.request.contextPath}/js/scroll.js"></script>
<script src="${pageContext.request.contextPath}/js/ScrollSpy.js"></script>
<script>
    $(function () {
        $('body').scrollspy({
            target: '#myaffix'
        });

        $('#myaffix').on('activate.bs.scrollspy', function (e) {
            console.log(e);
            $(e.target).parents("dd").show().siblings("dd").hide().end()
                .prev("dt").addClass("active").siblings("dt").removeClass("active");

        });

        // 初始化
        $(window).scrollTop(0);
        $('#fixed-nav').perfectScrollbar();

        function getWindowHeight() {
            var scrollmain = $('#fixed-nav');
            var dlheight = $(window).height() - $(".title").height() - 120;
            if ($(window).height() < 1700) {
                scrollmain.css({
                    "height": dlheight + "px",
                    "overflow-y": 'auto'
                })
            } else {
                scrollmain.css({
                    "height": 'auto'
                })
            }
            $('#fixed-nav').perfectScrollbar('update');
        }

        getWindowHeight();

        $(window).resize(function () {
            getWindowHeight();
        });


        // 展开事件
        $('#fixed-nav').find('dt').on('click', function () {
            $(this).toggleClass('active').next('dd').toggle();
            $(this).siblings('dt').removeClass('active').next('dd').hide();
            $('#fixed-nav').perfectScrollbar('update');
        });

        // 监听滚动
        spyNav($('#fixed-nav'));
    });

    function spyNav($nav) {
        var footertop = $("footer").offset().top, footerh = $("footer").outerHeight() + $("#page-bottom").outerHeight();
        var scrollbox = $nav.parent("#myaffix"), scrollmain = $nav;
        var scrollmainheight = $(window).height() - $(".title").height();

        $(window).on('scroll', function () {
            $('#fixed-nav').perfectScrollbar('update');

            var st = $(window).scrollTop();
            var winh = $(window).height();
            var doch = $(document).height();
            var target = $nav.find("li.active");

            if (!target.length) {
                target = $nav.find("li").first();
            }

            var gap = target.offset().top - scrollbox.offset().top;

            if (st > 120) {
                scrollbox.addClass("affix");
            }

            if (st < 120) {
                scrollbox.removeClass("affix").css({'top': 0});
                scrollmain.scrollTop(0);
            }

            if (st > footertop - winh) {
                scrollmain.css({'height': scrollmainheight - footerh});
                scrollmain.scrollTop(5000); // max num
            } else {
                scrollmain.css({'height': scrollmainheight});
            }

            if (gap > scrollmainheight) {
                scrollmain.scrollTop(scrollmain.scrollTop() + gap - 1 / 2 * scrollmainheight)
            }

            if (gap < 50) {   // min num
                scrollmain.scrollTop(gap - 1 / 2 * scrollmainheight)
            }
        })
    }
</script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/ntkfstat.js" charset="utf-8"></script>
</body>
</html>
