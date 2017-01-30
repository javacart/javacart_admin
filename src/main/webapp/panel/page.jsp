<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
    request.setAttribute("page", "page");
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
        <script src="${pageContext.request.contextPath}/assets/js/jquery.form.min.js" ></script>
        <script src="${pageContext.request.contextPath}/assets/js/upload.js" ></script>
    </jsp:attribute>
    <jsp:body>
        <div class="container-fluid">
            <div class="animated fadeIn">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-align-justify"></i>
                                لیست  تصاویر اسلایدر اول صفحه اصلی فروشگاه
                                <button class="pull-left btn btn-success" type="button" data-toggle="modal" data-target="#newslider1">تصویر جدید<i class="fa fa-plus-circle"></i></button>
                            </div>
                            <div class="card-block">

                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>تصویر</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con6">SELECT
                                            imgsrc,id from index_material where isslider=1
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">

                                            <tr>
                                                <td>${(counter.index)+1}</td>
                                                <td><img height="64" src="http://jbpms.ir/res/img/slider/${row.imgsrc}"/></td>
                                                <td><a href="${pageContext.request.contextPath}/s1d?id=${row.id}"><i class="fa fa-times"></i> حذف</a></td>
                                                
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--/col-->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-align-justify"></i>
                                آیتم های ویژه با توضیحات صفحه اصلی فروشگاه
                                <button class="pull-left btn btn-success" type="button" data-toggle="modal" data-target="#newadv">آیتم جدید<i class="fa fa-plus-circle"></i></button>
                            </div>
                            <div class="card-block">

                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>آیکون</th>
                                            <th>عنوان</th>
                                            <th>متن</th>
                                            <th>آدرس لینک</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con6">SELECT
                                            adv_title,adv_desc,adv_icon,url,id from index_material where isadvantage=1
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">

                                            <tr>
                                                <td>${(counter.index)+1}</td>
                                                <td><i class="fa ${row.adv_icon}"></i> ${row.adv_icon}</td>
                                                <td>${row.adv_title}</td>
                                                <td>${row.adv_desc}</td>
                                                <td>${row.url}</td>
                                                <td><a href="${pageContext.request.contextPath}/s1d?id=${row.id}"><i class="fa fa-times"></i> حذف</a></td>
                                                
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--/col-->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-align-justify"></i>
                                کالا های ویژه هفته
                                <button class="pull-left btn btn-success" type="button" data-toggle="modal" data-target="#newh">انتخاب کالا<i class="fa fa-plus-circle"></i></button>
                            </div>
                            <div class="card-block">

                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>نام کالا</th>
                                            <th>قیمت</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con6">SELECT
                                            p.name,p.price,im.id from index_material as im
                                            inner join store_products as p on p.id=im.idproduct
                                            where ishweak=1
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">

                                            <tr>
                                                <td>${(counter.index)+1}</td>
                                                <td>${row.name}</td>
                                                <td>${row.price}</td>
                                                <td><a href="${pageContext.request.contextPath}/s1d?id=${row.id}"><i class="fa fa-times"></i> حذف</a></td>
                                                
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--/col-->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-align-justify"></i>
                                لیست  تصاویر اسلایدر دوم صفحه اصلی فروشگاه
                                <button class="pull-left btn btn-success" type="button" data-toggle="modal" data-target="#newslider2">تصویر جدید<i class="fa fa-plus-circle"></i></button>
                            </div>
                            <div class="card-block">

                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>تصویر</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con6">SELECT
                                            imgsrc,id from index_material where isslider2=1
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">

                                            <tr>
                                                <td>${(counter.index)+1}</td>
                                                <td><img height="64" src="http://jbpms.ir/res/img/slider/${row.imgsrc}"/></td>
                                                <td><a href="${pageContext.request.contextPath}/s1d?id=${row.id}"><i class="fa fa-times"></i> حذف</a></td>
                                                
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
        <div id="newslider1" class="modal fade">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">   آپلود اسلایدر جدید</h4>
                    </div>
                   <form id="UploadForm" action="${pageContext.request.contextPath}/s1n" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                        
                            <div class="row">
                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="card">اسلایدر جدید</label>
                                                <div class="progress">
                                                    <div id="progressbar" class="bar bar-success" style="width: 0%;"></div>
                                                </div>
                                                <input type="file" size="60" id="myfile" name="myfile"> 
                                                <div id="progressbox">
               <div id="percent">0%</div>
                                                </div>
                                                <br />
                                                <div id="message"></div>
                                        </div>

                                    </div>

                                </div>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">لغو</button>
                        <button type="submit" class="btn btn-success" >آپلود</button>
                    </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <div id="newslider2" class="modal fade">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">   آپلود اسلایدر جدید</h4>
                    </div>
                   <form id="UploadForm" action="${pageContext.request.contextPath}/s2n" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                        
                            <div class="row">
                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="card">اسلایدر جدید</label>
                                                <div class="progress">
                                                    <div id="progressbar" class="bar bar-success" style="width: 0%;"></div>
                                                </div>
                                                <input type="file" size="60" id="myfile" name="myfile"> 
                                                <div id="progressbox">
               <div id="percent">0%</div>
                                                </div>
                                                <br />
                                                <div id="message"></div>
                                        </div>

                                    </div>

                                </div>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">لغو</button>
                        <button type="submit" class="btn btn-success" >آپلود</button>
                    </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <div id="newadv" class="modal fade">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">   آیتم جدید</h4>
                    </div>
                   <form action="${pageContext.request.contextPath}/an" method="get" >
                    <div class="modal-body">
                        
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank2">عنوان آیتم</label>
                                            <input type="text" class="form-control" id="bank2" name="title" placeholder="نام آیتم"/>
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
                                            <label for="bank2">لینک</label>
                                            <input type="text" class="form-control" id="bank2" name="url" placeholder="لینک "/>
                                        </div>

                                    </div>

                                </div>
                           
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank3">آیکون</label>
                                            <input type="text" class="form-control" id="bank2" name="icon" placeholder="آیکون "/>
                                            <a href="${pageContext.request.contextPath}/panel/icon.jsp">لیست آیکون ها</a>
                                        </div>

                                    </div>

                                </div>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">لغو</button>
                        <button type="submit" class="btn btn-success" >درج آیتم</button>
                    </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <div id="newh" class="modal fade">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">  کالای هفته</h4>
                    </div>
                   <form action="${pageContext.request.contextPath}/hn" method="get" >
                    <div class="modal-body">
                        
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank3">کالا</label>
                                            <select class="form-control"  name="id">
                                                <sql:query var="result" dataSource="con6">
                                            SELECT id,name  FROM store_products
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">
                                                <option value="${row.id}">${row.name}</option>
                                        </c:forEach>
                                            </select>
                                        </div>

                                    </div>

                                </div>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">لغو</button>
                        <button type="submit" class="btn btn-success" >انتخاب آیتم</button>
                    </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        
    </jsp:body>
</t:generic>
