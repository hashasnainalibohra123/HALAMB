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

import com.webmedia.model.Comment_Table;
import com.webmedia.services.DBService;

/**
 * Servlet implementation class Delete_Comment
 */
public class Delete_Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cid=request.getParameter("cid");

		SessionFactory factory=DBService.getFacotorySession();
		Session session=factory.getCurrentSession();


		session.beginTransaction();

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


