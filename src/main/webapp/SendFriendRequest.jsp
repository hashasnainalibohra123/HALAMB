<%@page import="java.util.Date"%>
<%@page import="com.webmedia.model.FriendCount"%>
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
		import="com.webmedia.model.USER_INFO,com.HALAMB.User_insert_hibernate,com.webmedia.model.IMAGE_DATA, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,java.util.List,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,java.util.Calendar,
 java.io.File,com.webmedia.model.User_profile_pic,
 java.awt.image.BufferedImage;"%>
	<%ArrayList user = null,user12 = null;
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
			 String profile_id=(String)session_T.getAttribute("profile_id");
			
			    
			 queryString="from FriendCount where User_id='"+session1+"' and friend_id="+profile_id;
			 AnnotationConfiguration config1=new AnnotationConfiguration();
			 
				config1.configure("hibernate.cfg.xml");
				SessionFactory factory1;
				 factory1=config1.buildSessionFactory();
				 Session session11=factory1.getCurrentSession();
				 session11.beginTransaction();
			 Query q1=session11.createQuery(queryString);
				
				//List user=q.list();
				
			 user=(ArrayList)q1.list();
			
			System.out.println("hello the size is:"+user.size());
							
				
				
				
		
			
			
			 
			 if(user==null)
			 
			 
			    if(profile_id=="" || profile_id==null)
				{
					System.out.println("profile_id is NuLL");
					
				}
			 else
				 {
				 	FriendCount fr=new FriendCount();
			    	fr.setUser_id(u.getUser_id());
			    	fr.setFriend_id(Integer.parseInt(profile_id));
			    	fr.setRequest_date(new Date());
			    	System.out.println("DINE");
				 }
			 
		}
			%>
</body>
</html>