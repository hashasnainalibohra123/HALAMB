package com.HALAMB;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Upload
 */
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Upload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String session1,session2;
		 HttpSession session=request.getSession(false);
		 System.out.println("TEST "+session);
		if(session==null)
		{
			
			
			System.out.println("You have to login first");
			HttpSession session123=request.getSession();
session123.setAttribute("from","upload" );
//session.setAttribute("password",r.getPass());


		
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
			{		System.out.println("In the Upload Area "+session1+"   "+session2);
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
	             System.out.println("I'M Melting..........................");  
	       }  

}
