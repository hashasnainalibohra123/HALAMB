package com.HALAMB;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.webmedia.model.IMAGE_DATA;
import com.webmedia.model.USER_INFO;

 
@WebServlet("/UploadServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
public class UploadServlet extends HttpServlet {
	
	
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	   String session1,session2;
	   
	   //****************FOLDER FOR USER*********************//
	   String folder;
	   int y;
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
    throws ServletException, IOException {  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();
IMAGE_DATA i=new IMAGE_DATA();
User_insert_hibernate h=new User_insert_hibernate();
HttpSession session=request.getSession(false);
if(session==null)
{
	System.out.println("You have to login first");
	HttpSession session123=request.getSession();
	session123.setAttribute("from","upload" ); 
	getServletContext().getRequestDispatcher("/login.html").forward(request, response);
	destroy();
}
else
{
	System.out.println("YOU S SESSION IS    ");
	session1=(String) session.getAttribute("email");
	 session2=(String) session.getAttribute("password");
	 HttpSession session123=request.getSession();
		session123.setAttribute("from","upload" ); 
	System.out.println("In the Upload Area "+session1+"   "+session2);
	
	if(session1==null &&  session2==null)
	{		System.out.println("In the Upload Area "+session1+"   "+session2);
	getServletContext().getRequestDispatcher("/login.html").forward(request, response);
	destroy();
}
	else
	{
		y=9;
	}
	
	
	
	
}
if(y==9)
{
USER_INFO u=new USER_INFO();
String queryString="from USER_INFO where email='"+session1+"'";
User_insert_hibernate s=new User_insert_hibernate();
u=s.UserLogin(queryString);
System.out.println("Your pass word is"+u.getPass());
//
folder =u.getUser_id()+"."+u.getUser_name();

//***************CREATING DIRECOTORY*****************//
String s1=getServletContext().getRealPath("")+File.separator+"upload_images"+File.separator +folder;
File file1 = new File(s1);
String REAL_PATH;
System.out.println("PATH DURING CREATING "+s1);
if (!file1.exists()) {
	if (file1.mkdir()) {
		System.out.println("Directory is created!");
	} else {
		System.out.println("Failed to create directory!");
	}
}





boolean isMultipart = ServletFileUpload.isMultipartContent(
		  request);
		  System.out.println("request: "+request);
if (!isMultipart) {
	  System.out.println("File Not Uploaded");
	  } else {
	  FileItemFactory factory = new DiskFileItemFactory();
	  ServletFileUpload upload = new ServletFileUpload(factory);
	  List<FileItem> fileItems = null;

	  try {
		  fileItems = upload.parseRequest(request);
	  System.out.println("fileItems: "+fileItems);
	  } catch (FileUploadException e) {
	  e.printStackTrace();
	  } 
	  
	  try
	  {
	  
	 // List<FileItem> fileItemsList = upload.parseRequest(request);
      Iterator<FileItem> fileItemsIterator = fileItems.iterator();
      while(fileItemsIterator.hasNext()){
          FileItem fileItem = fileItemsIterator.next();
          System.out.println("FieldName="+fileItem.getFieldName());
          System.out.println("FileName="+fileItem.getName());
          System.out.println("ContentType="+fileItem.getContentType());
          System.out.println("Size in bytes="+fileItem.getSize());
           
          /***********************************SETTING IN IMAGE_DATA****************/
         
          if(fileItem.getName()!=null)
          {
          i.setData_size(fileItem.getSize());
    	  i.setFormate(fileItem.getContentType());
          i.setUser_id(u.getUser_id());
          i.setRate(100);
          DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
          Date date = new Date();
          System.out.println(dateFormat.format(date));
          //te upload_date;
          Date upload_date = new Date();
          
          i.setUpload_date(upload_date);
          i.setImage_name(fileItem.getName());
          
          
          File file = new File(getServletContext().getRealPath("")+File.separator+"upload_images"+File.separator +folder+File.separator+fileItem.getName());
          System.out.println("File  Path at server="+getServletContext().getRealPath("")+File.separator+"upload_images"+File.separator +folder+File.separator);
          
          System.out.println("Absolute Path at server="+file.getAbsolutePath());
          
          REAL_PATH="HALAMB"+File.separator+"upload_images"+File.separator +folder+File.separator+fileItem.getName();
          System.out.println("THIS IS REAL PATH STORED IN DATABASE:   "+REAL_PATH);
          
          i.setLink(REAL_PATH);
          
          h.UserUpload(i);
          
          fileItem.write(file);
      }
      else
      {
    	  System.out.println("FALSE ENJOYING");
      }
          out.write("File "+fileItem.getName()+ " uploaded successfully.");
          out.write("<br>");
          out.write("<a href=\"UploadDownloadFileServlet?fileName="+fileItem.getName()+"\">Download "+fileItem.getName()+"</a>");
          
          
          //*****************SAVING**********************//
         
      }}
	  catch(Exception e){}
	  
	 
	  

	      // Parse the request to get file items.
	     
	  }	      
		
	      // Process the uploaded file items
	  
	  
	  
}  
	
}
}