/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mnm.serv;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mohammadghasemy
 */
public class doedit extends HttpServlet{
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String u=(String)session.getAttribute("ukey");
    String p=request.getParameter("pass");
        String pass=request.getParameter("passnew");
        String newp=request.getParameter("passnewtry");
        
        request.setAttribute("message", "گذرواژه فعلی نادرست است.");
        if(null!=pass&&pass.equals(newp)&&pass.length()!=0){
            if(check(u, p, newp)==1){
                request.setAttribute("message", "گذرواژه با موفقیت تصحیح شد.");
            }else{
                request.setAttribute("message", "گذرواژه فعلی نادرست است.");
            }
        }
        
        getServletContext().getRequestDispatcher("/profile.jsp").forward(
                    request, response); 
        
        
    }
    public String username;
    public int check(String u,String p,String newp){
        final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://91.99.101.69:3306/javahosting?useUnicode=true&characterEncoding=UTF-8";
        // ***********************************************************************
        // Database credentials
        final String USER = "root";
        final String PASS = "behope";
        Connection conn = null;
        Statement stmt = null;
        try {
            // Register JDBC driver
            Class.forName(JDBC_DRIVER);
 
             
            // connection to mySQL server and  Open a connection
            System.out.println("Connecting to a selected database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            System.out.println("Connected database successfully...");
 
            // create a Statement object ()
            System.out.println("Inserting records into the table...");
            stmt = conn.createStatement();
 
            
            //  Execute a query
            
            
            
            String sql = "update users set password='"+newp+"' where id = '"+u+"' and password='"+p+"'";
            int r=stmt.executeUpdate(sql);
           
            
            
            
            
            
            
            //Update the Db
            return r;
        }catch(Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
    
}
