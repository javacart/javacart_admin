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
        //javax.servlet.http.HttpSession session = request.getSession();
        request.setAttribute("page", "support");
        
        Boolean log = (Boolean) session.getAttribute("login");
        String key = (String) session.getAttribute("ukey");
        if(null==log||!log){
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }
        String id = (String) request.getParameter("id");
        String sub = (String) request.getParameter("sub");
        if(null==key||key.length()==0){key="1";}
        session.setAttribute("ticketnumber", id);
        session.setAttribute("subject", sub);
        request.setAttribute("key", key);
        request.setAttribute("id", id);
       
    %>
    
<t:generic>
    <jsp:attribute name="maincss">
        <title>پرداخت برای خرید - داشبورد -پشتیبانی</title>
    </jsp:attribute>
    <jsp:body>
        
    <script src="${pageContext.request.contextPath}/assets/ckeditor/ckeditor.js"></script>                    
        <div class="container-fluid">
            <div class="animated fadeIn">
                <div class="row">
                    <form method="get"  action="${pageContext.request.contextPath}/sendticket">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                     تیکت شماره ${ticketnumber}<br/>
                                     با عنوان:
                                     <small>
                                         ${subject}
                                     </small>
                                </div>
                                <div class="card-block">

                                    <!--/row-->

                                    <div class="row">

                                        <sql:query var="result" dataSource="con5">SELECT id,subject,dtpersian,ticketnumber,texts,fromto FROM tickets
                            where ticketnumber=${id} and iduser=${key} </sql:query>
                        
                        
                                        <blockquote class="card-blockquote">
                                        
                            <c:forEach varStatus="counter" var="row" items="${result.rows}">
                                <div class="callout callout-info m-a-0 p-y-1">
                                    <div class="avatar pull-xs-right" style="margin-left: 40px">
                                                <c:if test="${row.fromto eq 1}">
                                                    <img  src="${pageContext.request.contextPath}/assets/img/pay4buy.png" alt="" width="64px">
                                                    </c:if>
                                                    <c:if test="${row.fromto eq 0}">
                                                        <img  src="${pageContext.request.contextPath}/assets/img/Icon-user.png" alt="" width="64px">
                                                    </c:if>
                                            </div>
                                            <div style="text-align: right">متن پیام:
                                                <br/>
                                                <strong>${row.texts}</strong>
                                            </div>
                                            <small class="text-muted m-r-1" >
                                                &nbsp;
                                                ${row.dtpersian}
                                                <i class="icon-calendar"></i>
                                            </small>
                                            
                                            
                                        </div>
                                        <hr class="m-x-1 m-y-0">
                                
                            </c:forEach>
                                        </blockquote>
                                    </div>
                                    <!--/row-->


                                    <!--/row-->
                                    <div class="row">
                                        <div class="col-sm-12">

                                            <div class="form-group">
                                                <label for="editor1">متن پاسخ</label>
                                                <textarea name="ticketnew" cols="100" rows="20" id="editor1"></textarea><br/><br/>
                                                <script>
                                                    // Replace the <textarea id="editor1"> with a CKEditor
                                                    // instance, using default configuration.
                                                    CKEDITOR.replace('editor1', {
                                                        extraPlugins: 'font',
                                                    });
                                                </script>
                                            </div>

                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-success">ثبت پاسخ </button>
                                </div>
                            </div>
                            
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </jsp:body>
</t:generic>
