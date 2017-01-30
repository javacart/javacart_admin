$(document).ready(function() {
var options = {
        beforeSend : function() {
                $("#progressbox").show();
                // clear everything
                $("#progressbar").width('0%');
                $("#message").empty();
                $("#percent").html("0%");
        },
        uploadProgress : function(event, position, total, percentComplete) {
                $("#progressbar").width(percentComplete + '%');
                $("#percent").html(percentComplete + '%');

                // change message text to red after 50%
                if (percentComplete > 50) {
                $("#message").html("<font color='red'>در حال آپلود فایل...</font>");
                }
        },
        success : function() {
                $("#progressbar").width('100%');
                $("#percent").html('100%');
        },
        complete : function(response) {
        $("#message").html("<font color='blue'>فایل با موفقیت به دیتابیس شما منتقل شد.</font>");
         location.reload();
        },
        error : function() {
        $("#message").html("<font color='red'> متاسفانه خطایی رخ داده است.با مدیریت هماهنگ کنید.</font>");
        }
};
$("#UploadForm").ajaxForm(options);
});