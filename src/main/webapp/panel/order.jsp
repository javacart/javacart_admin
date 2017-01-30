<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
    request.setAttribute("page", "products");
    //javax.servlet.http.HttpSession session = request.getSession();

    String mainid=request.getParameter("id");
    String title=request.getParameter("title");
    String time=request.getParameter("time");
    String orderN=request.getParameter("orderN");
    Boolean log = (Boolean) session.getAttribute("login");
    String key = (String) session.getAttribute("ukey");
    if (null == log || !log) {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
    request.setAttribute("key", key);
    request.setAttribute("mainid", mainid);
    request.setAttribute("title", title);
    request.setAttribute("orderN", orderN);
    request.setAttribute("time", time);

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
                                <i class="fa fa-align-justify"></i>   سفارش شماره= ${orderN}
                                <br/>
                                <small>کاربر سفارش دهنده=${title}</small>
                                <span class="pull-left">${time}</span>
                            </div>
                            <div class="card-block">

                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>شماره کالا</th>
                                            <th>نام کالا</th>
                                            <th>قیمت کالا</th>
                                            <th>تعداد</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con6">SELECT
                                            amount,name,price,sp.id
                                            from store_order_item as spi
                                       inner join store_products as sp on sp.id=spi.product_id
                                       where order_id=${mainid}
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">

                                            <tr>
                                                <td>${(counter.index)+1}</td>
                                                <td>${row.id}</td>
                                                <td>${row.name}</td>
                                                <td>${row.price}</td>
                                                <td>${row.amount}</td>
                                                
                                                
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            <a class="btn btn-success" href="${pageContext.request.contextPath}/acceptOrder?id=${mainid}">تایید خرید<i class="fa fa-check-circle-o"></i></a>
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
