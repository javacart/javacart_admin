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
//import mnm.fr9553.callservice;

/**
 *
 * @author mohammadghasemy
 */
public class doedituser extends HttpServlet{
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String u=(String)session.getAttribute("ukey");
    String name=request.getParameter("name");
        String tel=request.getParameter("tel");
        String add=request.getParameter("add");
        String site=request.getParameter("site");
        try{
        if(site.length()==0||!site.startsWith("http")){
            request.setAttribute("message", "آدرس سایت را به شکل صحیح وارد کنید. ");
            getServletContext().getRequestDispatcher("/profile.jsp").forward(
                    request, response); 
        
            return;
        }
        }catch(Exception s){
            request.setAttribute("message", "آدرس سایت را به شکل صحیح وارد کنید. ");
            getServletContext().getRequestDispatcher("/profile.jsp").forward(
                    request, response); 
        }
        if(null!=name&&name.length()!=0){
            if(check(u,name,tel,add,site)==1){
                request.setAttribute("message", "اطلاعات با موفقیت تصحیح شد.");
            }else{
                
            }
        }
        session.setAttribute("name",name);
        session.setAttribute("tel",tel);
        session.setAttribute("add",add);
        session.setAttribute("site",site);
        getServletContext().getRequestDispatcher("/profile.jsp").forward(
                    request, response); 
        
        
    }
    public String username;
    public int check(String u,String name,String tel,String add,String site){
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
            
            
            
            String sql = "update users set address='"+add+"',tel='"+tel+"',name='"+name+"' where id = '"+u+"'";
            //Update the Db
            int r=stmt.executeUpdate(sql);
            
             sql="select * from seo where seo.iduser="+u;
            ResultSet rs=stmt.executeQuery(sql);
            boolean hassite=false;
            String idseo="";
            while(rs.next()){
                idseo=rs.getString("id");
                hassite=true;
            }
            if(!hassite){
             sql = "insert into seo (dt,iduser,site) values (now(),"+u+",'"+site+"')";    
                stmt.executeUpdate(sql,Statement.RETURN_GENERATED_KEYS);
            ResultSet rss = stmt.getGeneratedKeys();
            
            while(rss.next()){
                    idseo = ""+(rss.getInt(1));
            }
            if(site.length()!=0){
//            callservice cs=new callservice();
//                cs.call1(idseo);
            }
            }else{
             sql = "update seo set dt=now(),site='"+site+"' where iduser="+u; 
             stmt.executeUpdate(sql);
             if(site.length()!=0){
//             callservice cs=new callservice();
//                cs.call1(idseo);
             }
            }
            
            return r;
        }catch(Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
    
}
