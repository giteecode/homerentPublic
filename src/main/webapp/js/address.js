var addrShow = $('addr-show');
var provinceValue = "";
var cityValue = "";
var areaValue = "";

//定义工具类
var tools = {
    each_fun: function (num, total, callback) {
        for (var i = num; i < total; i++) {
            callback(i)
        }
    }
};
//获取DOM节点
var oDom = {
    province: document.getElementById('province'),
    city: document.getElementById('city'),
    area: document.getElementById('area')
};

//初始化
function init() {
    var provinceLen = addressData.length;
    tools.each_fun(0, provinceLen, function (i) {
        var opt = document.createElement('option');
        opt.text = addressData[i].name;
        opt.value = addressData[i].name;
        oDom.province.appendChild(opt);
    })
}

//省份选择事件
function provinceChange() {
    oDom.city.innerHTML = '<option value="0">请选择</option>';//清空城市下拉框数据
    oDom.area.innerHTML = '<option value="0">请选择</option>';//清空地区下拉框数据
    var index = oDom.province.selectedIndex;//获取选中省份option下标
    var province = oDom.province.options[index].value;//获取选中省份
    var provinceLen = addressData.length;//有多少个省份
    tools.each_fun(0, provinceLen, function (i) {
        if (addressData[i].name == province) {
            var cityLen = addressData[i].city.length;
            tools.each_fun(0, cityLen, function (j) {
                var opt = document.createElement('option');
                opt.text = addressData[i].city[j].name;
                opt.value = addressData[i].city[j].name;
                oDom.city.appendChild(opt);
                provinceValue = addressData[i].name;
                addrShow.value = provinceValue;
                $("#re_roomAddress").val(addrShow.value);
                console.log(provinceValue);
            })
        }
    })
}

//城市选择事件
function cityChange() {
    oDom.area.innerHTML = '<option value="0">请选择</option>';//清空地区下拉框数据
    var pIndex = oDom.province.selectedIndex;//获取选中省份option下标
    var province = oDom.province.options[pIndex].value;//获取选中省份
    var cIndex = oDom.city.selectedIndex;//获取选中城市option下标
    var city = oDom.city.options[cIndex].value;//获取选中城市
    var provinceLen = addressData.length;
    tools.each_fun(0, provinceLen, function (i) {
        if (addressData[i].name == province) {
            var cityLen = addressData[i].city.length;
            tools.each_fun(0, cityLen, function (j) {
                if (addressData[i].city[j].name == city) {
                    // cityValue = addressData[i].city[j].name;
                    var areaLen = addressData[i].city[j].area.length;
                    tools.each_fun(0, areaLen, function (k) {
                        var opt = document.createElement('option');
                        opt.text = addressData[i].city[j].area[k];
                        opt.value = addressData[i].city[j].area[k];
                        oDom.area.appendChild(opt);
                    })
                    cityValue = $("#city").find("option:selected").text();
                    addrShow.value += '-' + cityValue;
                    $("#re_roomAddress").val(addrShow.value);
                    console.log(addrShow.value);
                }
            })
        }
    })
}

//区县选择事件
function areaChange() {
    areaValue = $("#area").find("option:selected").text();
    addrShow.value += '-' + areaValue;
    $("#re_roomAddress").val(addrShow.value);
    console.log(addrShow.value);
}

//文档加载完成初始化
window.onload = function (ev) {
    init();
}