<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@page import="mnm.serv.dogoogle"%>


<%
    Boolean log = (Boolean) session.getAttribute("login");
        
        try{
            if(null!=log||log){
            response.sendRedirect(request.getContextPath()+"/panel/index.jsp");
        }
        }catch(Exception d){
        }
    final dogoogle helper = new dogoogle();
         log = (Boolean) session.getAttribute("login");
        session.setAttribute("state", helper.getStateToken());
            request.setAttribute("login", log);
            request.setAttribute("helper", helper);
    
  %>  
<html >
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content="jbpms.ir"/>
        <meta name="author" content="jbpms"/>
        <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/assets/img/favicon.ico" />
        <title>Jbpms.ir | login</title>
        
        <link href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" rel="stylesheet"/>
        <link href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css" rel="stylesheet"/>
        <!-- Main styles for this application -->
        <link href="${pageContext.request.contextPath}/assets/dest/style.css" rel="stylesheet"/>
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="./assets/js/html5shiv.js"></script>
        <![endif]-->

        <!-- Fav and touch icons -->

    </head>
    <body dir="rtl"  class="navbar-fixed fixed-nav">
        <header class="navbar">
        <div class="container container-nav">
            <button class="navbar-toggler mobile-toggler hidden-lg-up" type="button">&#9776;</button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/"></a>
            
            
               
        </div>
    </header>
    


        

        <main class="main">
                
        <div class="container-fluid">
    <div class="row">
            <div class="col-md-8 m-x-auto pull-xs-none vamiddle">
                <div class="card-group ">
                    <div class="card p-a-2">
                        <form method="get"  action="${pageContext.request.contextPath}/dologin" class="card-block">
                            <h1>ورود</h1>
                            <p class="text-muted">وارد حساب کاربری خود شوید</p>
                            <div class="input-group m-b-1">
                                <span class="input-group-addon"><i class="icon-user"></i>
                                </span>
                                <input type="text" name="user" class="form-control en" placeholder="نام کاربری یا ایمیل"/>
                            </div>
                            <div class="input-group m-b-2">
                                <span class="input-group-addon"><i class="icon-lock"></i>
                                </span>
                                <input type="password" name="pass" class="form-control en" placeholder="رمز ورود"/>
                            </div>
                            <br/>
                            
                            <div class="row">
                                <div class="col-xs-6">
                                    <button type="submit" class="btn btn-primary p-x-2">
                                        <i class="icon-login"></i>
                                        ورود</button>
                                </div>
                                <div class="col-xs-6 text-xs-right">
                                    <a href="${pageContext.request.contextPath}/forgot.jsp" class="btn btn-link p-x-0">فراموشی رمز ورود</a>
                                </div>
                            </div>
                        </form>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    </main>

  
    <footer class="footer">
        <span class="text-left" dir="rtl">
            <a href="http://jbpms.ir">Jbpms</a>
            &#169; ۱۳۹۵
        </span>
        
    </footer>
    <!-- Bootstrap and necessary plugins -->
    <script src="${pageContext.request.contextPath}/assets/js/libs/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/libs/bootstrap.min.js"></script>
    
    <!-- Plugins and scripts required by this views -->
    <!-- Custom scripts required by this view -->
    
    </body>
</html>

