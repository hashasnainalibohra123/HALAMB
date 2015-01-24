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
		import="com.HALAMB.USER_INFO,com.HALAMB.User_insert_hibernate,com.HALAMB.IMAGE_DATA,com.HALAMB.User_profile_pic, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,com.HALAMB.Upload_Profile_pic,com.HALAMB.USER_INFO_IMAGE_DATA,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,java.util.Date,
 java.io.File,com.HALAMB.Comment_Table,
 java.awt.image.BufferedImage;"%>


	<%

HttpSession httpsession=request.getSession(true);
String email,pass,Image_Id;
if(httpsession.isNew())
	
{
		System.out.println("You have to login first");
		HttpSession session123=request.getSession();
		session123.setAttribute("from","comment" ); 
		getServletContext().getRequestDispatcher("/login.html").forward(request, response);
		destroy();
	
	
}

else
{
	
String comments=request.getParameter("q");
System.out.println("YOU S SESSION IS    ");
email=(String) httpsession.getAttribute("email");
 pass=(String) httpsession.getAttribute("password");
 Image_Id=(String )httpsession.getAttribute("Image_Id");
 
 //.....GETTING USER..............//
 USER_INFO u=new USER_INFO();
 String queryString="from USER_INFO where email='"+email+"'";
 User_insert_hibernate s=new User_insert_hibernate();
 u=s.UserLogin(queryString);
 System.out.println("Your pass word is"+u.getPass() +pass);
 
 
 //....GETTING IMAGE..............//
 IMAGE_DATA i=new IMAGE_DATA();
 String queryString1="from IMAGE_DATA where image_id='"+Image_Id+"'";
 User_insert_hibernate s1=new User_insert_hibernate();
 i=s1.Getting_Object(queryString1);

 
 
 //......setting values to comment_table..............//
AnnotationConfiguration config12=new AnnotationConfiguration();
config12.addAnnotatedClass(USER_INFO.class);
config12.addAnnotatedClass(IMAGE_DATA.class);
config12.addAnnotatedClass(User_profile_pic.class);
config12.addAnnotatedClass(Comment_Table.class);
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
	Comment_Table ct;
	int image_id[],b[];
	String session13,session2;
	
	//<<<<<<<<<<<<<first we get Comment as we know the image id>>>>>>>>>>>>>>>>//
	 queryString="from Comment_Table where Image_Id='"+Image_Id+"'";
	
	
    try
	{	
		
	
	
		Session session112=factory.getCurrentSession();
		
		session112.beginTransaction();
	
	//................CODE FOR REMOVING DUPLICATE FROM AYYAY OF IMAGE_ID.............//
  
	
	//<<<<<<<<<<<<<  Count number of commnets >>>>>>>>>>
	
		
		
		//............imgage loding..........
				//....display image...........
				
				
					queryString="from Comment_Table where image_id='"+Image_Id+"'";
					Query q12=session112.createQuery(queryString);
					user3= (ArrayList) q12.list();
					System.out.println("hello the size for Image<<<<<<<<>>>>>>>>>data is:"+user3.size());
					if(user3!=null && user3.size()>0)
					{
						for(int i3=0;i3<1;i3++)
						{
							
							Comment_Table c=(Comment_Table)user3.get(i3);
						System.out.println("your Comment"+c.getComment());
						System.out.println("your PASSWORD is"+c.getComment_date()+"\n\n");
						
						
					 	
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
									System.out.println("THE PROFILE PIC  Name is"+m4.getData_size());
									System.out.println("The LINK TO PROFILE IMAGE IS:"+m4.getLink());
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
				<td><a href="profiles.jsp?u_id=<%=m4.getUser_id()%>"><%=u.getProfile_name() %></a>-<%=registered%></td>
				<%		}
					}
					
					%><td></td>
			</tr>
		</table>
	</div><%=comments%>
	<br>
	<hr>




	<%}
					}
					
				
				
				
				
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