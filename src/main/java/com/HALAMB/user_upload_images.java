package com.HALAMB;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webmedia.model.IMAGE_DATA;
import com.webmedia.model.USER_INFO;

/**
 * Servlet implementation class user_upload_images
 */
public class user_upload_images extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		User_insert_hibernate h;
		IMAGE_DATA i;
		USER_INFO u;
		String session1,session2;
		String folder;
		System.out.println("TESR");
		if(session==null)
		{
			
			
			System.out.println("You have to login first");
	  
		
			getServletContext().getRequestDispatcher("/login.html").forward(request, response);
			destroy();
			
		}
		else
		{
			
			session1=(String) session.getAttribute("email");
			 session2=(String) session.getAttribute("password");
			 System.out.println();
			 System.out.println("this is IN THE USER_UPLOAD_IMAGES"+session1);
			 System.out.println("this is IN THE USER_UPLOAD_IMAGES"+session2);
			 if(session1==null &&  session2==null)
			{		System.out.println("In the Upload Area "+session1+"   "+session2);
			getServletContext().getRequestDispatcher("/login.html").forward(request, response);
		}
		
			 String queryString="from USER_INFO where email='"+session1+"'";
			 h=new User_insert_hibernate();
			 
			 u=h.UserLogin(queryString);
			 i=new IMAGE_DATA();
			 System.out.println("Your pass word is "+u.getPass());
			 //
			 folder =u.getUser_id()+"."+u.getUser_name();

			 //***************CREATING DIRECOTORY*****************//
			 String s1=getServletContext().getRealPath("")+File.separator+"upload_images"+File.separator +folder;
			 File file1 = new File(s1);
			 System.out.println("PATH DURING CREATING "+s1);
			 if (!file1.exists()) {

			 //*******************THIS IS THE USER_UPLOAD*********************//
			 System.out.println("yoou do not have UPLOAD ANY IMAGES");
			 
			 
			 }
			 else
			 {
				 	System.out.println("YOUR FOLDER IS"+folder);
				 	
				 	queryString="from IMAGE_DATA where user_id='"+i.getUser_id()+"'";
				 	
				 	
			 }
			 
			 
			 
			 }
		
			 
			 
			 
			 
	}


	}

