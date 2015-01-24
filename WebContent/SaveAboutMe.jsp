<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page
		import="com.HALAMB.USER_INFO,com.HALAMB.User_insert_hibernate,com.HALAMB.IMAGE_DATA, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,java.util.Calendar,
 java.io.File,com.HALAMB.User_profile_pic,
 java.awt.image.BufferedImage;"%>
	<%
String str=request.getParameter("str");

			
HttpSession session_T=request.getSession(false);

		User_insert_hibernate h;
		IMAGE_DATA i;
		USER_INFO u;
		User_profile_pic U_pic;
		
		String session1,session2;
		
		String folder;
			if(session_T==null)
		{
			
			
			System.out.println("You have to login first");
	  
		
			//getServletContext().getRequestDispatcher("/login.html").forward(request, response);
			destroy();
			
		}
		else
		{
			
			session1=(String) session_T.getAttribute("email");
			 session2=(String) session_T.getAttribute("password");
			 System.out.println();
			 System.out.println("this is IN THE USER_UPLOAD_IMAGES          "+session1);
			 System.out.println("this is IN THE USER_UPLOAD_IMAGES"+session2);
			 if(session1==null &&  session2==null)
			{		System.out.println("In the Upload Area "+session1+"   "+session2);
			getServletContext().getRequestDispatcher("/login.html").forward(request, response);
		}
			 String queryString="from USER_INFO where email='"+session1+"'";
			  
			
			 h=new User_insert_hibernate();
			 System.out.println("HELLLLLLO");
			 u=h.UserLogin(queryString);
			    // Set the date for both of the calendar instance
		     u.setAboutme(str); 
			   h.UserUpdateUp(u) ;
		}
			%>
</body>
</html>