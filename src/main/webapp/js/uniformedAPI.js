/**
 * 寰堝鎺ュ彛缁熶竴鍒板叏骞冲彴璋冪敤
 * 鍦ㄥ叾浠栧煙涓嬭皟鐢ㄩ渶瑕佽€冭檻璺ㄥ煙璁剧疆
 */
var UniformedAPI = function () {
    //绔欑偣鐗瑰緛瀛�
    var SITE_HOST = [
        'www',//瀹樼綉
        'm',//m绔�
        'passport',//sso鐧诲綍
        'hh',//鍚堜紮浜�(鏂�)
        'service',//鍚堜紮浜�(鏃�)
        'yk',//鏈嶅姟鍟�(鏂�)
        'op',//BOSS鍚庡彴(鏂�)
    ]

    function getRuntimeEnv() {
        var host = location.host;
        return /\-local/.test(host) ? 'local' : /\d+\.test/i.test(host) ? 'test' : /\.pre\./.test(host) ? 'pre' : 'prod';
    }

    function getRuntimeHost() {
        var env = getRuntimeEnv();
        var protocol = location.protocol;
        var envSegment = {
            local: function (h) {
                return protocol + '//' + h + '-local.uoko.com';
            },
            pre: function (h) {
                return protocol + '//' + h + '.pre.uoko.com';
            },
            test: function (h) {
                var match = location.host.match(/\.\d+\.testuoko.com/i);
                return protocol + '//' + h + match[0];
            },
            prod: function (h) {
                return protocol + '//' + h + '.uoko.com';
            }
        };

        return SITE_HOST.reduce(function (obj, cur) {
            obj[cur] = envSegment[env](cur);

            return obj;
        }, {});
    }

    // 娉ㄥ唽鐧诲綍鏃堕獙璇佺爜鐩稿叧鎺ュ彛
    function getSmsVerifycodeApi(hasPhone) {
        var api;
        var host = getRuntimeHost().www;

        if (hasPhone) {
            api = {
                token: host + '/api/sms-phone-verifycode-token',
                verify: host + '/api/sms-phone-verifycode',
                graph: host + '/api/sms-phone-verifycode-image'
            }
        } else {
            api = {
                token: host + '/api/sms-verifycode-token',
                verify: host + '/api/sms-verifycode',
                graph: host + '/api/sms-verifycode-image'
            }
        }

        return api;
    }

    return {
        getRuntimeEnv: getRuntimeEnv,
        getRuntimeHost: getRuntimeHost,
        getSmsVerifycodeApi: getSmsVerifycodeApi,
    }

}();