/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mnm.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import mnm.dao.Bill;
import mnm.dao.user;
import mnm.dao.Users;
import mnm.email.email_forgot;
import mnm.email.sender;

/**
 *
 * @author mohammadghasemy
 */
public class db {

    public String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    final String DB_URL = "jdbc:mysql://localhost/javacart?useUnicode=true&characterEncoding=UTF-8";
    Connection conn = null;
    Statement stmt = null;
    final String USER = "root";
    final String PASS = "xxx";

    public db() {
        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
        } catch (Exception s) {
        }
    }
    public boolean select_pass(String mail,String uuid){
        try {
                String sql = "update users set password='"+uuid+"'  where  username='"+mail+"'";
                int i=stmt.executeUpdate(sql);
                if(i==0){
                return false;
                }
       }catch(Exception e) {
            e.printStackTrace();
            return false;
        }
            return true;
    }
    public boolean select_user(user u){
        try {
            String psql="select id from users where username='"+u.user+"'";
            ResultSet rs=stmt.executeQuery(psql);
            boolean registered=false;
            while(rs.next()){
                registered=true;
                u.mainid=rs.getString("id");
                
            }
            String sql="";
            if(!registered){
            sql = "insert into users (username,password,google_id, google_name, google_given_name, google_family_name, google_link, google_picture, google_gender,name) values (?,?,?,?,?,?,?,?,?,?)";    
           PreparedStatement preparedStatement = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            
            preparedStatement.setString(1, u.user);
            preparedStatement.setString(2, u.pass);
            preparedStatement.setString(3, u.id);
            preparedStatement.setString(4, u.name);
            preparedStatement.setString(5, u.gname);
            preparedStatement.setString(6, u.fname);
            preparedStatement.setString(7, u.link);
            preparedStatement.setString(8, u.pic);
            preparedStatement.setString(9, u.gender);
            preparedStatement.setString(10, u.name);
            preparedStatement.executeUpdate();
            ResultSet rs2 = preparedStatement.getGeneratedKeys();
                if(rs2.next())
                {
                    u.mainid = rs2.getInt(1)+"";
                }
            }else{
              sql="update users set google_id=?, google_name=?, google_given_name=?, google_family_name=?, google_link=?, google_picture=?, google_gender=? where username=?";  
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            
            preparedStatement.setString(1, u.id);
            preparedStatement.setString(2, u.name);
            preparedStatement.setString(3, u.gname);
            preparedStatement.setString(4, u.fname);
            preparedStatement.setString(5, u.link);
            preparedStatement.setString(6, u.pic);
            preparedStatement.setString(7, u.gender);
            preparedStatement.setString(8, u.user);
            preparedStatement.executeUpdate();
            }
            
            return registered;
        }catch(Exception e) {
            e.printStackTrace();
        }
        return false;
    
    }
    public void insert_user(String u,String p,String name){
        try {
            String sql = "insert into users (name,username,password) values ('"+name+"','"+u+"','"+p+"')";
            stmt.executeUpdate(sql);
            }catch(Exception e) {
            e.printStackTrace();
            
        }
    }
    public boolean insert_ticket(String text,String ticketnumber,String user,String sub){
        try {
            if(null==ticketnumber){
            String sql2 = "select ticketnumber from tickets order by ticketnumber DESC limit 1";
            
            ResultSet resultSet = stmt.executeQuery(sql2);
            
              while(resultSet.next()) {
             
             ticketnumber=(Integer.parseInt(resultSet.getString("ticketnumber"))+1)+"";
             }
            }
            String sql = "insert into tickets (subject,texts,ticketnumber,dtpersian,iduser) values ('"+sub+"','"+text+"','"+ticketnumber+"','"+new persian().persiandate(new Date())+"',"+user+")";
            stmt.executeUpdate(sql);
            }catch(Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public Bill select_bill(String billid,String uid){
        Bill b=new Bill();
        try {
              String sql = "select b.id,b.price,b.plan,b.description,b.dt,b.status,u.username,u.name,u.tel,b.status FROM bill"
                   + " as b inner join users as u on u.id=b.iduser  where b.id="+billid+" and b.iduser="+uid;
            ResultSet resultSet = stmt.executeQuery(sql);
              while(resultSet.next()) {
             b.setPrice(resultSet.getString("price"));
             b.setPlan(resultSet.getString("plan"));
             b.setDescription(resultSet.getString("description"));
             b.setId(resultSet.getInt("id"));
             b.setStatus(resultSet.getInt("status"));
             }
           }catch(Exception e) {
            e.printStackTrace();
            return null;
        }
        return b;
    }
    public void insert_categ(String cat,String parent,String url ){
        
        try {
            // Register JDBC driver
            String sql="insert into category (title,parent,url) values ("
                    +"'"+cat+"',"+parent+",'"+url+"')";
            System.out.println(sql);
            stmt.executeUpdate( sql);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    public void insert_pimage(String id,String image ){
        
        try {
            // Register JDBC driver
            String sql="insert into store_products_img (idproduct,url) values ("
                    +id+",'"+image+"')";
            System.out.println(sql);
            stmt.executeUpdate( sql);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    public void insert_sliderimage(String url,int k){
        
        try {
            // Register JDBC driver
            String sql="insert into index_material (isslider,imgsrc) values ("
                    +"1,'"+url+"')";
            if(k==2){
             sql="insert into index_material (isslider2,imgsrc) values ("
                    +"1,'"+url+"')";
            }
            
            System.out.println(sql);
            stmt.executeUpdate( sql);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    public void insert_hweak(String id){
        
        try {
            // Register JDBC driver
            String sql="insert into index_material (ishweak,idproduct) values ("
                    +"1,'"+id+"')";
            System.out.println(sql);
            stmt.executeUpdate( sql);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    public void insert_adv(String url,String title,String desc,String icon){
        
        try {
            // Register JDBC driver
            String sql="insert into index_material (isadvantage,adv_title,adv_desc,adv_icon,url) values ("
                    +"1,'"+title+"','"+desc+"','"+icon+"','"+url+"')";
            System.out.println(sql);
            stmt.executeUpdate( sql);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    public void insert_product(String title,String desc,String categ,String op,String p ){
        
        try {
            // Register JDBC driver
            String sql="insert into store_products (name,description,price,oldprice,idcateg) values ("
                    +"'"+title+"','"+desc+"','"+p+"','"+op+"','"+categ+"')";
            System.out.println(sql);
            stmt.executeUpdate( sql);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    public void insert_categ_banner(String cat,String parent,String url ,String imgsrc){
        
        try {
            // Register JDBC driver
            String sql="insert into category (title,parent,url,imgsrc,isbanner) values ("
                    +"'"+cat+"',"+parent+",'"+url+"','"+imgsrc+"',1)";
            System.out.println(sql);
            stmt.executeUpdate( sql);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    public void delete_categ(int id ){
        
        try {
            // Register JDBC driver
            stmt.executeUpdate( "delete from category where id="+id);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    public void delete_product(String id ){
        
        try {
            // Register JDBC driver
            stmt.executeUpdate( "delete from store_products where id="+id);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    public void delete_producti(String id ){
        
        try {
            // Register JDBC driver
            stmt.executeUpdate( "delete from store_products_img where id="+id);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
        public void delete_order(String id ){
        
        try {
            // Register JDBC driver
            stmt.executeUpdate( "delete from store_order where id="+id);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    public void delete_slider1(String id ){
        
        try {
            // Register JDBC driver
            stmt.executeUpdate( "delete from index_material where id="+id);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    
    public void update_order(String id ){
        
        try {
            // Register JDBC driver
            stmt.executeUpdate( "update store_order set status=1 where id="+id);   
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
    }

    public boolean insert_hesab(String card,String shaba,String expire,String bank,String user) {
        try {
            stmt.executeUpdate("insert into hesab (cardnumber,shaba,expir,bankname,dt,userid) values"
                    + "('"+card+"','"+shaba+"','"+expire+"','"+bank+"','"+new persian().persiandate(new Date())+"',"+user+")");
        } catch (Exception e) {
            e.printStackTrace();

        }
        return true;
    }
    public boolean insert_merchent(String site,String name,String tel,String desc,String user) {
        try {
            stmt.executeUpdate("insert into dargah (domain,name,tel,description,dt,userid) values"
                    + "('"+site+"','"+name+"','"+tel+"','"+desc+"','"+new persian().persiandate(new Date())+"',"+user+")");
        } catch (Exception e) {
            e.printStackTrace();

        }
        return true;
    }
        public boolean insert_transaction(String dargahid,String price,String hesab,String user) {
        try {
            stmt.executeUpdate("insert into transaction (iddargah,price,idhesab,dt,userid) values"
                    + "("+dargahid+",'"+price+"','"+hesab+"','"+new persian().persiandate(new Date())+"',"+user+")");
        } catch (Exception e) {
            e.printStackTrace();

        }
        return true;
    }
    public Users select_user(String u,String p){
       try{
           boolean key=false;
            Users us=new Users();
            String sql = "select id,name,tel from users where username = '"+u+"' and password='"+p+"'";
            
            ResultSet resultSet = stmt.executeQuery(sql);
            
              while(resultSet.next()) {
             key=true;
             us.setId(resultSet.getInt("id"));
             us.setName(resultSet.getString("name"));
             us.setTel(resultSet.getString("tel"));
             }
            
            
//            stmt.close();
//            conn.close();
            //Update the Db
            
            if(key)
            return us;
            else
                return null;
       }catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
