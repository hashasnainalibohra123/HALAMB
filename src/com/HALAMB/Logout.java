package com.HALAMB;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Logout
 */
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

HttpSession session=request.getSession(false);
System.out.println("THIS IS LOGOUT");
session.setMaxInactiveInterval(0);
getServletContext().getRequestDispatcher("/HOME.jsp").forward(request, response);

	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

HttpSession session=request.getSession(false);
System.out.println("THIS IS LOGOUT");
session.setMaxInactiveInterval(0);
getServletContext().getRequestDispatcher("/HOME.jsp").forward(request, response);

	
	}

}
