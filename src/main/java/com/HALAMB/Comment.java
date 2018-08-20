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

import com.webmedia.model.Comment_Table;
import com.webmedia.model.IMAGE_DATA;
import com.webmedia.model.USER_INFO;
import com.webmedia.model.USER_INFO_IMAGE_DATA;
import com.webmedia.services.DBService;


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
			HttpSession session123=request.getSession();
			session123.setAttribute("from","comment" ); 
			getServletContext().getRequestDispatcher("/login.html").forward(request, response);
			destroy();
		}

		else
		{

			String comments=request.getParameter("text");
			email=(String) httpsession.getAttribute("email");
			Image_Id=(String )httpsession.getAttribute("Image_Id");

			//.....GETTING USER..............//
			USER_INFO u=new USER_INFO();
			String queryString="from USER_INFO where email='"+email+"'";
			User_insert_hibernate s=new User_insert_hibernate();
			u=s.UserLogin(queryString);


			//....GETTING IMAGE..............//
			IMAGE_DATA i=new IMAGE_DATA();
			String queryString1="from IMAGE_DATA where image_id='"+Image_Id+"'";
			User_insert_hibernate s1=new User_insert_hibernate();
			i=s1.Getting_Object(queryString1);



			//......setting values to comment_table..............//
			SessionFactory factory=DBService.getFacotorySession();
			Session session=factory.getCurrentSession();
			session.beginTransaction();

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

			session.save(comment);

			session.getTransaction().commit();

			getServletContext().getRequestDispatcher("/Downlaod_side_video.jsp?Image_Id="+i.getImage_id()).forward(request, response);

		}
	}
}


