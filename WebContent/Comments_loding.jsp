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
  org.hibernate.SessionFactory,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,
 java.io.File,com.webmedia.model.Comment_Table,
 java.awt.image.BufferedImage;"%>




	<%HttpSession session1=request.getSession(true);
				
			String s1=(String)session1.getAttribute("email");
			String s2=(String)session1.getAttribute("password");
			String Image_Id=(String )request.getParameter("img_id");
			String down="Comments_loding.jsp";
			session.setAttribute("from",down);
			session.setAttribute("Image_Id",Image_Id);
				
			%>








	<div id="tabComments" class="tab">

		<h3 class="blackTitle">
			Comments (<span class="nbVideoComments">8</span>):
		</h3>


		<%
			if(s1==null && s2==null || session1.isNew())
							
				{	%>



		<div class="tabHeaderForm notLoggedIn">

			<div class="leftCol">
				<p>
					<strong>You must be logged in to comment a video.</strong>
				</p>
				<form method="POST" id="signinForm" action="LOGIN_ACCOUNT">
					<table>
						<tr>
							<th>Your login (email):</th>
							<td><input type="text" name="login" id="comment__login_text" /></td>
						</tr>
						<tr>
							<th>Your password:</th>
							<td><input type="password" name="password"
								id="comment__password_text" /></td>
						</tr>
					</table>
					<input type="submit" value="Login" name="log" />
					<p class="forgot_password">
						<a href="http://upload.HALAMB.com/account/lostpassword"
							target="_blank">Forgot username or password ?</a>
					</p>
				</form>
			</div>
			<div class="rightCol">
				<p>Not yet a HALAMB member? Here is what you can do with a FREE
					account:</p>
				<ul>
					<li>- Upload videos.</li>
					<li>- Commenting.</li>
					<li>- Add videos to your favorites.</li>
					<li>- Create your profile page and make some new friends.</li>
				</ul>
				<div class="signup">
					<a class="button" href="http://upload.HALAMB.com/account/create"
						target="_blank">Sign Up Now For Free</a>
				</div>
			</div>
		</div>
		<%} else
				{%>

		<div class="tab" style="border-color: black;">
			Comment The video<br />
			<!-- <form method="POST" id="signinForm" action="Comments_loding.jsp" >
				 -->
			<form method="POST" id="signinForm">
				<table>
					<tr>

						<td><textarea rows="5" name="text" id="message_text"
								onChange="updateMessageBox()" onKeyUp="updateMessageBox()"></textarea></td>
					</tr>
					<tr>
						<td><input type="button" value="Comment" name="log"
							onclick="fReload();" /></td>
					</tr>
				</table>
			</form>
		</div>
		<%} %>


		<span id="addHere"></span>
		<%ArrayList user1=null,user3=null,user4=null,user5 = null,user6 = null;
	
 	HttpSession session11=request.getSession(false);
	
 	//.....Varible...... 	
 	User_insert_hibernate h;
	IMAGE_DATA i;
	USER_INFO u;
	Comment_Table ct;
	int image_id[],b[];
	String session13,session2;
	
	//<<<<<<<<<<<<<first we get Comment as we know the image id>>>>>>>>>>>>>>>>//
	String queryString="from Comment_Table where Image_Id='"+Image_Id+"' ORDER BY comment_date DESC";
	AnnotationConfiguration config1=new AnnotationConfiguration();

	config1.addAnnotatedClass(IMAGE_DATA.class);
	config1.addAnnotatedClass(IMAGE_DATA.class);
	config1.addAnnotatedClass(Comment_Table.class);
	config1.addAnnotatedClass(User_profile_pic.class);
	config1.configure("hibernate.cfg.xml");
	SessionFactory factory=config1.buildSessionFactory();
	
    try
	{	
		
	
	
		Session session112=factory.getCurrentSession();
		
		session112.beginTransaction();

		Query q=session112.createQuery(queryString);
		user5= (ArrayList) q.list();
		
		System.out.println("hello users record in comment table >>>size is:"+user5.size());
		
	b=new int[user5.size()];
	
	if(user5!=null && user5.size()>0)
	{
		for(int i1=0;i1<user5.size();i1++)
		{
			
			 ct=(Comment_Table)user5.get(i1);
			
			b[i1]=ct.getUser_id();
	
		}
	}
			
	//................CODE FOR REMOVING DUPLICATE FROM AYYAY OF IMAGE_ID.............//
    for( int i1 = 0; i1 < user5.size(); i1++){
         System.out.println(b[i1]);
    }
	
	
	
	//<<<<<<<<<<<<<  Count number of commnets >>>>>>>>>>
	
		
		
		//............imgage loding..........
				//....display image...........
				
				
					queryString="from Comment_Table where image_id='"+Image_Id+"' ORDER BY comment_date DESC";
					Query q12=session112.createQuery(queryString);
					user3= (ArrayList) q12.list();
					System.out.println("hello the size for Image<<<<<<<<>>>>>>>>>data is:"+user3.size());
					if(user3!=null && user3.size()>0)
					{
						for(int i3=0;i3<user3.size();i3++)
						{
							
							Comment_Table c=(Comment_Table)user3.get(i3);
						System.out.println("your Comment"+c.getComment());
						System.out.println("your PASSWORD is"+c.getComment_date()+"\n\n");
						
						
					 	
					 	queryString="from User_profile_pic where user_id='"+b[i3]+"'";
					
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
								for(int i14=0;i14<user4.size();i14++)
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
					String r="from USER_INFO where user_id="+b[i3];
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
					<td><a href="profiles.jsp?u_id=<%=m4.getUser_id()%>"><%=m4.getProfile_name() %></a>-<%=c.getComment_date()%></td>
					<%		}
					}
					
					%><td></td>
				</tr>
			</table>
		</div><%=c.getComment()%>
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


  
  
  %>






	</div>


</body>
</html>