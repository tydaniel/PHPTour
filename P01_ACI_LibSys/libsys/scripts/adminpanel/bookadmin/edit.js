function uploadOneFile(inputId, w, h, iscallback) {
    if (!w)
        w = screen.width - 4;
    if (!h)
        h = screen.height - 95;
    if (!iscallback)
        iscallback = 0;
    var window_url = SITE_URL + 'adminpanel//bookadmin/upload/';
    $.extDialogFrame(window_url + '1/picture_show/' + inputId + '/' + iscallback, {model: true, width: w, height: h, title: '请上传...', buttons: null});
}

function getPicture_show(v, s, w, h) {
    $("#picture_show").val(v);
    $("#picture_show_SRC").attr("src", SITE_URL + BOOK_PIC + v);
    $("#dialog").dialog();
    $("#dialog").dialog("close");
}

define(function (require) {
    var $ = require('jquery');
    var aci = require('aci');
    require('bootstrap');
    require('bootstrapValidator');
    require('message');
    require('jquery-ui');
    require('jquery-ui-dialog-extend');
    require('datetimepicker');

    $(function () {

        $("#picture_show_a").click(function () {
            uploadOneFile('picture_show', 550, 350, 1)
        });
        $("#picture_show_b").click(function () {
            uploadOneFile('picture_show', 550, 350, 1)
        });
        $('#validateform').bootstrapValidator({
            message: '输入框不能为空',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                book_name: {
                    validators: {
                        notEmpty: {
                            message: '请输入 图书名'
                        }
                    }
                },

                book_author: {
                    validators: {
                        notEmpty: {
                            message: '请输入 作者'
                        }
                    }
                },

                book_publishing: {
                    validators: {
                        notEmpty: {
                            message: '请输入 出版社'
                        }
                    }
                },

                book_class: {
                    validators: {
                        notEmpty: {
                            message: '请输入 图书种类'
                        }
                    }
                },

                book_no: {
                    validators: {
                        notEmpty: {
                            message: '请输入 ISBN'
                        }
                    }
                },

                book_total: {
                    validators: {
                        notEmpty: {
                            message: '请输入 库存总量'
                        }
                    }
                },

            }
        }).on('success.form.bv', function (e) {

            e.preventDefault();
            $("#dosubmit").attr("disabled", "disabled");

            $.scojs_message("正在保存，请稍等...", $.scojs_message.TYPE_ERROR);
            $.ajax({
                type: "POST",
                url: is_edit ? SITE_URL + "adminpanel/bookadmin/edit/" + id : SITE_URL + "adminpanel/bookadmin/add/",
                data: $("#validateform").serialize(),
                success: function (response) {
                    var dataObj = jQuery.parseJSON(response);
                    if (dataObj.status)
                    {
                        $.scojs_message('操作成功,3秒后将返回列表页...', $.scojs_message.TYPE_OK);
                        aci.GoUrl(SITE_URL + 'adminpanel/bookadmin/', 1);
                    } else
                    {
                        $.scojs_message(dataObj.tips, $.scojs_message.TYPE_ERROR);
                        $("#dosubmit").removeAttr("disabled");
                    }
                },
                error: function (request, status, error) {
                    $.scojs_message(request.responseText, $.scojs_message.TYPE_ERROR);
                    $("#dosubmit").removeAttr("disabled");
                }
            });

        }).on('error.form.bv', function (e) {
            $.scojs_message('带*号不能为空', $.scojs_message.TYPE_ERROR);
            $("#dosubmit").removeAttr("disabled");
        });

    });
});
