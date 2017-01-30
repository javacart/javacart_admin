<%@page import="mnm.serv.dogoogle"%>
<%
			final dogoogle helper = new dogoogle();
			if (request.getParameter("code") == null
					|| request.getParameter("state") == null) {
				response.sendRedirect(request.getContextPath()+"/login");   
			} else if (request.getParameter("code") != null && request.getParameter("state") != null
					&& request.getParameter("state").equals(session.getAttribute("state"))) {
				session.removeAttribute("state");
				if(helper.getUserInfoJson(request.getParameter("code"),request)){
                                response.sendRedirect(request.getContextPath()+"/panel/bank_list.jsp");
                                }else{
				response.sendRedirect(request.getContextPath()+"/login");    
                                }
			}
		%>