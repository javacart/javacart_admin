<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
    
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
        <title>پرداخت برای خرید - داشبورد -فاکتورهای من</title>
    </jsp:attribute>
    <jsp:body>
        
        
        
            
            
            <div class="container-fluid">
            <div class="animated fadeIn">
        
        <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-align-justify"></i> لیست فاکتورهای من
                            </div>
                            <div class="card-block">
                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
            <tr >
            <th style="text-align: center">
              <h4 style="font-size: 16px;">شماره فاکتور</h4>
            </th>
            <th style="text-align: center">
              <h4 style="font-size: 16px;">سرویس انتخابی</h4>
            </th>
            
            
            <th style="text-align: center">
              <h4 style="font-size: 16px;">مبلغ</h4>
            </th>
            <th style="text-align: center">
                <h4 style="font-size: 16px;">وضعیت پرداخت</h4>
            </th>
            <th style="text-align: center">
                <h4 style="font-size: 16px;">تاریخ</h4>
            </th>
            <th style="text-align: center">
                <h4 style="font-size: 16px;">پرداخت</h4>
            </th>
            
          </tr>
        </thead>
        <tbody>
            <sql:query var="result" dataSource="con5">SELECT id,price,plan,description,dt,status FROM bill
                where iduser='${key}'  </sql:query>
            <c:forEach varStatus="counter" var="row" items="${result.rows}">
                <tr >
            
            <td><a href="#">${row.id}</a></td>
            <td class="text-center">${row.plan}</td>
            <td class="text-center">${row.price} </td>
            <td class="text-center">${(row.status eq '1')?'پرداخت شده':'پرداخت نشده'} </td>
            <td class="text-center">${row.dt} </td>
            <td class="text-center">
                <c:if test="${row.status eq '0'}">
                    
                    <a href="${pageContext.request.contextPath}/bill?id=${row.id}">پرداخت</a> 
                </c:if>
                    <c:if test="${row.status eq '1'}">
                        <span class="tag tag-success">پرداخت شده</span>
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
