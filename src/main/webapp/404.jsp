<%@page contentType="text/html" pageEncoding="UTF-8"%><!--
 * CoreUI - Open Source Bootstrap Admin Template
 * @version v1.0.0-alpha.2
 * @link http://coreui.io
 * Copyright (c) 2016 creativeLabs Łukasz Holeczek
 * @license MIT
 -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="pay4buy.ir"/>
        <meta name="author" content="pay4buy"/>
        <title>admin.jbpms.ir</title>
        <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/assets/img/favicon.ico" />
    <!-- Icons -->
    <link href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css" rel="stylesheet">
    <!-- Main styles for this application -->
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">
</head>

<body class="" dir="rtl">
    <div class="container">
        <div class="row">
            <div class="col-md-5 m-x-auto pull-xs-none vamiddle">
                <div class="clearfix">
                    <h1 class="pull-left display-3 m-r-2">404</h1>
                    <h4 class="p-t-1">خطا رخ داده است</h4>
                    <p class="text-muted">
                    اینترنت خود را چک کنید و مجدد تلاش کنید.
                    </p>
                </div>
                <div class="input-prepend input-group">
                    <span class="input-group-btn">
                        <a href="http://admin.jbpms.ir" class="btn btn-info" >admin.jbpms.ir</a>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap and necessary plugins -->
    <script src="${pageContext.request.contextPath}/assets/js/libs/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/libs/tether.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/libs/bootstrap.min.js"></script>
    <script>
        function verticalAlignMiddle()
        {
            var bodyHeight = $(window).height();
            var formHeight = $('.vamiddle').height();
            var marginTop = (bodyHeight / 2) - (formHeight / 2);
            if (marginTop > 0)
            {
                $('.vamiddle').css('margin-top', marginTop);
            }
        }
        $(document).ready(function()
        {
            verticalAlignMiddle();
        });
        $(window).bind('resize', verticalAlignMiddle);
    </script>
    <!-- Grunt watch plugin -->
    <script src="//localhost:35729/livereload.js"></script>
</body>

</html>
