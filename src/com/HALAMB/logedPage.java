package com.HALAMB;


import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webmedia.model.USER_INFO;


public class logedPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession session1=request.getSession(false);
	

	String pass;
	
	System.out.println("test1   by LOGED_PAGE");
	String user=request.getParameter("login");
	System.out.println("test1   "+user);
	String pass1=request.getParameter("pass");
	System.out.println("test1   "+pass1);

	int hibernate_verified;
	pass=(String) session1.getAttribute("random_NUMBER");
	System.out.println("RANDOM SYSTEM GENENRATEDN IS    "+pass);
	System.out.println("YOUR EMAIL IS    "+(String) session1.getAttribute("email"));
	
	System.out.println(session1); 
	

		System.out.println("Correect");
		String queryString1="from USER_INFO where email='"+user+"'";
		USER_INFO u=new USER_INFO();
		User_insert_hibernate h=new User_insert_hibernate();
		u=h.UserLogin(queryString1);
		hibernate_verified=u.getVarified();
		System.out.println(" your hibernate_verified  "+hibernate_verified);
		if(hibernate_verified==Integer.parseInt(pass1)){
			u.setVarified(1);
			System.out.println("Correect");
			h.UserLogedUp(u);
			getServletContext().getRequestDispatcher("/HOME.jsp").forward(request, response);
			System.out.println("IN IF");
		}
		else{
			System.out.println("IN ELSE");
			getServletContext().getRequestDispatcher("/logedPage.html").forward(request, response);
		}
			
		//getServletContext().getRequestDispatcher("/HOME.jsp").forward(request, response);
		
		
		
	}

}

