$(function () {

    $("#uploadAvatar").on("change", function () {
        uploadFile($(this), "uploadAvatar");
    })
    $("#uploadCertUserImage").on("change", function () {
        uploadFile($(this), "uploadCertUserImage");
    })
    $("#uploadCertImage").on("change", function () {
        uploadFile($(this), "uploadCertImage");
    })
})


function uploadFile(file, type) {
    //获取附件名
    var pos = file.val().lastIndexOf("\\");
    var fileName = file.val().substring(pos + 1);
    //获取文件后缀名
    var HzName = /\.[^\.]+/.exec(fileName);

    if (!(HzName == ".jpg" || HzName == ".JPG" || HzName == ".jpeg" || HzName == ".JPEG" || HzName == ".png" || HzName == ".PNG" || HzName == ".gif" || HzName == ".GIF")) {
        //$("#showMsg span").append("上传的附件需后缀为jpg/jpeg/png/gif的图片哦")
        alert("上传的附件需后缀为jpg/jpeg/png/gif的图片哦");
        return;
    }
    else {
        var filesize = file[0].files[0].size
        var maxsize = 1 * 1024 * 1024;//20M  
        if (filesize > maxsize) {
            //$("#showMsg span").append("上传的图片不能大于2M哦！")
            alert("上传的图片不能大于1M哦！");
            return;
        }

        switch (type) {
            case "uploadAvatar":
                ajaxFileUpload("uploadAvatar", "uploadAvatar", "Avatar", "AvatarKey", type);
                break;
            case "uploadCertUserImage":
                ajaxFileUpload("uploadCertUserImage", "uploadCertUserImage", "CertUserImage", "CertUserImageKey", type);
                break;
            case "uploadCertImage":
                ajaxFileUpload("uploadCertImage", "uploadCertImage", "", "", type);
                break;
        }


    }
}

//ajax图片附件上传
function ajaxFileUpload(url, fileElementId, imgSrc, imgKey, type) {
    $.ajaxFileUpload
    (
        {
            url: '/Home/' + url, //用于文件上传的服务器端请求地址
            secureuri: false, //一般设置为false
            fileElementId: fileElementId, //文件上传控件的id属性
            dataType: 'Json', //返回值类型 一般设置为json
            success: function (data, status)  //服务器成功响应处理函数
            {
                if (typeof (data.error) != 'undefined') {
                    return;
                }
                if (fileElementId != "uploadCertImage") {
                    //保存图片路径
                    $("#" + imgSrc).attr("src", data);
                    $("#" + imgKey).val(data);
                    $("#" + imgSrc).parent().append("<a class=\"btn btn-info btn-sm cus del-sample\" onclick=\"uploadCertImageDelect();\"><i class=\"glyphicon glyphicon-trash\"></i>删除</a>");
                }
                else {
                    if ($("#CertFrontImageKey").attr("isUpload") == 0) {
                        $("#CertFrontImage").attr("src", data);
                        $("#CertFrontImageKey").val(data);
                        $("#CertFrontImageKey").attr("isUpload", 1)
                        $("#CertFrontImage").parent().append("<a class=\"btn btn-info btn-sm cus del-sample\" onclick=\"CertFrontImageDelect();\"><i class=\"glyphicon glyphicon-trash\"></i>删除</a>");
                    }
                    else if ($("#CertBackImageKey").attr("isUpload") == 0) {
                        $("#CertBackImage").attr("src", data);
                        $("#CertBackImageKey").val(data);
                        $("#CertBackImageKey").attr("isUpload", 1)
                        $("#CertBackImage").parent().append("<a class=\"btn btn-info btn-sm cus del-sample\" onclick=\"CertBackImageDelect();\"><i class=\"glyphicon glyphicon-trash\"></i>删除</a>");
                    }
                    else {
                        $("#CertFrontImage").attr("src", data);
                        $("#CertFrontImageKey").val(data);
                        $("#CertBackImageKey").attr("isUpload", 0)
                        $("#CertFrontImage").parent().append("<a class=\"btn btn-info btn-sm cus del-sample\" onclick=\"CertFrontImageDelect();\"><i class=\"glyphicon glyphicon-trash\"></i>删除</a>");
                    }

                }
            }
        }
    )
    $("#" + fileElementId).on("change", function () {
        uploadFile($(this), type);
    });
}


function CertFrontImageDelect() {
    $("#CertFrontImage").attr("src", "/Content/img/fake_idcard2.png");
    $("#CertFrontImageKey").val("");
    $("#CertFrontImageKey").attr("isUpload", 0)
}

function CertBackImageDelect() {
    $("#CertBackImage").attr("src", "/Content/img/fake_idcard3.png");
    $("#CertBackImageKey").val("");
    $("#CertBackImageKey").attr("isUpload", 0)
}

function uploadCertImageDelect() {
    $("#CertUserImage").attr("src", "/Content/img/fake_idcard1.png");
    $("#CertUserImageKey").val("");
}