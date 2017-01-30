<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
    request.setAttribute("page", "bill");
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
                                <i class="fa fa-align-justify"></i> لیست  دسته های اصلی فروشگاه
                                <button class="pull-left btn btn-success" type="button" data-toggle="modal" data-target="#newroot">دسته ریشه جدید<i class="fa fa-plus-circle"></i></button>
                            </div>
                            <div class="card-block">

                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>نام دسته</th>
                                            <th>آدرس</th>
                                            <th>حذف دسته</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con6">SELECT id,title  FROM category where parent='0' </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">

                                            <tr>
                                                <td>${(counter.index)+1}</td>
                                                <td>${row.title}</td>
                                                <td>${row.url}</td>
                                                <td><a href="${pageContext.request.contextPath}/cd?id=${row.id}"><i class="fa fa-times"></i> حذف</a></td>
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
                                <i class="fa fa-align-justify"></i> لیست  دسته های زیر اصلی فروشگاه
                                <button class="pull-left btn btn-success" type="button" data-toggle="modal" data-target="#newroot2"> زیر دسته اصلی جدید<i class="fa fa-plus-circle"></i></button>
                            </div>
                            <div class="card-block">

                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>نام دسته ریشه</th>
                                            <th>نام دسته</th>
                                            <th>آدرس</th>
                                            <th>حذف دسته</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con6">
                                            SELECT d.title,d.id,d.url,concat(c.title,'') as dtitle FROM `category` as d
                                            inner join category as c on c.id=d.parent
                                            where c.parent=0 and d.isbanner=0
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">

                                            <tr>
                                                <td>${(counter.index)+1}</td>
                                                <td>${row.dtitle}</td>
                                                <td>${row.title}</td>
                                                <td>${row.url}</td>
                                                <td><a href="${pageContext.request.contextPath}/cd?id=${row.id}"><i class="fa fa-times"></i> حذف</a></td>
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
                                <i class="fa fa-align-justify"></i> لیست  دسته های نهایی فروشگاه
                                <button class="pull-left btn btn-success" type="button" data-toggle="modal" data-target="#newroot3">دسته نهایی جدید<i class="fa fa-plus-circle"></i></button>
                            </div>
                            <div class="card-block">

                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>#</th>

                                            <th>نام دسته</th>
                                            <th>نام دسته نهایی</th>
                                            <th>آدرس</th>
                                            <th>حذف دسته</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con6">
                                            SELECT d.title,d.id,d.url,concat(c.title,'') as dtitle FROM `category` as d
                                            inner join category as c on c.id=d.parent
                                            where c.parent!=0 and d.isbanner=0
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">

                                            <tr>
                                                <td>${(counter.index)+1}</td>
                                                <td>${row.dtitle}</td>
                                                <td>${row.title}</td>
                                                <td>${row.url}</td>
                                                <td><a href="${pageContext.request.contextPath}/cd?id=${row.id}"><i class="fa fa-times"></i> حذف</a></td>
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
                                <i class="fa fa-align-justify"></i> لیست  بنرهای موجود در هر دسته در فروشگاه
                                <button class="pull-left btn btn-success" type="button" data-toggle="modal" data-target="#newbanner">بنر جدید<i class="fa fa-plus-circle"></i></button>
                            </div>
                            <div class="card-block">

                                <table class="table table-bordered table-striped table-condensed">
                                    <thead>
                                        <tr>
                                            <th>#</th>

                                            <th>نام دسته</th>
                                            <th>نام دسته نهایی</th>
                                            <th>آدرس</th>
                                            <th>تصویر</th>
                                            <th>حذف دسته</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <sql:query var="result" dataSource="con6">
                                            SELECT d.imgsrc,d.title,d.id,d.url,concat(c.title,'') as dtitle FROM `category` as d
                                            inner join category as c on c.id=d.parent
                                            where  d.isbanner=1
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">

                                            <tr>
                                                <td>${(counter.index)+1}</td>
                                                <td>${row.dtitle}</td>
                                                <td>${row.title}</td>
                                                <td>${row.url}</td>
                                                <td><img height="64" src="http://jbpms.ir/res/img/product/${row.imgsrc}"/></td>
                                                <td><a href="${pageContext.request.contextPath}/cd?id=${row.id}"><i class="fa fa-times"></i> حذف</a></td>
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
        <div id="newbanner" class="modal fade">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">درج بنر جدید</h4>
                    </div>
                   <form id="UploadForm" action="${pageContext.request.contextPath}/doupload" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                        
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank2">آدرس</label>
                                            <input type="text" class="form-control" id="bank2" name="url" placeholder="url"/>
                                        </div>

                                    </div>

                                </div>
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank3">دسته ریشه</label>
                                            <select class="form-control"  name="parent">
                                                <sql:query var="result" dataSource="con6">
                                            SELECT id,title  FROM category where parent='0'
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">
                                                <option value="${row.id}">${row.title}</option>
                                        </c:forEach>
                                            </select>
                                        </div>

                                    </div>

                                </div>
                        <div class="row">
                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="card">بنر جدید</label>
                                            

                                                <div class="progress">
                                                    <div id="progressbar" class="bar bar-success" style="width: 0%;"></div>
                                                </div>
                                                <input type="file" size="60" id="myfile" name="myfile"> 
                                                
                                                <div id="progressbox">

                                                    <div id="percent">0%</div>
                                                </div>
                                                <br />
                                                <div id="message"></div>
                                            
                                            <!--/row-->




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
        <div id="newroot" class="modal fade">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">درج دسته ریشه جدید</h4>
                    </div>
                    <form method="get"  action="${pageContext.request.contextPath}/cn">
                    <div class="modal-body">
                        
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank">نام دسته</label>
                                            <input type="text" class="form-control" id="bank" name="category" placeholder="نام دسته"/>
                                        </div>

                                    </div>

                                </div>
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank2">آدرس</label>
                                            <input type="text" class="form-control" id="bank2" name="url" placeholder="url"/>
                                        </div>

                                    </div>

                                </div>
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank3">دسته ریشه</label>
                                            <input type="text" value="0" class="form-control disabled" id="bank3" name="parent" placeholder="url"/>
                                        </div>

                                    </div>

                                </div>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">لغو</button>
                        <button type="submit" class="btn btn-primary">درج دسته</button>
                    </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <div id="newroot2" class="modal fade">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">درج دسته زیر اصلی جدید</h4>
                    </div>
                    <form method="get"  action="${pageContext.request.contextPath}/cn">
                    <div class="modal-body">
                        
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank">نام دسته</label>
                                            <input type="text" class="form-control" id="bank" name="category" placeholder="نام دسته"/>
                                        </div>

                                    </div>

                                </div>
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank2">آدرس</label>
                                            <input type="text" class="form-control" id="bank2" name="url" placeholder="url"/>
                                        </div>

                                    </div>

                                </div>
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank3">دسته ریشه</label>
                                            <select class="form-control"  name="parent">
                                                <sql:query var="result" dataSource="con6">
                                            SELECT id,title  FROM category where parent='0'
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
                        <button type="submit" class="btn btn-primary">درج دسته</button>
                    </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <div id="newroot3" class="modal fade">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">درج دسته نهایی جدید</h4>
                    </div>
                    <form method="get"  action="${pageContext.request.contextPath}/cn">
                    <div class="modal-body">
                        
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank">نام دسته</label>
                                            <input type="text" class="form-control" id="bank" name="category" placeholder="نام دسته"/>
                                        </div>

                                    </div>

                                </div>
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank2">آدرس</label>
                                            <input type="text" class="form-control" id="bank2" name="url" placeholder="url"/>
                                        </div>

                                    </div>

                                </div>
                            <div class="row">

                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="bank3">دسته ریشه</label>
                                            <select class="form-control"  name="parent">
                                                <sql:query var="result" dataSource="con6">
                                            SELECT d.title,d.id,d.url,concat(c.title,'') as dtitle FROM `category` as d
                                            inner join category as c on c.id=d.parent
                                            where c.parent=0 and d.isbanner=0
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
                        <button type="submit" class="btn btn-primary">درج دسته</button>
                    </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
    </jsp:body>
</t:generic>
