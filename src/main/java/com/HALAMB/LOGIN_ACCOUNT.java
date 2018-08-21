package com.HALAMB;



import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webmedia.model.USER_INFO;



/**
 * Servlet implementation class LOGIN_ACCOUNT
 */
public class LOGIN_ACCOUNT extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");

		String email = request.getParameter("login");
		String password = request.getParameter("password");

		//	String queryString = "select from USER_INFO employee1.email, employee1.profile_name, employee1.pass, employee1.user_id from USER_INFO employee1 ";  
		String queryString="from USER_INFO where email='"+email+"'";
		User_insert_hibernate h=new User_insert_hibernate();
		USER_INFO loggedInUser=(USER_INFO) h.UserLogin(queryString);

		if((loggedInUser.getPass()).equals(password))
		{
			HttpSession session12 = request.getSession(false);
			HttpSession session = request.getSession();
			session.setAttribute("loggedInUser",loggedInUser);
			
			if(session12==null)
			{
				getServletContext().getRequestDispatcher("/HOME.jsp").forward(request, response);
			}
			else 
			{

				String from=(String)session12.getAttribute("from");
				if(from!=null)
				{
					if(from.equals("upload"))

					{
						System.out.println("session REDIRECING TO UPLOD");

					getServletContext().getRequestDispatcher("/Upload_Image.jsp").forward(request, response);
					}
					else if(from.equals("download") || from.equals("down") || from.equals("down1"))
					{
						String Image_Id=(String)session12.getAttribute("Image_Id");
						getServletContext().getRequestDispatcher("/Download_side_video.jsp?Image_Id="+Image_Id).forward(request, response);

					}
					else if(from.equals("home"))
					{
						getServletContext().getRequestDispatcher("/HOME.jsp").forward(request, response);

					}
					else if(from.equals("Comments_loding.jsp"))
					{
						System.out.println("session REDIRECING TO Comments_loding.jsp");
						String Image_Id=(String)session12.getAttribute("Image_Id");
						getServletContext().getRequestDispatcher("/Download_side_video.jsp?Image_Id="+Image_Id).forward(request, response);

					}
				}

			}

		}

		else
		{
			getServletContext().getRequestDispatcher("/login.html").forward(request, response);

		}
	}

}
