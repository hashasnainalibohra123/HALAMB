package com.HALAMB;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public Upload() {
		super();

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String session1,session2;
		HttpSession session=request.getSession(false);
		if(session==null)
		{

			HttpSession session123=request.getSession();
			session123.setAttribute("from","upload" );
			getServletContext().getRequestDispatcher("/login.html").forward(request, response);
			destroy();

		}
		else
		{

			session1=(String) session.getAttribute("email");
			session2=(String) session.getAttribute("password");
			HttpSession session123=request.getSession();
			session123.setAttribute("from","upload" ); 
			if(session1==null &&  session2==null)
			{		
				getServletContext().getRequestDispatcher("/login.html").forward(request, response);
			}
			else
			{
				getServletContext().getRequestDispatcher("/Upload_Image.jsp").forward(request, response);
				destroy();
			}

		}
	}
	public void destroy(){  
	}  

}
