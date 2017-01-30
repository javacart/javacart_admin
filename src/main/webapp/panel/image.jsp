<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
    request.setAttribute("page", "products");
    //javax.servlet.http.HttpSession session = request.getSession();
    String mainid=request.getParameter("id");
    String title=request.getParameter("title");
    Boolean log = (Boolean) session.getAttribute("login");
    String key = (String) session.getAttribute("ukey");
    if (null == log || !log) {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
    request.setAttribute("key", key);
    request.setAttribute("mainid", mainid);
    request.setAttribute("title", title);

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
                                <i class="fa fa-align-justify"></i> لیست  تصاویر این کالا در فروشگاه
                                <button class="pull-left btn btn-success" type="button" data-toggle="modal" data-target="#newbanner">فایل جدید<i class="fa fa-plus-circle"></i></button>
                            </div>
                            <div class="card-block">

                                

                                
                                        <sql:query var="result" dataSource="con6">SELECT
                                            id,url
                            FROM store_products_img
                            where idproduct=${mainid} 
                                        </sql:query>
                                        <c:forEach varStatus="counter" var="row" items="${result.rows}">
                                            <div class="col-lg-3 card">
                                                <img width="100%" class="card-img-top" src="http://jbpms.ir/res/img/product/${row.url}" alt="Card image cap">
  <div class="card-block">
    <h4 class="card-title">${title}</h4>
    
    <a href="${pageContext.request.contextPath}/pid?id=${row.id}&id2=${mainid}&title=${title}" class="btn btn-primary">حذف تصویر</a>
  </div>
</div>
                                            
                                           
                                        </c:forEach>
                                    
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
                        <h4 class="modal-title">آپلود تصویر جدید</h4>
                    </div>
                   <form id="UploadForm" action="${pageContext.request.contextPath}/pimage" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                        
                            
                            
                        <div class="row">
                                    <div class="col-sm-12">

                                        <div class="form-group">
                                            <label for="card">فایل جدید</label>
                                            

                                            <progress id="progressbar" class="progress progress-success" value="0" max="100"></progress>

                                                <input type="file" size="60" id="myfile" name="myfile"> 
                                                <input type="hidden"  name="id" value="${mainid}"> 
                                                <input type="hidden" name="title" value="${title}"> 
                                                
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
        </div><!-- /.modal --><!-- /.modal -->
        
    </jsp:body>
</t:generic>
