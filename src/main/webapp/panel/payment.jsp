<%-- 
    Document   : test
    Created on : May 14, 2016, 11:11:51 AM
    Author     : mohammadghasemy
--%>

<%@page import="mnm.zarinpal.checkservlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
    request.setAttribute("page", "bill");
    %>
    <t:index>
    <jsp:attribute name="maincss">
        <title>پرداخت برای خرید - داشبورد -پرداخت</title>
    </jsp:attribute>
    <jsp:body>
        
        <div class="container-fluid">
      <div class="row-fluid">
        

          <div class="card">
                 
              <div class="card-header">
                  
                  <h2><small dir="rtl">شماره فاکتور: ${invoice}</small></h2>
              </div>
                  <div class="card-body">
          
                      <form class="container-fluid" action="${pageContext.request.contextPath}/payment">
      
        
      
      <div class="row-fluid">
        <div class="col-sm-5">
          <div class="panel panel-default">
            <div class="panel-heading">
                <h4 dir="rtl">صادر کننده فاکتور <a href="#">پرداخت برای خرید</a></h4>
            </div>
            <div class="panel-body">
              <p dir='rtl'>
                آدرس:http://pay4buy.ir <br>
                واحد رسیدگی به مشتریان:support@pay4buy.ir <br>
                تلفن رسیدگی به مشتریان:۰۹۳۸۷۷۱۹۱۳۵۱ <br>
              </p>
            </div>
          </div>
        </div>
        <div class="col-sm-5 offset-md-2 text-right">
            <div class="panel panel-default" dir="rtl">
            <div class="panel-heading">
              <h4>سفارش گیرنده:</h4>
            </div>
            <div class="panel-body">
              
                <p>
                    نام:<span class="bold"> ${name}</span><br/>
                    ایمیل:<span class="bold"> ${user}</span><br/>
                    شماره تماس:<span class="bold"> ${tel}</span><br/>
                  <br>
                   
              </p>
            </div>
          </div>
        </div>
      </div>
      <!-- / end client details section -->
      <table class="table table-bordered table-condensed table-hover" dir="rtl">
        <thead>
            <tr >
            <th style="text-align: center">
              <h4> پلان انتخاب</h4>
            </th>
            <th style="text-align: center">
              <h4>توضیحات</h4>
            </th>
            
            <th style="text-align: center">
              <h4>هزینه سالانه</h4>
            </th>
            <th style="text-align: center">
              <h4>هزینه کل</h4>
            </th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>${plan}</td>
            <td><a href="#">${desc}</a></td>
            
            <td class="text-center">${price} تومان</td>
            <td class="text-center">${price} تومان</td>
          </tr>
          
        </tbody>
      </table>
      <div class=" row">
        
        <div class="col-sm-2">
            <p dir="rtl">
            <strong>
            هزینه کلی : <br>
            هزینه راه اندازی درگاه : <br>
            جمع کل : <br>
            </strong>
          </p>
        </div>
          <div class="col-sm-2 ">
          <strong dir="rtl">
          ${price} تومان<br>
          رایگان <br>
          ${price} تومان<br>
          </strong>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-5">
            <div class="panel panel-info" dir="rtl">
            <div class="panel-heading">
              <h4>پرداخت آنلاین:</h4>
            </div>
            <div class="panel-body">
              <p>
                  <input type="submit" class="btn btn-success" value="پرداخت آنلاین"/>
                </p>
                
            </div>
          </div>
          
        </div>
        
          <div class="col-sm-7">
            <div class="panel panel-info" dir="rtl">
              <div class="panel-heading">
                <h4> پرداخت آفلاین:</h4>
              </div>
              <div class="panel-body">
                <p>
                    کارت به کارت ملت: <span dir="ltr">6104 3378 3828 4592</span><br/>
                  شماره حساب جاری ملت: ۴۶۰۹۷۲۳۲۸۲ 
                </p>
                <p>
                    پس از پرداخت شماره سریال پرداخت را به 
                    support@pay4buy.ir
                    ارسال کنید. <br/>
                   پرینت این صفحه را به ضمیمه نامه خود ارسال کنید.
                </p>
                
              </div>
                
                
            </div>
          </div>
        
      </div>
          </form>
          
        
      </div><!--/row-->
      </div><!--/row-->


    </div><!--/.fluid-container-->
    </div><!--/.fluid-container-->
        
    
        
    

    
    </jsp:body>
    </t:index>
