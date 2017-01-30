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
    request.setAttribute("page", "support");
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
        <title>پرداخت برای خرید - داشبورد -پشتیبانی</title>
    </jsp:attribute>
    <jsp:body>
        
        <div class="container-fluid">
            <div class="animated fadeIn">
        
        <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-align-justify"></i> لیست تیکت های من
                                <div class="pull-left">
                                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/panel/tickets_new.jsp">تیکت جدید</a>
                                </div>
                            </div>
                            <div class="card-block">
                                <table class="table table-bordered table-striped table-hover" dir="rtl">
        <thead>
            <tr >
            <th style="text-align: center">
              <h4 style="font-size: 16px;">شماره تیکت</h4>
            </th>
            <th style="text-align: center">
              <h4 style="font-size: 16px;">موضوع</h4>
            </th>
            
            
            <th style="text-align: center">
              <h4 style="font-size: 16px;">تاریخ ثبت تیکت</h4>
            </th>
            <th style="text-align: center">
                <h4 style="font-size: 16px;">پاسخ</h4>
            </th>
            
          </tr>
        </thead>
        <tbody>
            <sql:query var="result" dataSource="con5">SELECT id,subject,dtpersian,ticketnumber,status FROM tickets
                where iduser='${key}'  group by ticketnumber </sql:query>
            <c:forEach varStatus="counter" var="row" items="${result.rows}">
            <tr>
                <td>${row.ticketnumber}</td>
            <td class="text-center">${row.subject}</td>
            
            <td class="text-center">${row.dtpersian} </td>
            <td class="text-center">
                <c:if test="${row.status==0}">
                    بسته شد.
                </c:if>
                <c:if test="${row.status==1}">
                    <a href="${pageContext.request.contextPath}/panel/tickets_one.jsp?id=${row.ticketnumber}&sub=${row.subject}">ارسال پاسخ</a> 
                </c:if>
                
            </td>
            </tr>
          </c:forEach>
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
