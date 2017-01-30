<%-- 
    Document   : test
    Created on : May 14, 2016, 11:11:51 AM
    Author     : mohammadghasemy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
    request.setAttribute("page", "bill");
        //javax.servlet.http.HttpSession session = request.getSession();
        
        Boolean log = (Boolean) session.getAttribute("login");
        String key = (String) session.getAttribute("ukey");
        if(null==log||!log){
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }
        request.setAttribute("key", key);
       
    %>
    
<t:generic>
    <jsp:attribute name="maincss">
        <title>پرداخت برای خرید - داشبورد - لیست حساب های بانکی من</title>
    </jsp:attribute>
    <jsp:body>
        <div class="container-fluid">
            <div class="animated fadeIn">
        
        <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-align-justify"></i> لیست حساب های بانکی
                            </div>
                            <div class="card-block">
                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>نام بانک</th>
                                            <th>شماره حساب</th>
                                            <th>شماره کارت</th>
                                            <th>شبا</th>
                                            <th>وضعیت</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    </tbody>
                                </table>
                                
                            </div>
                        </div>
                    </div>
                    <!--/col-->
                </div>
                </div>
                </div>
    </jsp:body>
</t:generic>
