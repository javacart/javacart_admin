package mnm.serv;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mnm.util.db;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadServlet
 */
public class doupload_slider1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String DATA_DIRECTORY = "/website/jbpms/res/img/slider";
    private static final int MAX_MEMORY_SIZE = 1024 * 1024 * 200;
    private static final int MAX_REQUEST_SIZE = 1024 * 1024*300;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.err.println("adsfasdfasdf");
        // Check that we have a file upload request
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);

        if (!isMultipart) {
            return;
        }
        String id=(String)request.getSession().getAttribute("ukey");
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Sets the size threshold beyond which files are written directly to
        // disk.
        factory.setSizeThreshold(MAX_MEMORY_SIZE);

        // Sets the directory used to temporarily store files that are larger
        // than the configured size threshold. We use temporary directory for
        // java
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

        // constructs the folder where uploaded file will be stored
        
        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // Set overall request size constraint
        upload.setSizeMax(MAX_REQUEST_SIZE);
        HttpSession session = request.getSession();
        
        try {
            // Parse the request
            List items = upload.parseRequest(request);
            Iterator iter = items.iterator();
           
          
          String filename2="";
          
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();

                if (!item.isFormField()) {
//                    String filename=DATA_DIRECTORY+"/links"+UUID.randomUUID().getLeastSignificantBits()+"";
                    String filename=DATA_DIRECTORY+"/"+new String(item.getName().getBytes("ISO8859_1"), "UTF-8");
                    
                    File uploadedFile = new File(filename);
                    
                    item.write(uploadedFile);
                    
                    filename2=item.getName();
        
                    System.out.println("file created\n##############"
                            + ""+filename);
                }else{}
            }
            db d=(db)session.getAttribute("database");
            if(null==d){
        d=new db();
        session.setAttribute("database",d);
        }
        d.insert_sliderimage(filename2,1);
            request.setAttribute("message", " تکمییل شد!!");
            request.setAttribute("status", true);
//            save(reads, seo);
            // displays done.jsp page after upload finished
//            getServletContext().getRequestDispatcher("/panel/page.jsp").forward(
//                    request, response);

        } catch (Exception ex) {
            ex.printStackTrace();
//            getServletContext().getRequestDispatcher("/seo/analysis.jsp").forward(
//                    request, response);
        }

    }
    public void move(String f1,String df,String ffinal){
        System.out.println(f1+"\t"+df+"\t"+ffinal);
        File ff1=new File(f1);
        File d=new File(df);
        if(d.isDirectory()){
        ff1.renameTo(new File(df+"/"+ffinal));    
        }else{
            d.mkdirs();
            ff1.renameTo(new File(df+"/"+ffinal));    
        }
        
    }
    
    

}