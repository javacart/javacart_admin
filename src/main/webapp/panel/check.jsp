<%-- 
    Document   : test
    Created on : May 14, 2016, 11:11:51 AM
    Author     : mohammadghasemy
--%>

<%@page import="mnm.zarinpal.checkservlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
            String Status = (String) request.getParameter("Status");
            String Authority = (String) request.getParameter("Authority");
            String alert="info";
            String stat="متاسفانه پرداخت انجام نشد.  ";
            String id=(String)session.getAttribute("billid");
            String cost=(String)session.getAttribute("price");
            String user=(String)session.getAttribute("ukey");
            String email=(String)session.getAttribute("email");
                
            if(Status.equals("OK")&&new checkservlet().updatebill(id,cost,Authority,user,email)){
                stat="خرید با موفقیت انجام شد.";
                alert="success";
            }
            request.setAttribute("Status", stat);
            request.setAttribute("alert", alert);
                  %>
<t:generic>
    <jsp:attribute name="maincss">
        <title>پرداخت برای خرید - داشبورد -تاییدیه پرداخت</title>
    </jsp:attribute>
    <jsp:body>
        <style>
             body {
        padding-top: 65px;
        padding-bottom: 40px;
      }
      .hero-unit {
          padding: 60px;
      }
      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
      }
        </style>
        <div class="container-fluid">
      <div class="row-fluid">
        

        <div class="span12">
          

          <div class="row-fluid">
            <div class="span12">
               <div class="card">
                 <h2 class="card-heading simple"> وضعیت پرداخت</h2>
                 
                  <div class="card-body">
                      <div class="alert alert-${alert}">
                          ${Status}
                      </div> 
                  </div>
               </div>
            </div><!--/span-->
            
          </div><!--/row-->
          
        
      </div><!--/row-->


    </div><!--/.fluid-container-->
    </div><!--/.fluid-container-->
        
        
    

    
    </jsp:body>
</t:generic>
