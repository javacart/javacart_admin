/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mnm.serv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mnm.util.db;

/**
 *
 * @author mohammadghasemy
 */
public class hesab_new extends HttpServlet{
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        boolean log=(Boolean)session.getAttribute("login");
         try{
        if(!log){
            
             getServletContext().getRequestDispatcher("/login.jsp").forward(
                    request, response); 
             return;
        }
        }catch(Exception s){
        
             getServletContext().getRequestDispatcher("/login.jsp").forward(
                    request, response); 
        }
         String user=(String)session.getAttribute("ukey");
         String email=(String)session.getAttribute("email");
         System.out.print(user);
        String card=(String)request.getParameter("card");
        String bank=(String)request.getParameter("bank");
        String shaba=(String)request.getParameter("shaba");
        String mon=(String)request.getParameter("mon");
        String year=(String)request.getParameter("year");
        String expire=year+"/"+mon;
        db d=(db)session.getAttribute("database");
        d.insert_hesab(card,shaba,expire,bank,user);
        getServletContext().getRequestDispatcher("/panel/bank_list.jsp").forward(
                    request, response);
    }
    
    
   
    
}
