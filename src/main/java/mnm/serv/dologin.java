/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mnm.serv;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mnm.dao.Users;
import mnm.util.db;

/**
 *
 * @author mohammadghasemy
 */
public class dologin extends HttpServlet{
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
    
    String user=request.getParameter("user");
        String pass=request.getParameter("pass");
        if(null==user||user.length()==0){
            request.setAttribute("message","کلمه عبور یا نام کاربری غلط است.");
            session.setAttribute("login",false);
//            session.setAttribute("ukey","");
        getServletContext().getRequestDispatcher("/index.jsp").forward(
                    request, response); 
            return;
        }
        try{
            boolean login=(Boolean)session.getAttribute("login");
            if(login){
//                if(null!=red&&red.length()!=0){
//                    session.removeAttribute("redirect");
//                    getServletContext().getRequestDispatcher(red).forward(
//                    request, response); 
//                    return;
//                }else{
        getServletContext().getRequestDispatcher("/panel/category.jsp").forward(
                    request, response); 
        return;
                }
        
//        }
        }catch(Exception d){
//            d.printStackTrace();
//            request.setAttribute("message","کلمه عبور یا نام کاربری غلط است.");
//            getServletContext().getRequestDispatcher("/login.jsp").forward(
//                    request, response); 
//            return;
        }
        String secret="6LfVCQoUAAAAAKKFvxoQns_Ua-O53b8-Iv8flaLs";
        String responseg=request.getParameter("g-recaptcha-response");
        System.out.println(responseg);
        System.out.println(secret);
        String google="https://www.google.com/recaptcha/api/siteverify";
//        if(!google_captcha(google, secret, responseg)){
//            System.out.println("accept");
//            request.setAttribute("message","کپچا غلط است.");
//            getServletContext().getRequestDispatcher("/login.jsp").forward(
//                    request, response); 
//            return;
//        }
        db d=(db)session.getAttribute("database");
        if(null==d){
        d=new db();
        session.setAttribute("database",d);
    
        }
        System.out.println("data base created!!!!!!!!!!!-"+d.JDBC_DRIVER+"-!");
        Users u=d.select_user(user,pass);
        
        if(validate(pass)&&isValidEmailAddress(user)&&null!=u){
            
//            if(null!=u){
            session.setAttribute("login",true);
            session.setAttribute("ukey",u.getId()+"");
            String n="";
            try{
                int a=user.indexOf("@");
                n=(u.getName().length()==0)?user.substring(0, a):u.getName();
            }catch(Exception s){
                n=(u.getName().length()==0)?user:u.getName();
            }
                    
            
            session.setAttribute("dologinukey",n);
            session.setAttribute("name",u.getName());
            session.setAttribute("tel",u.getTel());
            session.setAttribute("email",user);
            session.setAttribute("site","");
            session.setAttribute("admin",false);
            
            if(user.equals("pay4buy.ir@gmail.com")){
                session.setAttribute("admin",true);
        getServletContext().getRequestDispatcher("/panel/category.jsp").forward(
                    request, response);
        return;        
            }else{
        getServletContext().getRequestDispatcher("/panel/category.jsp").forward(
                    request, response);
        return;
            }
            
        }else{
            request.setAttribute("message","کلمه عبور یا نام کاربری غلط است.");
            session.setAttribute("login",false);
//            session.setAttribute("ukey","");
        getServletContext().getRequestDispatcher("/index.jsp").forward(
                    request, response); 
        return;
        }
        
    }
    public boolean google_captcha(String google,String secret,String response){
        try {
 
            // Send the request
            URL url = new URL(google);
            URLConnection conn = url.openConnection();
            conn.setDoOutput(true);
            OutputStreamWriter writer = new OutputStreamWriter(conn.getOutputStream());
            

	String content = "secret=" + secret 
			 + "&response=" 
			 + response;
        writer.write(content);
 
            writer.flush();
 
            // Get the response
            StringBuffer answer = new StringBuffer();
            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                answer.append(line);
            }
            writer.close();
            reader.close();
 
            //Output the response
            System.out.println(answer.toString());
            return answer.toString().contains("\"success\": true");
 
        } catch (MalformedURLException ex) {
            ex.printStackTrace();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    private static final String PASSWORD_PATTERN = 
              "((?=.*\\d)(?=.*[a-z]).{6,20})";
    private Pattern pattern;
	  private Matcher matcher;
    public boolean validate(final String password){
		pattern = Pattern.compile(PASSWORD_PATTERN);

		  matcher = pattern.matcher(password);
		  return matcher.matches();
	    	    
	  }
    public  boolean isValidEmailAddress(String email) {
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
