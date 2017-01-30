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
        <title>پرداخت برای خرید - داشبورد -تراکنش ها</title>
    </jsp:attribute>
    <jsp:body>
        
        <div class="container-fluid">
            <div class="animated fadeIn">
        
        <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-align-justify"></i> لیست درخواست های برداشت از حساب
                            </div>
                            <div class="card-block">
                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>نام درگاه مبدا</th>
                                            <th>نام حساب مقصد</th>
                                            
                                            <th>هزینه</th>
                                            <th>زمان</th>
                                            <th>واریز/برداشت</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con5">SELECT t.dt,t.price,isdeposit,dargah.name,hesab.bankname FROM transaction as t 
                                            inner join hesab on hesab.id=idhesab
                                            inner join dargah on dargah.id=iddargah
                                            where t.userid='${key}'  
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">
                                        <tr>
                                            <td>${row.name}</td>
                                            <td>${row.bankname}</td>
                                            <td>${row.dt}</td>
                                            <td>${row.price}</td>
                                            <td>    
                                                <c:if test="${row.isdeposit}">
                                                    <span class="tag tag-success">واریز</span>
                                                </c:if>
                                                <c:if test="${!row.isdeposit}">
                                                    <span class="tag tag-danger">برداشت</span>
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
