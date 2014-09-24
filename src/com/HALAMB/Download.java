package com.HALAMB;


import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Download
 */
public class Download  extends HttpServlet  {
    static final long serialVersionUID = 1L;

  
    private static final int BUFSIZE = 4096;
    private String filePath,filePath1;
  
    
   
    @SuppressWarnings("rawtypes")
	protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	System.out.println(request.getParameter("Image_Id"));
    	
		String Image_Id = request.getParameter("Image_Id");
		 System.out.println();
		 System.out.println();
		 System.out.println();

		 System.out.println(Image_Id);
		 System.out.println();
		 System.out.println();
		 System.out.println();
		 
		 
		    
		 ArrayList m = null;;
		 User_insert_hibernate h=new User_insert_hibernate();
		String q=" from IMAGE_DATA where Image_Id="+Image_Id;
		m=h.IMAGE_GET(q);
System.out.println("hello the size is:"+m.size());
		
		
		if(m!=null && m.size()>0)
		{
			for(int i=0;i<m.size();i++)
			{
				IMAGE_DATA g=(IMAGE_DATA)m.get(i);
				System.out.println("THE m.getImage Name is"+g.getImage_name());
				System.out.println("The LINK TO IMAGE IS:"+g.getLink());
				String s=g.getLink();
				System.out.println(s);
				s=s.substring(7);
				System.out.println(s);
				
				filePath = getServletContext().getRealPath("") + File.separator +s;
				
			}
		}
		 
        System.out.println(filePath);
        filePath1= getServletContext().getRealPath("") + File.separator;
    	
        System.out.println("THIS IS THE DOWNLOAD FILEPATH    :          "+filePath1);
        File file = new File(filePath);
        System.out.println(filePath);
        System.out.println(filePath1);System.out.println(filePath1);int length   = 0;

        ServletOutputStream outStream = response.getOutputStream();
        ServletContext context  = getServletConfig().getServletContext();
        String mimetype = context.getMimeType(filePath);
       System.out.println("This is mimetype :"+mimetype);
        //code for database retrivement
       // sets response content type
        if (mimetype == null) {
            mimetype = "application/octet-stream";
        }
        response.setContentType(mimetype);
        response.setContentLength((int)file.length());
        String fileName = (new File(filePath)).getName();
       
        // sets HTTP header
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
       
        byte[] byteBuffer = new byte[BUFSIZE];
        DataInputStream in = new DataInputStream(new FileInputStream(file));
       
        // reads the file's bytes and writes them to the response stream
        while ((in != null) && ((length = in.read(byteBuffer)) != -1))
        {
            outStream.write(byteBuffer,0,length);
        }
       
        in.close();
        outStream.close();
    	String str1=request.getParameter("her");
    	System.out.println("this is the "+str1);
    }
    

    }

