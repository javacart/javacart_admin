/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mnm.serv;

import java.io.IOException;
import java.util.Date;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mnm.email.email_invoice_server;
import mnm.email.sender;
import mnm.util.db;
import mnm.util.persian;

/**
 *
 * @author mohammadghasemy
 */
public class categorynew extends HttpServlet{
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
         try{
             boolean log=(Boolean)session.getAttribute("login");
        if(!log){
            
             getServletContext().getRequestDispatcher("/index.jsp").forward(
                    request, response); 
             return;
        }
        }catch(Exception s){
        
             getServletContext().getRequestDispatcher("/index.jsp").forward(
                    request, response); 
        }
         
         try{
          
          String parent=(request.getParameter("parent"));
          String catg=(request.getParameter("category"));
          String url=(request.getParameter("url"));
          
          
          
        db d=(db)session.getAttribute("database");
        if(null==d){
        d=new db();
        session.setAttribute("database",d);
        }
        
         d.insert_categ(catg,parent,url);
          System.out.println("complete inserting");
         }catch(Exception s){
             s.printStackTrace();
             getServletContext().getRequestDispatcher("/panel/index.jsp").forward(
                    request, response); 
             return;
                     
         }
        
         
         
         
        getServletContext().getRequestDispatcher("/panel/category.jsp").forward(
                    request, response); 

        
    }
    
   
    public static boolean isValidEmailAddress(String email) {
        boolean result = true;
        try {
            InternetAddress emailAddr = new InternetAddress(email);
            emailAddr.validate();
        } catch (AddressException ex) {
            result = false;
        }
        return result;
    }
    
    
    
    
}
