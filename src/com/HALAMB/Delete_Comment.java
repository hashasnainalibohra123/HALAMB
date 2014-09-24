package com.HALAMB;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 * Servlet implementation class Delete_Comment
 */
public class Delete_Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String cid=request.getParameter("cid");
	System.out.println("Your Comment id is"+cid);
	
	AnnotationConfiguration config=new AnnotationConfiguration();
	config.addAnnotatedClass(IMAGE_DATA.class);
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
	
	
	
	
		String u="from Comment_Table where C_id='"+cid+"'";
		Query q=session.createQuery(u);
		
		 @SuppressWarnings("unchecked")
		List<Comment_Table> user=q.list();
	
	System.out.println("hello the size is:"+user.size());
	for(Comment_Table u1:user)
	{
		
		session.delete(u1);
		session.getTransaction().commit();
		
	}
	getServletContext().getRequestDispatcher("/Manage-comment.jsp").forward(request, response);
	
	
	}
	
	
	

	

	
	
	}


