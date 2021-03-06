<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
    request.setAttribute("page", "products");
    //javax.servlet.http.HttpSession session = request.getSession();

    Boolean log = (Boolean) session.getAttribute("login");
    if (null == log || !log) {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
    
%>

<t:generic>
    
    <jsp:body>
          <div class="container-fluid">
            <div class="animated fadeIn">
                <div class="card" id="new">
                    <div class="card-header">20 New Icons in 4.5</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bluetooth fa-lg m-t-2"></i>
                                <br>bluetooth
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bluetooth-b fa-lg m-t-2"></i>
                                <br>bluetooth-b
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-codiepie fa-lg m-t-2"></i>
                                <br>codiepie
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-credit-card-alt fa-lg m-t-2"></i>
                                <br>credit-card-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-edge fa-lg m-t-2"></i>
                                <br>edge
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-fort-awesome fa-lg m-t-2"></i>
                                <br>fort-awesome
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hashtag fa-lg m-t-2"></i>
                                <br>hashtag
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mixcloud fa-lg m-t-2"></i>
                                <br>mixcloud
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-modx fa-lg m-t-2"></i>
                                <br>modx
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pause-circle fa-lg m-t-2"></i>
                                <br>pause-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pause-circle-o fa-lg m-t-2"></i>
                                <br>pause-circle-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-percent fa-lg m-t-2"></i>
                                <br>percent
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-product-hunt fa-lg m-t-2"></i>
                                <br>product-hunt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-reddit-alien fa-lg m-t-2"></i>
                                <br>reddit-alien
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-scribd fa-lg m-t-2"></i>
                                <br>scribd
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-shopping-bag fa-lg m-t-2"></i>
                                <br>shopping-bag
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-shopping-basket fa-lg m-t-2"></i>
                                <br>shopping-basket
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-stop-circle fa-lg m-t-2"></i>
                                <br>stop-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-stop-circle-o fa-lg m-t-2"></i>
                                <br>stop-circle-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-usb fa-lg m-t-2"></i>
                                <br>usb
                            </div>

                        </div>

                    </div>
                </div>

                <div class="card" id="web-application">
                    <div class="card-header">Web Application Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-adjust fa-lg m-t-2"></i>
                                <br>adjust
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-anchor fa-lg m-t-2"></i>
                                <br>anchor
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-archive fa-lg m-t-2"></i>
                                <br>archive
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-area-chart fa-lg m-t-2"></i>
                                <br>area-chart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrows fa-lg m-t-2"></i>
                                <br>arrows
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrows-h fa-lg m-t-2"></i>
                                <br>arrows-h
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrows-v fa-lg m-t-2"></i>
                                <br>arrows-v
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-asterisk fa-lg m-t-2"></i>
                                <br>asterisk
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-at fa-lg m-t-2"></i>
                                <br>at
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-automobile fa-lg m-t-2"></i>
                                <br>automobile
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-balance-scale fa-lg m-t-2"></i>
                                <br>balance-scale
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ban fa-lg m-t-2"></i>
                                <br>ban
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bank fa-lg m-t-2"></i>
                                <br>bank
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bar-chart fa-lg m-t-2"></i>
                                <br>bar-chart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bar-chart-o fa-lg m-t-2"></i>
                                <br>bar-chart-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-barcode fa-lg m-t-2"></i>
                                <br>barcode
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bars fa-lg m-t-2"></i>
                                <br>bars
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-battery-0 fa-lg m-t-2"></i>
                                <br>battery-0
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-battery-1 fa-lg m-t-2"></i>
                                <br>battery-1
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-battery-2 fa-lg m-t-2"></i>
                                <br>battery-2
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-battery-3 fa-lg m-t-2"></i>
                                <br>battery-3
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-battery-4 fa-lg m-t-2"></i>
                                <br>battery-4
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-battery-empty fa-lg m-t-2"></i>
                                <br>battery-empty
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-battery-full fa-lg m-t-2"></i>
                                <br>battery-full
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-battery-half fa-lg m-t-2"></i>
                                <br>battery-half
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-battery-quarter fa-lg m-t-2"></i>
                                <br>battery-quarter
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-battery-three-quarters fa-lg m-t-2"></i>
                                <br>battery-three-quarters
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bed fa-lg m-t-2"></i>
                                <br>bed
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-beer fa-lg m-t-2"></i>
                                <br>beer
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bell fa-lg m-t-2"></i>
                                <br>bell
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bell-o fa-lg m-t-2"></i>
                                <br>bell-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bell-slash fa-lg m-t-2"></i>
                                <br>bell-slash
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bell-slash-o fa-lg m-t-2"></i>
                                <br>bell-slash-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bicycle fa-lg m-t-2"></i>
                                <br>bicycle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-binoculars fa-lg m-t-2"></i>
                                <br>binoculars
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-birthday-cake fa-lg m-t-2"></i>
                                <br>birthday-cake
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bluetooth fa-lg m-t-2"></i>
                                <br>bluetooth
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bluetooth-b fa-lg m-t-2"></i>
                                <br>bluetooth-b
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bolt fa-lg m-t-2"></i>
                                <br>bolt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bomb fa-lg m-t-2"></i>
                                <br>bomb
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-book fa-lg m-t-2"></i>
                                <br>book
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bookmark fa-lg m-t-2"></i>
                                <br>bookmark
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bookmark-o fa-lg m-t-2"></i>
                                <br>bookmark-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-briefcase fa-lg m-t-2"></i>
                                <br>briefcase
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bug fa-lg m-t-2"></i>
                                <br>bug
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-building fa-lg m-t-2"></i>
                                <br>building
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-building-o fa-lg m-t-2"></i>
                                <br>building-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bullhorn fa-lg m-t-2"></i>
                                <br>bullhorn
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bullseye fa-lg m-t-2"></i>
                                <br>bullseye
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bus fa-lg m-t-2"></i>
                                <br>bus
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cab fa-lg m-t-2"></i>
                                <br>cab
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-calculator fa-lg m-t-2"></i>
                                <br>calculator
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-calendar fa-lg m-t-2"></i>
                                <br>calendar
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-calendar-check-o fa-lg m-t-2"></i>
                                <br>calendar-check-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-calendar-minus-o fa-lg m-t-2"></i>
                                <br>calendar-minus-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-calendar-o fa-lg m-t-2"></i>
                                <br>calendar-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-calendar-plus-o fa-lg m-t-2"></i>
                                <br>calendar-plus-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-calendar-times-o fa-lg m-t-2"></i>
                                <br>calendar-times-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-camera fa-lg m-t-2"></i>
                                <br>camera
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-camera-retro fa-lg m-t-2"></i>
                                <br>camera-retro
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-car fa-lg m-t-2"></i>
                                <br>car
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-square-o-down fa-lg m-t-2"></i>
                                <br>caret-square-o-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-square-o-left fa-lg m-t-2"></i>
                                <br>caret-square-o-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-square-o-right fa-lg m-t-2"></i>
                                <br>caret-square-o-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-square-o-up fa-lg m-t-2"></i>
                                <br>caret-square-o-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cart-arrow-down fa-lg m-t-2"></i>
                                <br>cart-arrow-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cart-plus fa-lg m-t-2"></i>
                                <br>cart-plus
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc fa-lg m-t-2"></i>
                                <br>cc
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-certificate fa-lg m-t-2"></i>
                                <br>certificate
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-check fa-lg m-t-2"></i>
                                <br>check
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-check-circle fa-lg m-t-2"></i>
                                <br>check-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-check-circle-o fa-lg m-t-2"></i>
                                <br>check-circle-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-check-square fa-lg m-t-2"></i>
                                <br>check-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-check-square-o fa-lg m-t-2"></i>
                                <br>check-square-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-child fa-lg m-t-2"></i>
                                <br>child
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-circle fa-lg m-t-2"></i>
                                <br>circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-circle-o fa-lg m-t-2"></i>
                                <br>circle-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-circle-o-notch fa-lg m-t-2"></i>
                                <br>circle-o-notch
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-circle-thin fa-lg m-t-2"></i>
                                <br>circle-thin
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-clock-o fa-lg m-t-2"></i>
                                <br>clock-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-clone fa-lg m-t-2"></i>
                                <br>clone
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-close fa-lg m-t-2"></i>
                                <br>close
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cloud fa-lg m-t-2"></i>
                                <br>cloud
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cloud-download fa-lg m-t-2"></i>
                                <br>cloud-download
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cloud-upload fa-lg m-t-2"></i>
                                <br>cloud-upload
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-code fa-lg m-t-2"></i>
                                <br>code
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-code-fork fa-lg m-t-2"></i>
                                <br>code-fork
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-coffee fa-lg m-t-2"></i>
                                <br>coffee
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cog fa-lg m-t-2"></i>
                                <br>cog
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cogs fa-lg m-t-2"></i>
                                <br>cogs
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-comment fa-lg m-t-2"></i>
                                <br>comment
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-comment-o fa-lg m-t-2"></i>
                                <br>comment-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-commenting fa-lg m-t-2"></i>
                                <br>commenting
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-commenting-o fa-lg m-t-2"></i>
                                <br>commenting-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-comments fa-lg m-t-2"></i>
                                <br>comments
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-comments-o fa-lg m-t-2"></i>
                                <br>comments-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-compass fa-lg m-t-2"></i>
                                <br>compass
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-copyright fa-lg m-t-2"></i>
                                <br>copyright
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-creative-commons fa-lg m-t-2"></i>
                                <br>creative-commons
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-credit-card fa-lg m-t-2"></i>
                                <br>credit-card
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-credit-card-alt fa-lg m-t-2"></i>
                                <br>credit-card-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-crop fa-lg m-t-2"></i>
                                <br>crop
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-crosshairs fa-lg m-t-2"></i>
                                <br>crosshairs
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cube fa-lg m-t-2"></i>
                                <br>cube
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cubes fa-lg m-t-2"></i>
                                <br>cubes
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cutlery fa-lg m-t-2"></i>
                                <br>cutlery
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-dashboard fa-lg m-t-2"></i>
                                <br>dashboard
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-database fa-lg m-t-2"></i>
                                <br>database
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-desktop fa-lg m-t-2"></i>
                                <br>desktop
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-diamond fa-lg m-t-2"></i>
                                <br>diamond
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-dot-circle-o fa-lg m-t-2"></i>
                                <br>dot-circle-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-download fa-lg m-t-2"></i>
                                <br>download
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-edit fa-lg m-t-2"></i>
                                <br>edit
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ellipsis-h fa-lg m-t-2"></i>
                                <br>ellipsis-h
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ellipsis-v fa-lg m-t-2"></i>
                                <br>ellipsis-v
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-envelope fa-lg m-t-2"></i>
                                <br>envelope
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-envelope-o fa-lg m-t-2"></i>
                                <br>envelope-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-envelope-square fa-lg m-t-2"></i>
                                <br>envelope-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-eraser fa-lg m-t-2"></i>
                                <br>eraser
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-exchange fa-lg m-t-2"></i>
                                <br>exchange
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-exclamation fa-lg m-t-2"></i>
                                <br>exclamation
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-exclamation-circle fa-lg m-t-2"></i>
                                <br>exclamation-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-exclamation-triangle fa-lg m-t-2"></i>
                                <br>exclamation-triangle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-external-link fa-lg m-t-2"></i>
                                <br>external-link
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-external-link-square fa-lg m-t-2"></i>
                                <br>external-link-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-eye fa-lg m-t-2"></i>
                                <br>eye
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-eye-slash fa-lg m-t-2"></i>
                                <br>eye-slash
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-eyedropper fa-lg m-t-2"></i>
                                <br>eyedropper
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-fax fa-lg m-t-2"></i>
                                <br>fax
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-feed fa-lg m-t-2"></i>
                                <br>feed
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-female fa-lg m-t-2"></i>
                                <br>female
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-fighter-jet fa-lg m-t-2"></i>
                                <br>fighter-jet
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-archive-o fa-lg m-t-2"></i>
                                <br>file-archive-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-audio-o fa-lg m-t-2"></i>
                                <br>file-audio-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-code-o fa-lg m-t-2"></i>
                                <br>file-code-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-excel-o fa-lg m-t-2"></i>
                                <br>file-excel-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-image-o fa-lg m-t-2"></i>
                                <br>file-image-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-movie-o fa-lg m-t-2"></i>
                                <br>file-movie-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-pdf-o fa-lg m-t-2"></i>
                                <br>file-pdf-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-photo-o fa-lg m-t-2"></i>
                                <br>file-photo-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-picture-o fa-lg m-t-2"></i>
                                <br>file-picture-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-powerpoint-o fa-lg m-t-2"></i>
                                <br>file-powerpoint-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-sound-o fa-lg m-t-2"></i>
                                <br>file-sound-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-video-o fa-lg m-t-2"></i>
                                <br>file-video-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-word-o fa-lg m-t-2"></i>
                                <br>file-word-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-zip-o fa-lg m-t-2"></i>
                                <br>file-zip-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-film fa-lg m-t-2"></i>
                                <br>film
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-filter fa-lg m-t-2"></i>
                                <br>filter
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-fire fa-lg m-t-2"></i>
                                <br>fire
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-fire-extinguisher fa-lg m-t-2"></i>
                                <br>fire-extinguisher
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-flag fa-lg m-t-2"></i>
                                <br>flag
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-flag-checkered fa-lg m-t-2"></i>
                                <br>flag-checkered
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-flag-o fa-lg m-t-2"></i>
                                <br>flag-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-flash fa-lg m-t-2"></i>
                                <br>flash
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-flask fa-lg m-t-2"></i>
                                <br>flask
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-folder fa-lg m-t-2"></i>
                                <br>folder
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-folder-o fa-lg m-t-2"></i>
                                <br>folder-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-folder-open fa-lg m-t-2"></i>
                                <br>folder-open
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-folder-open-o fa-lg m-t-2"></i>
                                <br>folder-open-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-frown-o fa-lg m-t-2"></i>
                                <br>frown-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-futbol-o fa-lg m-t-2"></i>
                                <br>futbol-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gamepad fa-lg m-t-2"></i>
                                <br>gamepad
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gavel fa-lg m-t-2"></i>
                                <br>gavel
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gear fa-lg m-t-2"></i>
                                <br>gear
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gears fa-lg m-t-2"></i>
                                <br>gears
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gift fa-lg m-t-2"></i>
                                <br>gift
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-glass fa-lg m-t-2"></i>
                                <br>glass
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-globe fa-lg m-t-2"></i>
                                <br>globe
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-graduation-cap fa-lg m-t-2"></i>
                                <br>graduation-cap
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-group fa-lg m-t-2"></i>
                                <br>group
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-grab-o fa-lg m-t-2"></i>
                                <br>hand-grab-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-lizard-o fa-lg m-t-2"></i>
                                <br>hand-lizard-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-paper-o fa-lg m-t-2"></i>
                                <br>hand-paper-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-peace-o fa-lg m-t-2"></i>
                                <br>hand-peace-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-pointer-o fa-lg m-t-2"></i>
                                <br>hand-pointer-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-rock-o fa-lg m-t-2"></i>
                                <br>hand-rock-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-scissors-o fa-lg m-t-2"></i>
                                <br>hand-scissors-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-spock-o fa-lg m-t-2"></i>
                                <br>hand-spock-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-stop-o fa-lg m-t-2"></i>
                                <br>hand-stop-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hashtag fa-lg m-t-2"></i>
                                <br>hashtag
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hdd-o fa-lg m-t-2"></i>
                                <br>hdd-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-headphones fa-lg m-t-2"></i>
                                <br>headphones
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-heart fa-lg m-t-2"></i>
                                <br>heart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-heart-o fa-lg m-t-2"></i>
                                <br>heart-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-heartbeat fa-lg m-t-2"></i>
                                <br>heartbeat
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-history fa-lg m-t-2"></i>
                                <br>history
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-home fa-lg m-t-2"></i>
                                <br>home
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hotel fa-lg m-t-2"></i>
                                <br>hotel
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hourglass fa-lg m-t-2"></i>
                                <br>hourglass
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hourglass-1 fa-lg m-t-2"></i>
                                <br>hourglass-1
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hourglass-2 fa-lg m-t-2"></i>
                                <br>hourglass-2
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hourglass-3 fa-lg m-t-2"></i>
                                <br>hourglass-3
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hourglass-end fa-lg m-t-2"></i>
                                <br>hourglass-end
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hourglass-half fa-lg m-t-2"></i>
                                <br>hourglass-half
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hourglass-o fa-lg m-t-2"></i>
                                <br>hourglass-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hourglass-start fa-lg m-t-2"></i>
                                <br>hourglass-start
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-i-cursor fa-lg m-t-2"></i>
                                <br>i-cursor
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-image fa-lg m-t-2"></i>
                                <br>image
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-inbox fa-lg m-t-2"></i>
                                <br>inbox
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-industry fa-lg m-t-2"></i>
                                <br>industry
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-info fa-lg m-t-2"></i>
                                <br>info
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-info-circle fa-lg m-t-2"></i>
                                <br>info-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-institution fa-lg m-t-2"></i>
                                <br>institution
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-key fa-lg m-t-2"></i>
                                <br>key
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-keyboard-o fa-lg m-t-2"></i>
                                <br>keyboard-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-language fa-lg m-t-2"></i>
                                <br>language
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-laptop fa-lg m-t-2"></i>
                                <br>laptop
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-leaf fa-lg m-t-2"></i>
                                <br>leaf
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-legal fa-lg m-t-2"></i>
                                <br>legal
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-lemon-o fa-lg m-t-2"></i>
                                <br>lemon-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-level-down fa-lg m-t-2"></i>
                                <br>level-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-level-up fa-lg m-t-2"></i>
                                <br>level-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-life-bouy fa-lg m-t-2"></i>
                                <br>life-bouy
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-life-buoy fa-lg m-t-2"></i>
                                <br>life-buoy
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-life-ring fa-lg m-t-2"></i>
                                <br>life-ring
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-life-saver fa-lg m-t-2"></i>
                                <br>life-saver
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-lightbulb-o fa-lg m-t-2"></i>
                                <br>lightbulb-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-line-chart fa-lg m-t-2"></i>
                                <br>line-chart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-location-arrow fa-lg m-t-2"></i>
                                <br>location-arrow
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-lock fa-lg m-t-2"></i>
                                <br>lock
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-magic fa-lg m-t-2"></i>
                                <br>magic
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-magnet fa-lg m-t-2"></i>
                                <br>magnet
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mail-forward fa-lg m-t-2"></i>
                                <br>mail-forward
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mail-reply fa-lg m-t-2"></i>
                                <br>mail-reply
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mail-reply-all fa-lg m-t-2"></i>
                                <br>mail-reply-all
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-male fa-lg m-t-2"></i>
                                <br>male
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-map fa-lg m-t-2"></i>
                                <br>map
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-map-marker fa-lg m-t-2"></i>
                                <br>map-marker
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-map-o fa-lg m-t-2"></i>
                                <br>map-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-map-pin fa-lg m-t-2"></i>
                                <br>map-pin
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-map-signs fa-lg m-t-2"></i>
                                <br>map-signs
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-meh-o fa-lg m-t-2"></i>
                                <br>meh-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-microphone fa-lg m-t-2"></i>
                                <br>microphone
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-microphone-slash fa-lg m-t-2"></i>
                                <br>microphone-slash
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-minus fa-lg m-t-2"></i>
                                <br>minus
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-minus-circle fa-lg m-t-2"></i>
                                <br>minus-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-minus-square fa-lg m-t-2"></i>
                                <br>minus-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-minus-square-o fa-lg m-t-2"></i>
                                <br>minus-square-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mobile fa-lg m-t-2"></i>
                                <br>mobile
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mobile-phone fa-lg m-t-2"></i>
                                <br>mobile-phone
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-money fa-lg m-t-2"></i>
                                <br>money
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-moon-o fa-lg m-t-2"></i>
                                <br>moon-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mortar-board fa-lg m-t-2"></i>
                                <br>mortar-board
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-motorcycle fa-lg m-t-2"></i>
                                <br>motorcycle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mouse-pointer fa-lg m-t-2"></i>
                                <br>mouse-pointer
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-music fa-lg m-t-2"></i>
                                <br>music
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-navicon fa-lg m-t-2"></i>
                                <br>navicon
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-newspaper-o fa-lg m-t-2"></i>
                                <br>newspaper-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-object-group fa-lg m-t-2"></i>
                                <br>object-group
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-object-ungroup fa-lg m-t-2"></i>
                                <br>object-ungroup
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-paint-brush fa-lg m-t-2"></i>
                                <br>paint-brush
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-paper-plane fa-lg m-t-2"></i>
                                <br>paper-plane
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-paper-plane-o fa-lg m-t-2"></i>
                                <br>paper-plane-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-paw fa-lg m-t-2"></i>
                                <br>paw
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pencil fa-lg m-t-2"></i>
                                <br>pencil
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pencil-square fa-lg m-t-2"></i>
                                <br>pencil-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pencil-square-o fa-lg m-t-2"></i>
                                <br>pencil-square-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-percent fa-lg m-t-2"></i>
                                <br>percent
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-phone fa-lg m-t-2"></i>
                                <br>phone
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-phone-square fa-lg m-t-2"></i>
                                <br>phone-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-photo fa-lg m-t-2"></i>
                                <br>photo
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-picture-o fa-lg m-t-2"></i>
                                <br>picture-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pie-chart fa-lg m-t-2"></i>
                                <br>pie-chart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-plane fa-lg m-t-2"></i>
                                <br>plane
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-plug fa-lg m-t-2"></i>
                                <br>plug
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-plus fa-lg m-t-2"></i>
                                <br>plus
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-plus-circle fa-lg m-t-2"></i>
                                <br>plus-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-plus-square fa-lg m-t-2"></i>
                                <br>plus-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-plus-square-o fa-lg m-t-2"></i>
                                <br>plus-square-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-power-off fa-lg m-t-2"></i>
                                <br>power-off
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-print fa-lg m-t-2"></i>
                                <br>print
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-puzzle-piece fa-lg m-t-2"></i>
                                <br>puzzle-piece
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-qrcode fa-lg m-t-2"></i>
                                <br>qrcode
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-question fa-lg m-t-2"></i>
                                <br>question
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-question-circle fa-lg m-t-2"></i>
                                <br>question-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-quote-left fa-lg m-t-2"></i>
                                <br>quote-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-quote-right fa-lg m-t-2"></i>
                                <br>quote-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-random fa-lg m-t-2"></i>
                                <br>random
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-recycle fa-lg m-t-2"></i>
                                <br>recycle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-refresh fa-lg m-t-2"></i>
                                <br>refresh
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-registered fa-lg m-t-2"></i>
                                <br>registered
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-remove fa-lg m-t-2"></i>
                                <br>remove
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-reorder fa-lg m-t-2"></i>
                                <br>reorder
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-reply fa-lg m-t-2"></i>
                                <br>reply
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-reply-all fa-lg m-t-2"></i>
                                <br>reply-all
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-retweet fa-lg m-t-2"></i>
                                <br>retweet
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-road fa-lg m-t-2"></i>
                                <br>road
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-rocket fa-lg m-t-2"></i>
                                <br>rocket
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-rss fa-lg m-t-2"></i>
                                <br>rss
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-rss-square fa-lg m-t-2"></i>
                                <br>rss-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-search fa-lg m-t-2"></i>
                                <br>search
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-search-minus fa-lg m-t-2"></i>
                                <br>search-minus
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-search-plus fa-lg m-t-2"></i>
                                <br>search-plus
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-send fa-lg m-t-2"></i>
                                <br>send
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-send-o fa-lg m-t-2"></i>
                                <br>send-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-server fa-lg m-t-2"></i>
                                <br>server
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-share fa-lg m-t-2"></i>
                                <br>share
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-share-alt fa-lg m-t-2"></i>
                                <br>share-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-share-alt-square fa-lg m-t-2"></i>
                                <br>share-alt-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-share-square fa-lg m-t-2"></i>
                                <br>share-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-share-square-o fa-lg m-t-2"></i>
                                <br>share-square-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-shield fa-lg m-t-2"></i>
                                <br>shield
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ship fa-lg m-t-2"></i>
                                <br>ship
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-shopping-bag fa-lg m-t-2"></i>
                                <br>shopping-bag
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-shopping-basket fa-lg m-t-2"></i>
                                <br>shopping-basket
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-shopping-cart fa-lg m-t-2"></i>
                                <br>shopping-cart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sign-in fa-lg m-t-2"></i>
                                <br>sign-in
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sign-out fa-lg m-t-2"></i>
                                <br>sign-out
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-signal fa-lg m-t-2"></i>
                                <br>signal
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sitemap fa-lg m-t-2"></i>
                                <br>sitemap
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sliders fa-lg m-t-2"></i>
                                <br>sliders
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-smile-o fa-lg m-t-2"></i>
                                <br>smile-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-soccer-ball-o fa-lg m-t-2"></i>
                                <br>soccer-ball-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sort fa-lg m-t-2"></i>
                                <br>sort
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sort-alpha-asc fa-lg m-t-2"></i>
                                <br>sort-alpha-asc
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sort-alpha-desc fa-lg m-t-2"></i>
                                <br>sort-alpha-desc
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sort-amount-asc fa-lg m-t-2"></i>
                                <br>sort-amount-asc
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sort-amount-desc fa-lg m-t-2"></i>
                                <br>sort-amount-desc
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sort-asc fa-lg m-t-2"></i>
                                <br>sort-asc
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sort-desc fa-lg m-t-2"></i>
                                <br>sort-desc
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sort-down fa-lg m-t-2"></i>
                                <br>sort-down
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sort-numeric-asc fa-lg m-t-2"></i>
                                <br>sort-numeric-asc
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sort-numeric-desc fa-lg m-t-2"></i>
                                <br>sort-numeric-desc
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sort-up fa-lg m-t-2"></i>
                                <br>sort-up
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-space-shuttle fa-lg m-t-2"></i>
                                <br>space-shuttle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-spinner fa-lg m-t-2"></i>
                                <br>spinner
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-spoon fa-lg m-t-2"></i>
                                <br>spoon
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-square fa-lg m-t-2"></i>
                                <br>square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-square-o fa-lg m-t-2"></i>
                                <br>square-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-star fa-lg m-t-2"></i>
                                <br>star
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-star-half fa-lg m-t-2"></i>
                                <br>star-half
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-star-half-empty fa-lg m-t-2"></i>
                                <br>star-half-empty
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-star-half-full fa-lg m-t-2"></i>
                                <br>star-half-full
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-star-half-o fa-lg m-t-2"></i>
                                <br>star-half-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-star-o fa-lg m-t-2"></i>
                                <br>star-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sticky-note fa-lg m-t-2"></i>
                                <br>sticky-note
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sticky-note-o fa-lg m-t-2"></i>
                                <br>sticky-note-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-street-view fa-lg m-t-2"></i>
                                <br>street-view
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-suitcase fa-lg m-t-2"></i>
                                <br>suitcase
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sun-o fa-lg m-t-2"></i>
                                <br>sun-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-support fa-lg m-t-2"></i>
                                <br>support
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tablet fa-lg m-t-2"></i>
                                <br>tablet
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tachometer fa-lg m-t-2"></i>
                                <br>tachometer
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tag fa-lg m-t-2"></i>
                                <br>tag
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tags fa-lg m-t-2"></i>
                                <br>tags
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tasks fa-lg m-t-2"></i>
                                <br>tasks
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-taxi fa-lg m-t-2"></i>
                                <br>taxi
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-television fa-lg m-t-2"></i>
                                <br>television
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-terminal fa-lg m-t-2"></i>
                                <br>terminal
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-thumb-tack fa-lg m-t-2"></i>
                                <br>thumb-tack
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-thumbs-down fa-lg m-t-2"></i>
                                <br>thumbs-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-thumbs-o-down fa-lg m-t-2"></i>
                                <br>thumbs-o-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-thumbs-o-up fa-lg m-t-2"></i>
                                <br>thumbs-o-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-thumbs-up fa-lg m-t-2"></i>
                                <br>thumbs-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ticket fa-lg m-t-2"></i>
                                <br>ticket
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-times fa-lg m-t-2"></i>
                                <br>times
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-times-circle fa-lg m-t-2"></i>
                                <br>times-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-times-circle-o fa-lg m-t-2"></i>
                                <br>times-circle-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tint fa-lg m-t-2"></i>
                                <br>tint
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-toggle-down fa-lg m-t-2"></i>
                                <br>toggle-down
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-toggle-left fa-lg m-t-2"></i>
                                <br>toggle-left
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-toggle-off fa-lg m-t-2"></i>
                                <br>toggle-off
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-toggle-on fa-lg m-t-2"></i>
                                <br>toggle-on
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-toggle-right fa-lg m-t-2"></i>
                                <br>toggle-right
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-toggle-up fa-lg m-t-2"></i>
                                <br>toggle-up
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-trademark fa-lg m-t-2"></i>
                                <br>trademark
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-trash fa-lg m-t-2"></i>
                                <br>trash
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-trash-o fa-lg m-t-2"></i>
                                <br>trash-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tree fa-lg m-t-2"></i>
                                <br>tree
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-trophy fa-lg m-t-2"></i>
                                <br>trophy
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-truck fa-lg m-t-2"></i>
                                <br>truck
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tty fa-lg m-t-2"></i>
                                <br>tty
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tv fa-lg m-t-2"></i>
                                <br>tv
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-umbrella fa-lg m-t-2"></i>
                                <br>umbrella
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-university fa-lg m-t-2"></i>
                                <br>university
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-unlock fa-lg m-t-2"></i>
                                <br>unlock
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-unlock-alt fa-lg m-t-2"></i>
                                <br>unlock-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-unsorted fa-lg m-t-2"></i>
                                <br>unsorted
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-upload fa-lg m-t-2"></i>
                                <br>upload
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-user fa-lg m-t-2"></i>
                                <br>user
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-user-plus fa-lg m-t-2"></i>
                                <br>user-plus
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-user-secret fa-lg m-t-2"></i>
                                <br>user-secret
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-user-times fa-lg m-t-2"></i>
                                <br>user-times
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-users fa-lg m-t-2"></i>
                                <br>users
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-video-camera fa-lg m-t-2"></i>
                                <br>video-camera
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-volume-down fa-lg m-t-2"></i>
                                <br>volume-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-volume-off fa-lg m-t-2"></i>
                                <br>volume-off
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-volume-up fa-lg m-t-2"></i>
                                <br>volume-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-warning fa-lg m-t-2"></i>
                                <br>warning
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-wheelchair fa-lg m-t-2"></i>
                                <br>wheelchair
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-wifi fa-lg m-t-2"></i>
                                <br>wifi
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-wrench fa-lg m-t-2"></i>
                                <br>wrench
                            </div>

                        </div>
                    </div>

                </div>

                <div class="card" id="hand">
                    <div class="card-header">Hand Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-grab-o fa-lg m-t-2"></i>
                                <br>hand-grab-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-lizard-o fa-lg m-t-2"></i>
                                <br>hand-lizard-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-o-down fa-lg m-t-2"></i>
                                <br>hand-o-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-o-left fa-lg m-t-2"></i>
                                <br>hand-o-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-o-right fa-lg m-t-2"></i>
                                <br>hand-o-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-o-up fa-lg m-t-2"></i>
                                <br>hand-o-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-paper-o fa-lg m-t-2"></i>
                                <br>hand-paper-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-peace-o fa-lg m-t-2"></i>
                                <br>hand-peace-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-pointer-o fa-lg m-t-2"></i>
                                <br>hand-pointer-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-rock-o fa-lg m-t-2"></i>
                                <br>hand-rock-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-scissors-o fa-lg m-t-2"></i>
                                <br>hand-scissors-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-spock-o fa-lg m-t-2"></i>
                                <br>hand-spock-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-stop-o fa-lg m-t-2"></i>
                                <br>hand-stop-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-thumbs-down fa-lg m-t-2"></i>
                                <br>thumbs-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-thumbs-o-down fa-lg m-t-2"></i>
                                <br>thumbs-o-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-thumbs-o-up fa-lg m-t-2"></i>
                                <br>thumbs-o-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-thumbs-up fa-lg m-t-2"></i>
                                <br>thumbs-up
                            </div>

                        </div>
                    </div>

                </div>

                <div class="card" id="transportation">
                    <div class="card-header">Transportation Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ambulance fa-lg m-t-2"></i>
                                <br>ambulance
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-automobile fa-lg m-t-2"></i>
                                <br>automobile
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bicycle fa-lg m-t-2"></i>
                                <br>bicycle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bus fa-lg m-t-2"></i>
                                <br>bus
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cab fa-lg m-t-2"></i>
                                <br>cab
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-car fa-lg m-t-2"></i>
                                <br>car
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-fighter-jet fa-lg m-t-2"></i>
                                <br>fighter-jet
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-motorcycle fa-lg m-t-2"></i>
                                <br>motorcycle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-plane fa-lg m-t-2"></i>
                                <br>plane
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-rocket fa-lg m-t-2"></i>
                                <br>rocket
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ship fa-lg m-t-2"></i>
                                <br>ship
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-space-shuttle fa-lg m-t-2"></i>
                                <br>space-shuttle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-subway fa-lg m-t-2"></i>
                                <br>subway
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-taxi fa-lg m-t-2"></i>
                                <br>taxi
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-train fa-lg m-t-2"></i>
                                <br>train
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-truck fa-lg m-t-2"></i>
                                <br>truck
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-wheelchair fa-lg m-t-2"></i>
                                <br>wheelchair
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card" id="gender">
                    <div class="card-header">Gender Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-genderless fa-lg m-t-2"></i>
                                <br>genderless
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-intersex fa-lg m-t-2"></i>
                                <br>intersex
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mars fa-lg m-t-2"></i>
                                <br>mars
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mars-double fa-lg m-t-2"></i>
                                <br>mars-double
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mars-stroke fa-lg m-t-2"></i>
                                <br>mars-stroke
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mars-stroke-h fa-lg m-t-2"></i>
                                <br>mars-stroke-h
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mars-stroke-v fa-lg m-t-2"></i>
                                <br>mars-stroke-v
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mercury fa-lg m-t-2"></i>
                                <br>mercury
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-neuter fa-lg m-t-2"></i>
                                <br>neuter
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-transgender fa-lg m-t-2"></i>
                                <br>transgender
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-transgender-alt fa-lg m-t-2"></i>
                                <br>transgender-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-venus fa-lg m-t-2"></i>
                                <br>venus
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-venus-double fa-lg m-t-2"></i>
                                <br>venus-double
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-venus-mars fa-lg m-t-2"></i>
                                <br>venus-mars
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card" id="file-type">
                    <div class="card-header">File Type Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file fa-lg m-t-2"></i>
                                <br>file
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-archive-o fa-lg m-t-2"></i>
                                <br>file-archive-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-audio-o fa-lg m-t-2"></i>
                                <br>file-audio-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-code-o fa-lg m-t-2"></i>
                                <br>file-code-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-excel-o fa-lg m-t-2"></i>
                                <br>file-excel-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-image-o fa-lg m-t-2"></i>
                                <br>file-image-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-movie-o fa-lg m-t-2"></i>
                                <br>file-movie-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-o fa-lg m-t-2"></i>
                                <br>file-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-pdf-o fa-lg m-t-2"></i>
                                <br>file-pdf-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-photo-o fa-lg m-t-2"></i>
                                <br>file-photo-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-picture-o fa-lg m-t-2"></i>
                                <br>file-picture-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-powerpoint-o fa-lg m-t-2"></i>
                                <br>file-powerpoint-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-sound-o fa-lg m-t-2"></i>
                                <br>file-sound-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-text fa-lg m-t-2"></i>
                                <br>file-text
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-text-o fa-lg m-t-2"></i>
                                <br>file-text-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-video-o fa-lg m-t-2"></i>
                                <br>file-video-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-word-o fa-lg m-t-2"></i>
                                <br>file-word-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-zip-o fa-lg m-t-2"></i>
                                <br>file-zip-o
                                <span class="text-muted">(alias)</span>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card" id="spinner">
                    <div class="card-header">Spinner Icons</div>
                    <div class="card-block">
                        <div class="alert alert-success">
                            <ul class="fa-ul">
                                <li>
                                    <i class="fa fa-info-circle fa-li"></i>
                                    These icons work great with the
                                    <code>fa-spin</code>class.
                                </li>
                            </ul>
                        </div>
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-circle-o-notch fa-lg m-t-2"></i>
                                <br>circle-o-notch
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cog fa-lg m-t-2"></i>
                                <br>cog
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gear fa-lg m-t-2"></i>
                                <br>gear
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-refresh fa-lg m-t-2"></i>
                                <br>refresh
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-spinner fa-lg m-t-2"></i>
                                <br>spinner
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card" id="form-control">
                    <div class="card-header">Form Control Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-check-square fa-lg m-t-2"></i>
                                <br>check-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-check-square-o fa-lg m-t-2"></i>
                                <br>check-square-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-circle fa-lg m-t-2"></i>
                                <br>circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-circle-o fa-lg m-t-2"></i>
                                <br>circle-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-dot-circle-o fa-lg m-t-2"></i>
                                <br>dot-circle-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-minus-square fa-lg m-t-2"></i>
                                <br>minus-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-minus-square-o fa-lg m-t-2"></i>
                                <br>minus-square-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-plus-square fa-lg m-t-2"></i>
                                <br>plus-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-plus-square-o fa-lg m-t-2"></i>
                                <br>plus-square-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-square fa-lg m-t-2"></i>
                                <br>square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-square-o fa-lg m-t-2"></i>
                                <br>square-o
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card" id="payment">
                    <div class="card-header">Payment Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-amex fa-lg m-t-2"></i>
                                <br>cc-amex
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-diners-club fa-lg m-t-2"></i>
                                <br>cc-diners-club
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-discover fa-lg m-t-2"></i>
                                <br>cc-discover
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-jcb fa-lg m-t-2"></i>
                                <br>cc-jcb
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-mastercard fa-lg m-t-2"></i>
                                <br>cc-mastercard
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-paypal fa-lg m-t-2"></i>
                                <br>cc-paypal
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-stripe fa-lg m-t-2"></i>
                                <br>cc-stripe
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-visa fa-lg m-t-2"></i>
                                <br>cc-visa
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-credit-card fa-lg m-t-2"></i>
                                <br>credit-card
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-credit-card-alt fa-lg m-t-2"></i>
                                <br>credit-card-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-google-wallet fa-lg m-t-2"></i>
                                <br>google-wallet
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-paypal fa-lg m-t-2"></i>
                                <br>paypal
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card" id="chart">
                    <div class="card-header">Chart Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-area-chart fa-lg m-t-2"></i>
                                <br>area-chart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bar-chart fa-lg m-t-2"></i>
                                <br>bar-chart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bar-chart-o fa-lg m-t-2"></i>
                                <br>bar-chart-o
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-line-chart fa-lg m-t-2"></i>
                                <br>line-chart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pie-chart fa-lg m-t-2"></i>
                                <br>pie-chart
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card" id="currency">
                    <div class="card-header">Currency Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bitcoin fa-lg m-t-2"></i>
                                <br>bitcoin
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-btc fa-lg m-t-2"></i>
                                <br>btc
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cny fa-lg m-t-2"></i>
                                <br>cny
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-dollar fa-lg m-t-2"></i>
                                <br>dollar
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-eur fa-lg m-t-2"></i>
                                <br>eur
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-euro fa-lg m-t-2"></i>
                                <br>euro
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gbp fa-lg m-t-2"></i>
                                <br>gbp
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gg fa-lg m-t-2"></i>
                                <br>gg
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gg-circle fa-lg m-t-2"></i>
                                <br>gg-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ils fa-lg m-t-2"></i>
                                <br>ils
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-inr fa-lg m-t-2"></i>
                                <br>inr
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-jpy fa-lg m-t-2"></i>
                                <br>jpy
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-krw fa-lg m-t-2"></i>
                                <br>krw
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-money fa-lg m-t-2"></i>
                                <br>money
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-rmb fa-lg m-t-2"></i>
                                <br>rmb
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-rouble fa-lg m-t-2"></i>
                                <br>rouble
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-rub fa-lg m-t-2"></i>
                                <br>rub
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ruble fa-lg m-t-2"></i>
                                <br>ruble
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-rupee fa-lg m-t-2"></i>
                                <br>rupee
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-shekel fa-lg m-t-2"></i>
                                <br>shekel
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sheqel fa-lg m-t-2"></i>
                                <br>sheqel
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-try fa-lg m-t-2"></i>
                                <br>try
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-turkish-lira fa-lg m-t-2"></i>
                                <br>turkish-lira
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-usd fa-lg m-t-2"></i>
                                <br>usd
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-won fa-lg m-t-2"></i>
                                <br>won
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-yen fa-lg m-t-2"></i>
                                <br>yen
                                <span class="text-muted">(alias)</span>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card" id="text-editor">
                    <div class="card-header">Text Editor Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-align-center fa-lg m-t-2"></i>
                                <br>align-center
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-align-justify fa-lg m-t-2"></i>
                                <br>align-justify
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-align-left fa-lg m-t-2"></i>
                                <br>align-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-align-right fa-lg m-t-2"></i>
                                <br>align-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bold fa-lg m-t-2"></i>
                                <br>bold
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-chain fa-lg m-t-2"></i>
                                <br>chain
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-chain-broken fa-lg m-t-2"></i>
                                <br>chain-broken
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-clipboard fa-lg m-t-2"></i>
                                <br>clipboard
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-columns fa-lg m-t-2"></i>
                                <br>columns
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-copy fa-lg m-t-2"></i>
                                <br>copy
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cut fa-lg m-t-2"></i>
                                <br>cut
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-dedent fa-lg m-t-2"></i>
                                <br>dedent
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-eraser fa-lg m-t-2"></i>
                                <br>eraser
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file fa-lg m-t-2"></i>
                                <br>file
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-o fa-lg m-t-2"></i>
                                <br>file-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-text fa-lg m-t-2"></i>
                                <br>file-text
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-file-text-o fa-lg m-t-2"></i>
                                <br>file-text-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-files-o fa-lg m-t-2"></i>
                                <br>files-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-floppy-o fa-lg m-t-2"></i>
                                <br>floppy-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-font fa-lg m-t-2"></i>
                                <br>font
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-header fa-lg m-t-2"></i>
                                <br>header
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-indent fa-lg m-t-2"></i>
                                <br>indent
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-italic fa-lg m-t-2"></i>
                                <br>italic
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-link fa-lg m-t-2"></i>
                                <br>link
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-list fa-lg m-t-2"></i>
                                <br>list
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-list-alt fa-lg m-t-2"></i>
                                <br>list-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-list-ol fa-lg m-t-2"></i>
                                <br>list-ol
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-list-ul fa-lg m-t-2"></i>
                                <br>list-ul
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-outdent fa-lg m-t-2"></i>
                                <br>outdent
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-paperclip fa-lg m-t-2"></i>
                                <br>paperclip
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-paragraph fa-lg m-t-2"></i>
                                <br>paragraph
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-paste fa-lg m-t-2"></i>
                                <br>paste
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-repeat fa-lg m-t-2"></i>
                                <br>repeat
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-rotate-left fa-lg m-t-2"></i>
                                <br>rotate-left
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-rotate-right fa-lg m-t-2"></i>
                                <br>rotate-right
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-save fa-lg m-t-2"></i>
                                <br>save
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-scissors fa-lg m-t-2"></i>
                                <br>scissors
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-strikethrough fa-lg m-t-2"></i>
                                <br>strikethrough
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-subscript fa-lg m-t-2"></i>
                                <br>subscript
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-superscript fa-lg m-t-2"></i>
                                <br>superscript
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-table fa-lg m-t-2"></i>
                                <br>table
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-text-height fa-lg m-t-2"></i>
                                <br>text-height
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-text-width fa-lg m-t-2"></i>
                                <br>text-width
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-th fa-lg m-t-2"></i>
                                <br>th
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-th-large fa-lg m-t-2"></i>
                                <br>th-large
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-th-list fa-lg m-t-2"></i>
                                <br>th-list
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-underline fa-lg m-t-2"></i>
                                <br>underline
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-undo fa-lg m-t-2"></i>
                                <br>undo
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-unlink fa-lg m-t-2"></i>
                                <br>unlink
                                <span class="text-muted">(alias)</span>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card" id="directional">
                    <div class="card-header">Directional Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-angle-double-down fa-lg m-t-2"></i>
                                <br>angle-double-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-angle-double-left fa-lg m-t-2"></i>
                                <br>angle-double-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-angle-double-right fa-lg m-t-2"></i>
                                <br>angle-double-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-angle-double-up fa-lg m-t-2"></i>
                                <br>angle-double-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-angle-down fa-lg m-t-2"></i>
                                <br>angle-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-angle-left fa-lg m-t-2"></i>
                                <br>angle-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-angle-right fa-lg m-t-2"></i>
                                <br>angle-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-angle-up fa-lg m-t-2"></i>
                                <br>angle-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-circle-down fa-lg m-t-2"></i>
                                <br>arrow-circle-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-circle-left fa-lg m-t-2"></i>
                                <br>arrow-circle-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-circle-o-down fa-lg m-t-2"></i>
                                <br>arrow-circle-o-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-circle-o-left fa-lg m-t-2"></i>
                                <br>arrow-circle-o-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-circle-o-right fa-lg m-t-2"></i>
                                <br>arrow-circle-o-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-circle-o-up fa-lg m-t-2"></i>
                                <br>arrow-circle-o-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-circle-right fa-lg m-t-2"></i>
                                <br>arrow-circle-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-circle-up fa-lg m-t-2"></i>
                                <br>arrow-circle-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-down fa-lg m-t-2"></i>
                                <br>arrow-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-left fa-lg m-t-2"></i>
                                <br>arrow-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-right fa-lg m-t-2"></i>
                                <br>arrow-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrow-up fa-lg m-t-2"></i>
                                <br>arrow-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrows fa-lg m-t-2"></i>
                                <br>arrows
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrows-alt fa-lg m-t-2"></i>
                                <br>arrows-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrows-h fa-lg m-t-2"></i>
                                <br>arrows-h
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrows-v fa-lg m-t-2"></i>
                                <br>arrows-v
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-down fa-lg m-t-2"></i>
                                <br>caret-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-left fa-lg m-t-2"></i>
                                <br>caret-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-right fa-lg m-t-2"></i>
                                <br>caret-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-square-o-down fa-lg m-t-2"></i>
                                <br>caret-square-o-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-square-o-left fa-lg m-t-2"></i>
                                <br>caret-square-o-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-square-o-right fa-lg m-t-2"></i>
                                <br>caret-square-o-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-square-o-up fa-lg m-t-2"></i>
                                <br>caret-square-o-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-caret-up fa-lg m-t-2"></i>
                                <br>caret-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-chevron-circle-down fa-lg m-t-2"></i>
                                <br>chevron-circle-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-chevron-circle-left fa-lg m-t-2"></i>
                                <br>chevron-circle-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-chevron-circle-right fa-lg m-t-2"></i>
                                <br>chevron-circle-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-chevron-circle-up fa-lg m-t-2"></i>
                                <br>chevron-circle-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-chevron-down fa-lg m-t-2"></i>
                                <br>chevron-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-chevron-left fa-lg m-t-2"></i>
                                <br>chevron-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-chevron-right fa-lg m-t-2"></i>
                                <br>chevron-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-chevron-up fa-lg m-t-2"></i>
                                <br>chevron-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-exchange fa-lg m-t-2"></i>
                                <br>exchange
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-o-down fa-lg m-t-2"></i>
                                <br>hand-o-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-o-left fa-lg m-t-2"></i>
                                <br>hand-o-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-o-right fa-lg m-t-2"></i>
                                <br>hand-o-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hand-o-up fa-lg m-t-2"></i>
                                <br>hand-o-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-long-arrow-down fa-lg m-t-2"></i>
                                <br>long-arrow-down
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-long-arrow-left fa-lg m-t-2"></i>
                                <br>long-arrow-left
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-long-arrow-right fa-lg m-t-2"></i>
                                <br>long-arrow-right
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-long-arrow-up fa-lg m-t-2"></i>
                                <br>long-arrow-up
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-toggle-down fa-lg m-t-2"></i>
                                <br>toggle-down
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-toggle-left fa-lg m-t-2"></i>
                                <br>toggle-left
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-toggle-right fa-lg m-t-2"></i>
                                <br>toggle-right
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-toggle-up fa-lg m-t-2"></i>
                                <br>toggle-up
                                <span class="text-muted">(alias)</span>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card" id="video-player">
                    <div class="card-header">Video Player Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-arrows-alt fa-lg m-t-2"></i>
                                <br>arrows-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-backward fa-lg m-t-2"></i>
                                <br>backward
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-compress fa-lg m-t-2"></i>
                                <br>compress
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-eject fa-lg m-t-2"></i>
                                <br>eject
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-expand fa-lg m-t-2"></i>
                                <br>expand
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-fast-backward fa-lg m-t-2"></i>
                                <br>fast-backward
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-fast-forward fa-lg m-t-2"></i>
                                <br>fast-forward
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-forward fa-lg m-t-2"></i>
                                <br>forward
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pause fa-lg m-t-2"></i>
                                <br>pause
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pause-circle fa-lg m-t-2"></i>
                                <br>pause-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pause-circle-o fa-lg m-t-2"></i>
                                <br>pause-circle-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-play fa-lg m-t-2"></i>
                                <br>play
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-play-circle fa-lg m-t-2"></i>
                                <br>play-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-play-circle-o fa-lg m-t-2"></i>
                                <br>play-circle-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-random fa-lg m-t-2"></i>
                                <br>random
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-step-backward fa-lg m-t-2"></i>
                                <br>step-backward
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-step-forward fa-lg m-t-2"></i>
                                <br>step-forward
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-stop fa-lg m-t-2"></i>
                                <br>stop
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-stop-circle fa-lg m-t-2"></i>
                                <br>stop-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-stop-circle-o fa-lg m-t-2"></i>
                                <br>stop-circle-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-youtube-play fa-lg m-t-2"></i>
                                <br>youtube-play
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card" id="brand">
                    <div class="card-header">Brand Icons</div>
                    <div class="card-block">
                        <div class="alert alert-warning">
                            <h4><i class="fa fa-warning"></i> Warning!</h4>
                            Apparently, Adblock Plus can remove Font Awesome brand icons with their "Remove Social Media Buttons" setting. We will not use hacks to force them to display. Please
                            <a href="https://adblockplus.org/en/bugs" class="alert-link">report an issue with Adblock Plus</a> if you believe this to be an error. To work around this, you'll need to modify the social icon class names.
                        </div>
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-500px fa-lg m-t-2"></i>
                                <br>500px
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-adn fa-lg m-t-2"></i>
                                <br>adn
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-amazon fa-lg m-t-2"></i>
                                <br>amazon
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-android fa-lg m-t-2"></i>
                                <br>android
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-angellist fa-lg m-t-2"></i>
                                <br>angellist
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-apple fa-lg m-t-2"></i>
                                <br>apple
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-behance fa-lg m-t-2"></i>
                                <br>behance
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-behance-square fa-lg m-t-2"></i>
                                <br>behance-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bitbucket fa-lg m-t-2"></i>
                                <br>bitbucket
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bitbucket-square fa-lg m-t-2"></i>
                                <br>bitbucket-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bitcoin fa-lg m-t-2"></i>
                                <br>bitcoin
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-black-tie fa-lg m-t-2"></i>
                                <br>black-tie
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bluetooth fa-lg m-t-2"></i>
                                <br>bluetooth
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-bluetooth-b fa-lg m-t-2"></i>
                                <br>bluetooth-b
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-btc fa-lg m-t-2"></i>
                                <br>btc
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-buysellads fa-lg m-t-2"></i>
                                <br>buysellads
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-amex fa-lg m-t-2"></i>
                                <br>cc-amex
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-diners-club fa-lg m-t-2"></i>
                                <br>cc-diners-club
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-discover fa-lg m-t-2"></i>
                                <br>cc-discover
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-jcb fa-lg m-t-2"></i>
                                <br>cc-jcb
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-mastercard fa-lg m-t-2"></i>
                                <br>cc-mastercard
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-paypal fa-lg m-t-2"></i>
                                <br>cc-paypal
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-stripe fa-lg m-t-2"></i>
                                <br>cc-stripe
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-cc-visa fa-lg m-t-2"></i>
                                <br>cc-visa
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-chrome fa-lg m-t-2"></i>
                                <br>chrome
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-codepen fa-lg m-t-2"></i>
                                <br>codepen
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-codiepie fa-lg m-t-2"></i>
                                <br>codiepie
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-connectdevelop fa-lg m-t-2"></i>
                                <br>connectdevelop
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-contao fa-lg m-t-2"></i>
                                <br>contao
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-css3 fa-lg m-t-2"></i>
                                <br>css3
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-dashcube fa-lg m-t-2"></i>
                                <br>dashcube
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-delicious fa-lg m-t-2"></i>
                                <br>delicious
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-deviantart fa-lg m-t-2"></i>
                                <br>deviantart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-digg fa-lg m-t-2"></i>
                                <br>digg
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-dribbble fa-lg m-t-2"></i>
                                <br>dribbble
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-dropbox fa-lg m-t-2"></i>
                                <br>dropbox
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-drupal fa-lg m-t-2"></i>
                                <br>drupal
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-edge fa-lg m-t-2"></i>
                                <br>edge
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-empire fa-lg m-t-2"></i>
                                <br>empire
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-expeditedssl fa-lg m-t-2"></i>
                                <br>expeditedssl
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-facebook fa-lg m-t-2"></i>
                                <br>facebook
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-facebook-f fa-lg m-t-2"></i>
                                <br>facebook-f
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-facebook-official fa-lg m-t-2"></i>
                                <br>facebook-official
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-facebook-square fa-lg m-t-2"></i>
                                <br>facebook-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-firefox fa-lg m-t-2"></i>
                                <br>firefox
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-flickr fa-lg m-t-2"></i>
                                <br>flickr
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-fonticons fa-lg m-t-2"></i>
                                <br>fonticons
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-fort-awesome fa-lg m-t-2"></i>
                                <br>fort-awesome
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-forumbee fa-lg m-t-2"></i>
                                <br>forumbee
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-foursquare fa-lg m-t-2"></i>
                                <br>foursquare
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ge fa-lg m-t-2"></i>
                                <br>ge
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-get-pocket fa-lg m-t-2"></i>
                                <br>get-pocket
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gg fa-lg m-t-2"></i>
                                <br>gg
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gg-circle fa-lg m-t-2"></i>
                                <br>gg-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-git fa-lg m-t-2"></i>
                                <br>git
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-git-square fa-lg m-t-2"></i>
                                <br>git-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-github fa-lg m-t-2"></i>
                                <br>github
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-github-alt fa-lg m-t-2"></i>
                                <br>github-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-github-square fa-lg m-t-2"></i>
                                <br>github-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gittip fa-lg m-t-2"></i>
                                <br>gittip
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-google fa-lg m-t-2"></i>
                                <br>google
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-google-plus fa-lg m-t-2"></i>
                                <br>google-plus
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-google-plus-square fa-lg m-t-2"></i>
                                <br>google-plus-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-google-wallet fa-lg m-t-2"></i>
                                <br>google-wallet
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-gratipay fa-lg m-t-2"></i>
                                <br>gratipay
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hacker-news fa-lg m-t-2"></i>
                                <br>hacker-news
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-houzz fa-lg m-t-2"></i>
                                <br>houzz
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-html5 fa-lg m-t-2"></i>
                                <br>html5
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-instagram fa-lg m-t-2"></i>
                                <br>instagram
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-internet-explorer fa-lg m-t-2"></i>
                                <br>internet-explorer
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ioxhost fa-lg m-t-2"></i>
                                <br>ioxhost
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-joomla fa-lg m-t-2"></i>
                                <br>joomla
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-jsfiddle fa-lg m-t-2"></i>
                                <br>jsfiddle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-lastfm fa-lg m-t-2"></i>
                                <br>lastfm
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-lastfm-square fa-lg m-t-2"></i>
                                <br>lastfm-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-leanpub fa-lg m-t-2"></i>
                                <br>leanpub
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-linkedin fa-lg m-t-2"></i>
                                <br>linkedin
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-linkedin-square fa-lg m-t-2"></i>
                                <br>linkedin-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-linux fa-lg m-t-2"></i>
                                <br>linux
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-maxcdn fa-lg m-t-2"></i>
                                <br>maxcdn
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-meanpath fa-lg m-t-2"></i>
                                <br>meanpath
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-medium fa-lg m-t-2"></i>
                                <br>medium
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-mixcloud fa-lg m-t-2"></i>
                                <br>mixcloud
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-modx fa-lg m-t-2"></i>
                                <br>modx
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-odnoklassniki fa-lg m-t-2"></i>
                                <br>odnoklassniki
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-odnoklassniki-square fa-lg m-t-2"></i>
                                <br>odnoklassniki-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-opencart fa-lg m-t-2"></i>
                                <br>opencart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-openid fa-lg m-t-2"></i>
                                <br>openid
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-opera fa-lg m-t-2"></i>
                                <br>opera
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-optin-monster fa-lg m-t-2"></i>
                                <br>optin-monster
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pagelines fa-lg m-t-2"></i>
                                <br>pagelines
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-paypal fa-lg m-t-2"></i>
                                <br>paypal
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pied-piper fa-lg m-t-2"></i>
                                <br>pied-piper
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pied-piper-alt fa-lg m-t-2"></i>
                                <br>pied-piper-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pinterest fa-lg m-t-2"></i>
                                <br>pinterest
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pinterest-p fa-lg m-t-2"></i>
                                <br>pinterest-p
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-pinterest-square fa-lg m-t-2"></i>
                                <br>pinterest-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-product-hunt fa-lg m-t-2"></i>
                                <br>product-hunt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-qq fa-lg m-t-2"></i>
                                <br>qq
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ra fa-lg m-t-2"></i>
                                <br>ra
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-rebel fa-lg m-t-2"></i>
                                <br>rebel
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-reddit fa-lg m-t-2"></i>
                                <br>reddit
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-reddit-alien fa-lg m-t-2"></i>
                                <br>reddit-alien
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-reddit-square fa-lg m-t-2"></i>
                                <br>reddit-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-renren fa-lg m-t-2"></i>
                                <br>renren
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-safari fa-lg m-t-2"></i>
                                <br>safari
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-scribd fa-lg m-t-2"></i>
                                <br>scribd
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-sellsy fa-lg m-t-2"></i>
                                <br>sellsy
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-share-alt fa-lg m-t-2"></i>
                                <br>share-alt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-share-alt-square fa-lg m-t-2"></i>
                                <br>share-alt-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-shirtsinbulk fa-lg m-t-2"></i>
                                <br>shirtsinbulk
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-simplybuilt fa-lg m-t-2"></i>
                                <br>simplybuilt
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-skyatlas fa-lg m-t-2"></i>
                                <br>skyatlas
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-skype fa-lg m-t-2"></i>
                                <br>skype
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-slack fa-lg m-t-2"></i>
                                <br>slack
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-slideshare fa-lg m-t-2"></i>
                                <br>slideshare
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-soundcloud fa-lg m-t-2"></i>
                                <br>soundcloud
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-spotify fa-lg m-t-2"></i>
                                <br>spotify
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-stack-exchange fa-lg m-t-2"></i>
                                <br>stack-exchange
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-stack-overflow fa-lg m-t-2"></i>
                                <br>stack-overflow
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-steam fa-lg m-t-2"></i>
                                <br>steam
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-steam-square fa-lg m-t-2"></i>
                                <br>steam-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-stumbleupon fa-lg m-t-2"></i>
                                <br>stumbleupon
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-stumbleupon-circle fa-lg m-t-2"></i>
                                <br>stumbleupon-circle
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tencent-weibo fa-lg m-t-2"></i>
                                <br>tencent-weibo
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-trello fa-lg m-t-2"></i>
                                <br>trello
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tripadvisor fa-lg m-t-2"></i>
                                <br>tripadvisor
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tumblr fa-lg m-t-2"></i>
                                <br>tumblr
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-tumblr-square fa-lg m-t-2"></i>
                                <br>tumblr-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-twitch fa-lg m-t-2"></i>
                                <br>twitch
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-twitter fa-lg m-t-2"></i>
                                <br>twitter
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-twitter-square fa-lg m-t-2"></i>
                                <br>twitter-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-usb fa-lg m-t-2"></i>
                                <br>usb
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-viacoin fa-lg m-t-2"></i>
                                <br>viacoin
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-vimeo fa-lg m-t-2"></i>
                                <br>vimeo
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-vimeo-square fa-lg m-t-2"></i>
                                <br>vimeo-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-vine fa-lg m-t-2"></i>
                                <br>vine
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-vk fa-lg m-t-2"></i>
                                <br>vk
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-wechat fa-lg m-t-2"></i>
                                <br>wechat
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-weibo fa-lg m-t-2"></i>
                                <br>weibo
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-weixin fa-lg m-t-2"></i>
                                <br>weixin
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-whatsapp fa-lg m-t-2"></i>
                                <br>whatsapp
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-wikipedia-w fa-lg m-t-2"></i>
                                <br>wikipedia-w
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-windows fa-lg m-t-2"></i>
                                <br>windows
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-wordpress fa-lg m-t-2"></i>
                                <br>wordpress
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-xing fa-lg m-t-2"></i>
                                <br>xing
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-xing-square fa-lg m-t-2"></i>
                                <br>xing-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-y-combinator fa-lg m-t-2"></i>
                                <br>y-combinator
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-y-combinator-square fa-lg m-t-2"></i>
                                <br>y-combinator-square
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-yahoo fa-lg m-t-2"></i>
                                <br>yahoo
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-yc fa-lg m-t-2"></i>
                                <br>yc
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-yc-square fa-lg m-t-2"></i>
                                <br>yc-square
                                <span class="text-muted">(alias)</span>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-yelp fa-lg m-t-2"></i>
                                <br>yelp
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-youtube fa-lg m-t-2"></i>
                                <br>youtube
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-youtube-play fa-lg m-t-2"></i>
                                <br>youtube-play
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-youtube-square fa-lg m-t-2"></i>
                                <br>youtube-square
                            </div>
                        </div>
                        <div class="alert alert-success m-t-2">
                            <ul class="margin-bottom-none padding-left-lg">
                                <li>All brand icons are trademarks of their respective owners.</li>
                                <li>The use of these trademarks does not indicate endorsement of the trademark holder by Font Awesome, nor vice versa.</li>
                                <li>Brand icons should only be used to represent the company or product to which they refer.</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="card" id="medical">
                    <div class="card-header">Medical Icons</div>
                    <div class="card-block">
                        <div class="row text-xs-center">

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-ambulance fa-lg m-t-2"></i>
                                <br>ambulance
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-h-square fa-lg m-t-2"></i>
                                <br>h-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-heart fa-lg m-t-2"></i>
                                <br>heart
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-heart-o fa-lg m-t-2"></i>
                                <br>heart-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-heartbeat fa-lg m-t-2"></i>
                                <br>heartbeat
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-hospital-o fa-lg m-t-2"></i>
                                <br>hospital-o
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-medkit fa-lg m-t-2"></i>
                                <br>medkit
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-plus-square fa-lg m-t-2"></i>
                                <br>plus-square
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-stethoscope fa-lg m-t-2"></i>
                                <br>stethoscope
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-user-md fa-lg m-t-2"></i>
                                <br>user-md
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                <i class="fa fa-wheelchair fa-lg m-t-2"></i>
                                <br>wheelchair
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:generic>
