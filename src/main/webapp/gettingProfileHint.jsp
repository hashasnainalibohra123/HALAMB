<%@page import="com.webmedia.model.PROFILE_COMMENT_TABLE"%>
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
		import="com.webmedia.model.USER_INFO,com.HALAMB.User_insert_hibernate,com.webmedia.model.IMAGE_DATA,com.webmedia.model.User_profile_pic, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,com.HALAMB.Upload_Profile_pic,com.webmedia.model.USER_INFO_IMAGE_DATA,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,java.util.Date,
 java.io.File,com.webmedia.model.Comment_Table,
 java.awt.image.BufferedImage;"%>


	<%

HttpSession httpsession=request.getSession(true);
String email,pass,Image_Id;
if(httpsession.isNew())
	
{
		System.out.println("You have to login first");
		HttpSession session123=request.getSession();
		session123.setAttribute("from","comment" ); 
	//	getServletContext().getRequestDispatcher("/login.html").forward(request, response);
		destroy();
	
	
}

else
{
	
String comments=request.getParameter("str");
System.out.println("COOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOMENTS"+comments);

email=(String) httpsession.getAttribute("email");
 pass=(String) httpsession.getAttribute("password");
 Image_Id=(String )httpsession.getAttribute("Image_Id");
 
 //.....GETTING OWNER USER WHOSE IS COMMENTER..............//
 USER_INFO u=new USER_INFO();
 String queryString="from USER_INFO where email='"+email+"'";
 User_insert_hibernate s=new User_insert_hibernate();
 u=s.UserLogin(queryString);
 System.out.println("Your pass word is"+u.getPass() +pass);
 
 
 //....GETTING USER WHOSE PROFILE IS TO BE COMMENTED..............//
 PROFILE_COMMENT_TABLE i=new PROFILE_COMMENT_TABLE();
	USER_INFO acc;
 
 	HttpSession session_T=request.getSession(false);
	String profile_id=(String)session_T.getAttribute("profile_id");
	String flag1=(String)session_T.getAttribute("flag");
	String queryString1="";
	if(profile_id!=null)
	{
		 
		 queryString1="from PROFILE_COMMENT_TABLE where user_id='"+profile_id+"'";
		 System.out.println(queryString1);
		 User_insert_hibernate s1=new User_insert_hibernate();
		 System.out.println("doneeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
		 acc=s1.UserLogin(queryString1);
		
	}
	else
	{
		acc=u;
	}
	
		
 
 
 
 //......setting values to comment_table..............//
AnnotationConfiguration config12=new AnnotationConfiguration();
config12.addAnnotatedClass(User_profile_pic.class);
config12.addAnnotatedClass(PROFILE_COMMENT_TABLE.class);
config12.configure("hibernate.cfg.xml");
SessionFactory factory=config12.buildSessionFactory();
Session session12=factory.getCurrentSession();
session12.beginTransaction();



/*AnnotationConfiguration config=new AnnotationConfiguration();
//config.addAnnotatedClass();
config.configure("hibernate.cfg.xml");
new SchemaExport(config).create(true,true);
SessionFactory factory=config.buildSessionFactory();
Session session=factory.getCurrentSession();
session.beginTransaction();*/

PROFILE_COMMENT_TABLE comment=new PROFILE_COMMENT_TABLE();
comment.setComment(comments);
comment.setComment_date(new Date());
comment.setUser_id(acc.getUser_id());
int likes=1;
comment.setLikes(likes);
comment.setCommenter_id(u.getUser_id());
// student1.getStudentClasses().add(studentClass);


//u.getStudentClasses().add(user_image);
//i.getStudentClasses().add(user_image);
 
 
 
 
 
 session12.save(comment);

 //session.save(user_image);
session12.getTransaction().commit();

///////..displaying code for added comment..///////

%>







	<%
	 ArrayList user1=null,user3=null,user4=null,user5 = null,user6 = null;
	System.out.println("LE LE MERI JAN");
 	HttpSession session11=request.getSession(false);
	
 	//.....Varible...... 	
 	User_insert_hibernate h;
	//IMAGE_DATA i;
	//USER_INFO u;
	PROFILE_COMMENT_TABLE ct;
	String session13,session2;
	
	//<<<<<<<<<<<<<first we get Comment as we know the image id>>>>>>>>>>>>>>>>//
	 queryString="from PROFILE_COMMENT_TABLE where user_id='"+u.getUser_id()+"'";
	
	
    try
	{	
		
	
	
		Session session112=factory.getCurrentSession();
		
		session112.beginTransaction();
	
	//................CODE FOR REMOVING DUPLICATE FROM AYYAY OF IMAGE_ID.............//
  
	
	//<<<<<<<<<<<<<  Count number of commnets >>>>>>>>>>
	
		
		
		//............imgage loding..........
				//....display image...........
				
				
					queryString="from PROFILE_COMMENT_TABLE where commenter_id='"+Image_Id+"'";
					Query q12=session112.createQuery(queryString);
					user3= (ArrayList) q12.list();
					System.out.println("hello the size for Image<<<<<<<<>>>>>>>>>data is:"+user3.size());
		//			if(user3!=null && user3.size()>0)
			//		{
						System.out.println("LE LE MERI JAN2");
					 						
					 	
					 	queryString="from User_profile_pic where user_id='"+u.getUser_id()+"'";
					
					 	User_profile_pic p=new User_profile_pic();
					 	try
						{//	
					 		
							
							
							System.out.println("build session factory");
							
							Session session1121=factory.getCurrentSession();
							session1121.beginTransaction();
							System.out.println("LODING PROFILE PIC");
							Query q11=session112.createQuery(queryString);
							q11.setMaxResults(1);
							user4= (ArrayList) q11.list();
							System.out.println("hello the size is:"+user4.size());
							System.out.println("Test12345");
						
							if(user4!=null && user4.size()>0)
							{
								for(int i14=0;i14<1;i14++)
								{
									User_profile_pic m4=(User_profile_pic)user4.get(i14);
									String s11q=m4.getLink();
									
									System.out.println(s11q);
									s11q=s11q.substring(7);
									System.out.println(s11q);
									//String IMG=getServletContext().getRealPath("") + File.separator +s11;
							
							%>

	<br>
	<p>
		<img
			style="vertical-align: middle; margin-left: 10px; margin-right: 20px; border: 1px solid black;"
			src=\<%=m4.getLink()%> width="60" height="60" align="left" />



		<%
					
					 	
					 	System.out.println("GASDFGHHHJKLLLLLLLLL");
						}//for-286
							}//if-285
						}//try-267
							catch (Exception e)
						{
							System.out.println("THIS IS THE ERRROR  "+e);
							
						}	
					%>
		<%
					ArrayList user7=null;
					String r="from USER_INFO where user_id="+u.getUser_id();
					Query w=session112.createQuery(r);
					user7=(ArrayList)w.list();
					w.setMaxResults(1);
					if(user7!=null && user7.size()>0)
					{
						for(int i14=0;i14<user7.size();i14++)
						{
							USER_INFO m4=(USER_INFO)user7.get(i14);
				%>
	
	<div class="tab"
		style="border-color: black; background-color: rgb(120, 156, 147);">
		<table style="margin-left: 50px;">
			<tr>
				<td><a href="profiles.jsp?u_id=<%=m4.getUser_id()%>"><%=u.getProfile_name() %></a>-<%=new Date()%></td>
				<%		}
					}
					
					%><td></td>
			</tr>
		</table>
	</div><%=comments%>
	<br>
	<hr>




	<%//}
		//			}
					
				
				
				
				
				//........formate for video.....//
					
					//.........we cant do only by one query as we have to load user PROFILE_Image
								
	}//try-84
	catch(Exception e)
	{
		System.out.println("ERROR DUE TO"+":"+e);	
	
	}


}
  
  %>



















</body>

</html>