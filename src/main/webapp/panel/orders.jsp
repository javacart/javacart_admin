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
                                <i class="fa fa-align-justify"></i> لیست  سفارشات فروشگاه
                                
                            </div>
                            <div class="card-block">

                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>شماره سفارش</th>
                                            <th>زمان سفارش</th>
                                            <th>کاربر سفارش دهنده</th>
                                            <th>وضعیت</th>
                                            <th>قیمت</th>
                                            
                                            <th>-</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                            <sql:query var="result" dataSource="con6">SELECT
                                                orderNum,cost,dt,u.name,store_order.id,status
                                                from store_order
                                           inner join users as u on u.id=store_order.iduser
                                            </sql:query>
                                            <c:forEach varStatus="counter" var="row" items="${result.rows}">

                                                <tr>
                                                    <td>${(counter.index)+1}</td>
                                                    <td>${row.orderNum}</td>
                                                    <td>${row.dt}</td>
                                                    <td>${row.name}</td>
                                                    <td>
                                                        <c:if test="${row.status}">
                                                            <span class="tag tag-success">در حال ارسال به مشتری</span>
                                                        </c:if>
                                                        <c:if test="${!row.status}">
                                                            <span class="tag tag-danger">نیاز به ترتیب اثر دارد</span>
                                                        </c:if></td>
                                                    <td>${row.cost}</td>

                                                    <td><a href="${pageContext.request.contextPath}/od?id=${row.id}"><i class="fa fa-times"></i> حذف</a>
                                                    <a href="${pageContext.request.contextPath}/panel/order.jsp?id=${row.id}&title=${row.name}&orderN=${row.orderNum}&time=${row.dt}"><i class="fa fa-deafness"></i> جزییات</a></td>
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
