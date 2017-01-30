<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

 
<t:index>
    
    <jsp:attribute name="maincss">
        <title>پرداخت برای خرید -بازیابی کلمه عبور</title>
    </jsp:attribute>
    <jsp:body>
             <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    

<style>
            .form-signin {
         border: 1px solid #D8D8D8;
         border-bottom-width: 2px;
         border-top-width: 0;
         background-color: #FFF;
         max-width: 350px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #F5F5F5;
        -webkit-border-radius: 3px;
           -moz-border-radius: 3px;
                border-radius: 3px;
      }
      .form-signin .form-signin-heading {
         font-size: 24px;
         font-weight: 300;
      }

      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
        </style>
        
      <div class="container-fluid">
          <div class="row" style="margin-top: 100px">
              <div class="col-md-8 m-x-auto pull-xs-none vamiddle ">
                    <div class="card p-a-2">
            <form  dir="rtl"  method="get"  action="${pageContext.request.contextPath}/doforgot">
                <h2 class="form-signin-heading">بازیافت گذرواژه</h2>
               
                
                 <div style="color:red" dir="rtl">
           ${message}
       </div>
                <div class="input-group m-b-1">
                                <span class="input-group-addon"><i class="icon-user"></i>
                                </span>
                                <input type="text" name="user" class="form-control en" placeholder="نام کاربری یا ایمیل"/>
                            </div>
                <div dir="ltr">
                     <div class="g-recaptcha" data-sitekey="6LfVCQoUAAAAAE4L5MVFIysHWVaC6uGcaSNCz4c8"></div>

                </div><br/>
                <button class="btn btn-primary" type="submit">
                    ارسال ایمیل بازیافت گذرواژه
                    <i class="icon-circle-arrow-right"></i>
                </button><br/><br/>
                <p><a href="${pageContext.request.contextPath}/login.jsp">ورود</a></p>
                <p><a href="${pageContext.request.contextPath}/register.jsp">ثبت نام</a></p>
            </form>
        </div> <!-- /container -->
        </div> <!-- /container -->
        </div> <!-- /container -->
        </div> <!-- /container -->
      </jsp:body>
</t:index>  