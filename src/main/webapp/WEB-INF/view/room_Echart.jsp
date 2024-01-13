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
    <title>恋家统计 · 恋家</title>

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
                <h3 class="right-title">数据统计</h3>
            </div>

            <div class="avatar-upload">
                <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                <div id="main3" style="width: 1000px;height:500px;"></div>

                <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                <div id="main" style="width: 800px;height:500px;"></div>

                <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                <div id="main1" style="width: 800px;height:500px;"></div>

            </div>

        </div>

    </div>


</div>
<script src="${pageContext.request.contextPath}/js/data.js"></script>
<script src="${pageContext.request.contextPath}/js/address.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
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
<script type="text/javascript">

    $(function () {
        $.ajax({
            type: 'GET',
            cache: false,
            url: '${pageContext.request.contextPath}/count/findTime',
            success: function (result) {
                if (result != null) {
                    console.log(result);
                    // 基于准备好的dom，初始化echarts实例
                    var myChart3 = echarts.init(document.getElementById('main3'));
                    option3 = {
                        title: {
                            text: '发布房屋数量/月份'
                        },
                        xAxis: {
                            type: 'category',
                            data: result.name
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [{
                            data: result.value,
                            type: 'line'
                        }]
                    };

                    // 使用刚指定的配置项和数据显示图表。
                    myChart3.setOption(option3);

                } else {
                    alert("数据正在维修中！请联系管理员");
                }
            }
        });
    });

    // 基于准备好的dom，初始化echarts实例
    var myChart1 = echarts.init(document.getElementById('main1'));
    option1 = {
        title: {
            text: '折线图堆叠'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['邮件营销', '联盟广告', '视频广告', '直接访问', '搜索引擎']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                name: '浏览总量',
                type: 'line',
                stack: '总量',
                data: [5, 6, 4, 7, 9, 11, 10]
            },
            {
                name: '发布房屋量',
                type: 'line',
                stack: '总量',
                data: [2, 0, 4, 1, 8, 9, 5]
            },
            {
                name: '发布求租',
                type: 'line',
                stack: '总量',
                data: [5, 8, 10, 6, 7, 8, 4]
            }
        ]
    };
    // 使用刚指定的配置项和数据显示图表。
    myChart1.setOption(option1);


</script>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var data = genData(50);

    option = {
        title: {
            text: '同名数量统计',
            subtext: '纯属虚构',
            left: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            right: 10,
            top: 20,
            bottom: 20,
            data: data.legendData,

            selected: data.selected
        },
        series: [
            {
                name: '姓名',
                type: 'pie',
                radius: '55%',
                center: ['40%', '50%'],
                data: data.seriesData,
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };


    function genData(count) {
        var nameList = [
            '赵', '钱', '孙', '李', '周', '吴', '郑', '王', '冯', '陈', '褚', '卫', '蒋', '沈', '韩', '杨', '朱', '秦', '尤', '许', '何', '吕', '施', '张', '孔', '曹', '严', '华', '金', '魏', '陶', '姜', '戚', '谢', '邹', '喻', '柏', '水', '窦', '章', '云', '苏', '潘', '葛', '奚', '范', '彭', '郎', '鲁', '韦', '昌', '马', '苗', '凤', '花', '方', '俞', '任', '袁', '柳', '酆', '鲍', '史', '唐', '费', '廉', '岑', '薛', '雷', '贺', '倪', '汤', '滕', '殷', '罗', '毕', '郝', '邬', '安', '常', '乐', '于', '时', '傅', '皮', '卞', '齐', '康', '伍', '余', '元', '卜', '顾', '孟', '平', '黄', '和', '穆', '萧', '尹', '姚', '邵', '湛', '汪', '祁', '毛', '禹', '狄', '米', '贝', '明', '臧', '计', '伏', '成', '戴', '谈', '宋', '茅', '庞', '熊', '纪', '舒', '屈', '项', '祝', '董', '梁', '杜', '阮', '蓝', '闵', '席', '季', '麻', '强', '贾', '路', '娄', '危'
        ];
        var legendData = [];
        var seriesData = [];
        var selected = {};
        for (var i = 0; i < count; i++) {
            name1 = Math.random() > 0.65
                ? makeWord(4, 1) + '·' + makeWord(3, 0)
                : makeWord(2, 1);
            legendData.push(name1);
            seriesData.push({
                name: name1,
                value: Math.round(Math.random() * 100000)
            });
            selected[name1] = i < 6;
        }

        return {
            legendData: legendData,
            seriesData: seriesData,
            selected: selected
        };

        function makeWord(max, min) {
            var nameLen = Math.ceil(Math.random() * max + min);
            var name = [];
            for (var i = 0; i < nameLen; i++) {
                name.push(nameList[Math.round(Math.random() * nameList.length - 1)]);
            }
            return name.join('');
        }
    }

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

</body>
</html>