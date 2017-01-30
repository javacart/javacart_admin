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
        <title>پرداخت برای خرید - داشبورد -درخواست واریز به حساب</title>
    </jsp:attribute>
    <jsp:body>
        <div class="container-fluid">
            <div class="animated fadeIn">
        <div class="row">
            <form method="get"  action="${pageContext.request.contextPath}/newwithdraw">
        <div class="col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>واریز به حساب</strong>
                                <small>واریز به درگاه های موجود</small>
                            </div>
                            <div class="card-block">
                                <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="price">مبلغ مورد نظر جهت واریز</label>
                                            <input type="text" class="form-control" id="card" name="price" placeholder="">
                                            <span class="help-block">به تومان</span>
                                        </div>

                                    </div>

                                </div>
                                <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="dargah">نام درگاه</label>
                                            <select class="form-control" id="bank" name="dargah">
                                            <sql:query var="result" dataSource="con5">SELECT id,domain,name,ip,status,directdargah,mobildargah FROM dargah where userid='${key}'  </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">
                                            <option value="${row.id}">${row.name}</option>
                                        </c:forEach>
                                            
                                        </select>
                                        </div>

                                    </div>

                                </div>
                                        
                                <!--/row-->

                                
                                <!--/row-->

                                
                                <!--/row-->
                                
                            </div>
                        </div>
            <button type="submit" class="btn btn-success">ثبت درخواست واریز</button>
                    </div>
            
            </form>
                    </div>
                    </div>
                    </div>
    </jsp:body>
</t:generic>
