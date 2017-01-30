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
        <title>پرداخت برای خرید - داشبورد -درخواست درگاه جدید</title>
    </jsp:attribute>
    <jsp:body>
        <div class="container-fluid">
            <div class="animated fadeIn">
        <div class="row">
            <form method="get"  action="${pageContext.request.contextPath}/merchentnew">
        <div class="col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>یک درگاه جدید</strong>
                                <small>اطلاعات وب سایت خود را وارد کنید</small>
                            </div>
                            <div class="card-block">
                                <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank">نام سایت</label>
                                            <input type="text" class="form-control" id="card" name="name" placeholder="پرداخت برای خرید"/>
                                        </div>

                                    </div>

                                </div>
                                <!--/row-->

                                <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="card">آدرس وب سایت</label>
                                            <input type="text" class="form-control" id="card" name="site" placeholder="www.pay4buy.ir"/>
                                        </div>

                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="card3">شماره تماس پشتیبانی سایت</label>
                                            <input type="text" class="form-control" id="card3" name="tel" placeholder="09123456789"/>
                                        </div>

                                    </div>

                                </div>
                                <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="card2">توضیحات روش کار وب سایت</label>
                                            <textarea rows="10" type="text" class="form-control" id="card2" name="desc" placeholder="توضیحات"></textarea>
                                        </div>

                                    </div>

                                </div>
                                <!--/row-->

                                
                            </div>
                        </div>
            <button type="submit" class="btn btn-success">ثبت درگاه جدید</button>
                    </div>
            
            </form>
                    </div>
                    </div>
                    </div>
    </jsp:body>
</t:generic>
