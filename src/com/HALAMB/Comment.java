package com.HALAMB;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import com.HALAMB.USER_INFO;


public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession httpsession=request.getSession(true);
		String email,pass,Image_Id;
		if(httpsession.isNew())
			
		{
				System.out.println("You have to login first");
				HttpSession session123=request.getSession();
				session123.setAttribute("from","comment" ); 
				getServletContext().getRequestDispatcher("/login.html").forward(request, response);
				destroy();
			
			
		}
		
		else
		{
			
		String comments=request.getParameter("text");
		System.out.println("YOU S SESSION IS    ");
		email=(String) httpsession.getAttribute("email");
		 pass=(String) httpsession.getAttribute("password");
		 Image_Id=(String )httpsession.getAttribute("Image_Id");
		 
		 //.....GETTING USER..............//
		 USER_INFO u=new USER_INFO();
		 String queryString="from USER_INFO where email='"+email+"'";
		 User_insert_hibernate s=new User_insert_hibernate();
		 u=s.UserLogin(queryString);
		 System.out.println("Your pass word is"+u.getPass() +pass);
		 
		 
		 //....GETTING IMAGE..............//
		 IMAGE_DATA i=new IMAGE_DATA();
		 String queryString1="from IMAGE_DATA where image_id='"+Image_Id+"'";
		 User_insert_hibernate s1=new User_insert_hibernate();
		 i=s1.Getting_Object(queryString1);

		 
		 
		 //......setting values to comment_table..............//
		AnnotationConfiguration config=new AnnotationConfiguration();
		config.addAnnotatedClass(USER_INFO.class);
		config.addAnnotatedClass(IMAGE_DATA.class);
	
		config.addAnnotatedClass(Comment_Table.class);
		config.configure("hibernate.cfg.xml");
		SessionFactory factory=config.buildSessionFactory();
		Session session=factory.getCurrentSession();
		session.beginTransaction();
		
		
		
		/*AnnotationConfiguration config=new AnnotationConfiguration();
		//config.addAnnotatedClass();
		config.configure("hibernate.cfg.xml");
		new SchemaExport(config).create(true,true);
		SessionFactory factory=config.buildSessionFactory();
		Session session=factory.getCurrentSession();
		session.beginTransaction();*/
		
		Comment_Table comment=new Comment_Table();
		comment.setComment(comments);
		comment.setComment_date(new Date());
		comment.setUser_id(u.getUser_id());
		comment.setImage_id(i.getImage_id());
		int likes=1;
		comment.setLikes(likes);
		USER_INFO_IMAGE_DATA user_image=new USER_INFO_IMAGE_DATA();
		user_image.setUSER_INFO(u); 
		
		user_image.setIMAGE_DATA(i);
		 Date registered = new Date();
		 user_image.setComment(comments);
		 user_image.setComment_date(registered);
		 user_image.setLikes(1);
		 
		// student1.getStudentClasses().add(studentClass);
		
		
		//u.getStudentClasses().add(user_image);
		//i.getStudentClasses().add(user_image);
		 
		 
		 
		 
		 
		 session.save(comment);
		
		 //session.save(user_image);
	session.getTransaction().commit();
	
	getServletContext().getRequestDispatcher("/Comments_loding.jsp?Image_Id="+i.getImage_id()).forward(request, response);
	
		}
		}
	}


