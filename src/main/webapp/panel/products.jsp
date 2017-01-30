<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
    request.setAttribute("page", "products");
    //javax.servlet.http.HttpSession session = request.getSession();

    Boolean log = (Boolean) session.getAttribute("login");
    String key = (String) session.getAttribute("ukey");
    if (null == log || !log) {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
    request.setAttribute("key", key);

%>

<t:generic>
    <jsp:attribute name="mainjs">
        
    </jsp:attribute>
    <jsp:body>
        <div class="container-fluid">
            <div class="animated fadeIn">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-align-justify"></i> لیست  محوصلات فروشگاه
                                <button class="pull-left btn btn-success" type="button" data-toggle="modal" data-target="#newroot">دسته ریشه جدید<i class="fa fa-plus-circle"></i></button>
                            </div>
                            <div class="card-block">

                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>نام محصول</th>
                                            <th>توضیحات</th>
                                            <th>نام دسته</th>
                                            <th>قیمت</th>
                                            <th>قیمت-قدیم</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con6">SELECT sp.id,sp.name,sp.description,c.title,sp.price,sp.oldprice from store_products as sp
                                       inner join category as c on sp.idcateg=c.id
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">

                                            <tr>
                                                <td>${(counter.index)+1}</td>
                                                <td>${row.name}</td>
                                                <td>${row.description}</td>
                                                <td>${row.title}</td>
                                                <td>${row.price}</td>
                                                <td>${row.oldprice}</td>
                                                <td><a href="${pageContext.request.contextPath}/pd?id=${row.id}"><i class="fa fa-times"></i> حذف</a>
                                                <a href="${pageContext.request.contextPath}/panel/image.jsp?id=${row.id}&title=${row.name}"><i class="fa fa-picture-o"></i> تصاویر</a></td>
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
        <div id="newroot" class="modal fade">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">درج کالای جدید</h4>
                    </div>
                   <form action="${pageContext.request.contextPath}/pn" method="get" enctype="multipart/form-data">
                    <div class="modal-body">
                        
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank2">نام کالا</label>
                                            <input type="text" class="form-control" id="bank2" name="title" placeholder="نام کالا"/>
                                        </div>

                                    </div>

                                </div>
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank2">توضیحات</label>
                                            <input type="text" class="form-control" id="bank2" name="desc" placeholder="توضیحات"/>
                                        </div>

                                    </div>

                                </div>
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank2">قیمت</label>
                                            <input type="text" class="form-control" id="bank2" name="price" placeholder="قیمت "/>
                                        </div>

                                    </div>

                                </div>
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank2">قیمت سابق</label>
                                            <input type="text" class="form-control" id="bank2" name="oprice" placeholder="قیمت سابق"/>
                                        </div>

                                    </div>

                                </div>
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank3">دسته کالا</label>
                                            <select class="form-control"  name="categ">
                                                <sql:query var="result" dataSource="con6">
                                            SELECT id,title  FROM category where isbanner='0'
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">
                                                <option value="${row.id}">${row.title}</option>
                                        </c:forEach>
                                            </select>
                                        </div>

                                    </div>

                                </div>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">لغو</button>
                        <button type="submit" class="btn btn-success" >درج کالا</button>
                    </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        
    </jsp:body>
</t:generic>
