<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
    
    request.setAttribute("page", "server");
        //javax.servlet.http.HttpSession session = request.getSession();
        String id = (String) request.getParameter("id");
        Boolean log = (Boolean) session.getAttribute("login");
        String key = (String) session.getAttribute("ukey");
        try{
            if(null==log||!log){
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }
        }catch(Exception d){
            
             response.sendRedirect(request.getContextPath()+"/login.jsp");
        }
        request.setAttribute("key", key);
        
    %>
    
<t:generic>
    
    <jsp:body></jsp:body>
    
</t:generic>