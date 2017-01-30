/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mnm.serv;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mnm.dao.Bill;
import mnm.util.db;

/**
 *
 * @author mohammadghasemy
 */
public class bill extends HttpServlet{
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        boolean log=(Boolean)session.getAttribute("login");
        String id=(String)request.getParameter("id");
        
        try{
        if(!log){
            
             getServletContext().getRequestDispatcher("/login.jsp").forward(
                    request, response); 
             return;
        }
        }catch(Exception s){
        
             getServletContext().getRequestDispatcher("/login.jsp").forward(
                    request, response); 
             return;
        }
        if(null==id){
        getServletContext().getRequestDispatcher("/panel/bills.jsp").forward(
                    request, response); 
        return;
        }
        String uid=(String)session.getAttribute("ukey");
        db d=(db)session.getAttribute("database");
        if(null==d){
        d=new db();
        session.setAttribute("database",d);
        }
        Bill b=d.select_bill(id,uid);
        if(null==b){
            getServletContext().getRequestDispatcher("/panel/bills.jsp").forward(
                    request, response);
            return;
        }
        String email=(String)session.getAttribute("email");
        
        String tel=(String)request.getSession().getAttribute("tel");
        String name=(String)request.getSession().getAttribute("name"); 
        session.setAttribute("price",b.getPrice());
            session.setAttribute("plan",b.getPlan());
            session.setAttribute("desc",b.getDescription());
            session.setAttribute("invoice",b.getId());
            session.setAttribute("user",email);
            session.setAttribute("name",name);
            session.setAttribute("tel",tel);
            session.setAttribute("billid",id);
            
            if(b.getStatus()==1){
                getServletContext().getRequestDispatcher("/panel/bills.jsp").forward(
                    request, response); 
            }else{
        getServletContext().getRequestDispatcher("/panel/payment.jsp").forward(
                    request, response); 
            }
    }
    
    
    
}
