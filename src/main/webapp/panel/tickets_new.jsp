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
    if (null == log || !log) {
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
    request.setAttribute("key", key);


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
                                    <strong>یک تیکت جدید</strong>
                                    <small>درخواست مورد نظر خود را ثبت بفرمایید.</small>
                                </div>
                                <div class="card-block">

                                    <!--/row-->

                                    <div class="row">

                                        <div class="col-sm-12">

                                            <div class="form-group">
                                                <label for="card">موضوع تیکت</label>
                                                <input type="text" class="form-control" id="card" name="subject" placeholder="موضوع">
                                            </div>

                                        </div>

                                    </div>
                                    <!--/row-->


                                    <!--/row-->
                                    <div class="row">
                                        <div class="col-sm-12">

                                            <div class="form-group">
                                                <label for="editor1">متن درخواست</label>
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
                                </div>
                            </div>
                            <button type="submit" class="btn btn-success">ثبت تیکت جدید</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>

    </jsp:body>
</t:generic>
