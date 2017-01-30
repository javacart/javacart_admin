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
        <title>پرداخت برای خرید - داشبورد -تراکنش های درگاه ها</title>
    </jsp:attribute>
    <jsp:body>
        
        <div class="container-fluid">
            <div class="animated fadeIn">
        
        <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-align-justify"></i> لیست واریزی های به درگاه های شما
                            </div>
                            <div class="card-block">
                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>نام درگاه </th>
                                            <th>نام واریز کننده</th>
                                            <th>شماره کارت واریز کننده</th>
                                            <th>مبلغ واریزی</th>
                                            <th>زمان</th>
                                            <th>کد بانکی</th>
                                            <th>وضعیت پرداخت</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con5">SELECT ps.customername,ps.customerbank,ps.customercard,
                                            ps.dtpersian,ps.price,vaziat,dargah.name,ps.bankreport 
                                            FROM paymentservice as ps 
                                            inner join dargah on dargah.id=iddargah
                                            where ps.userid='${key}'  
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">
                                        <tr>
                                            <td>${row.name}</td>
                                            <td>${row.customername}</td>
                                            <td>${row.customercard}</td>
                                            <td>${row.price}</td>
                                            <td>${row.dtpersian}</td>
                                            <td>${row.bankreport}</td>
                                            <td>    
                                                <c:if test="${row.vaziat}">
                                                    <span class="tag tag-success">موفق</span>
                                                </c:if>
                                                <c:if test="${!row.vaziat}">
                                                    <span class="tag tag-danger">خطا</span>
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
