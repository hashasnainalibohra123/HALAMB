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
org.hibernate.Query,com.webmedia.model.Comment_Table,
 org.hibernate.Session,
  org.hibernate.SessionFactory,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,
 java.io.File,com.HALAMB.Upload_Profile_pic,com.webmedia.model.User_profile_pic,
 java.awt.image.BufferedImage;"%>
	<h3 style="color: blue; text-align: center; text-indent: 50px;">Your
		Comments</h3>
	<%ArrayList user = null,user1=null,user3=null,user4=null;
	HttpSession session11=request.getSession(false);
	User_insert_hibernate h;
	IMAGE_DATA i;
	//int img_id;
	USER_INFO u;
	Comment_Table ct;
	int image_id[],b[];
	String session1,session2;
	String folder;
	System.out.println("TESR");
	if(session11==null)
	{
		
		
		System.out.println("You have to login first");
 
	
		//getServletContext().getRequestDispatcher("/login.html").forward(request, response);
		destroy();
		
	}
	else
	{
		
		session1=(String) session11.getAttribute("email");
		 session2=(String) session11.getAttribute("password");
		 System.out.println();
		 System.out.println("this is IN THE USER_UPLOAD_IMAGES"+session1);
		 System.out.println("this is IN THE USER_UPLOAD_IMAGES"+session2);
		 if(session1==null &&  session2==null)
		{		System.out.println("In the Upload Area "+session1+"   "+session2);
		//getServletContext().getRequestDispatcher("/login.html").forward(request, response);
	}
	
		 String queryString="from USER_INFO where email='"+session1+"'";
		 h=new User_insert_hibernate();
		 
		 u=h.UserLogin(queryString);
		 ct=new Comment_Table();
		 i=new IMAGE_DATA();
		 System.out.println("Your pass word is "+u.getPass());
		 //
		 folder =u.getUser_id()+"."+u.getUser_name();

		 //***************CREATING DIRECOTORY*****************//
		 String s1=getServletContext().getRealPath("")+File.separator+"upload_images"+File.separator +folder;
		 File file1 = new File(s1);
		 System.out.println("PATH DURING CREATING "+s1);
		 if (!file1.exists()) {

		 //*******************THIS IS THE USER_UPLOAD*********************//
		 System.out.println("yoou do not have UPLOAD ANY IMAGES");
		 
		 
		 }
		 else
		 {
			 	System.out.println("YOUR FOLDER IS"+folder);
			 	
			 	queryString="from Comment_Table where user_id='"+u.getUser_id()+"'";
			
			 	
			 	try
				{//	
			 		
					AnnotationConfiguration config1=new AnnotationConfiguration();
				//config.addAnnotatedClass();
					config1.addAnnotatedClass(IMAGE_DATA.class);
					config1.addAnnotatedClass(Comment_Table.class);
				config1.configure("hibernate.cfg.xml");
				SessionFactory factory=config1.buildSessionFactory();
				Session session112=factory.getCurrentSession();
				session112.beginTransaction();
			
					Query q=session112.createQuery(queryString);
					
					//List user=q.list();
					
					System.out.println("Test123");		
					user= (ArrayList) q.list();
					
				System.out.println("hello users record in comment table >>>size is:"+user.size());
				System.out.println("Test12345");
				image_id=new int[user.size()];
				
				if(user!=null && user.size()>0)
				{
					for(int i1=0;i1<user.size();i1++)
					{
						
						 ct=(Comment_Table)user.get(i1);
						//System.out.println("THE comment id Name is"+ct.getImage_id());
						image_id[i1]=ct.getImage_id();
						//if(!ct.getComment().equals(""))
						//System.out.println("The comment IS:"+ct.getComment());
						//String s11=ct.getComment();
						
						
				        //int counter = 0;
						//System.out.println(s11);
						//s11=s11.substring(7);
						//System.out.println(s11);
				//		String IMG=getServletContext().getRealPath("") + File.separator +s11;
						
					/* 	queryString="from IMAGE_DATA where image_id='"+image_id+"'";
						queryString="from Comment_Table where image_id='"+image_id+"' and user_id='"+u.getUser_id()+"'";
						Query q1=session112.createQuery(queryString);
					 */	
						//List user=q.list();
					}
				}
						
				//................CODE FOR REMOVING DUPLICATE FROM AYYAY OF IMAGE_ID.............//
			    int end = image_id.length;

			    for(int i1 = 0; i1 < end; i1++){
			        for(int j = i1 + 1; j < end; j++){
			            if(image_id[i1] == image_id[j]){                  
			                int shiftLeft = j;
			                for(int k = j+1; k < end; k++, shiftLeft++){
			                    image_id[shiftLeft] = image_id[k];
			                }
			                end--;
			                j--;
			            }
			        }
			    }

			     b = new int[end];
			    for( int i1 = 0; i1 < end; i1++){
			        b[i1] = image_id[i1];
			        System.out.println(b[i1]);
			    }
				
				
				
				
				for(int g=0;g<b.length;g++)
				{
					
					
					
					queryString="from IMAGE_DATA where image_id='"+b[g]+"'";
					Query q1=session112.createQuery(queryString);
					user1= (ArrayList) q1.list();
					System.out.println("hello the size for Image data is:"+user1.size());
					if(user1!=null && user1.size()>0)
					{
						for(int i2=0;i2<user1.size();i2++)
						{
							IMAGE_DATA m=(IMAGE_DATA)user1.get(i2);
							System.out.println("THE m.getImage Name is"+m.getImage_name());
							System.out.println("The LINK TO IMAGE IS:"+m.getLink());
							String s111=m.getLink();
													
							//....display image...........
							if(m.getFormate().equals("image/jpeg"))
								{
								%>
	<h2><%=m.getImage_name() %>
		<br />
	</h2>
	<A href="Download?Image_Id=<%=m.getImage_id() %>"><img
		src="\<%=m.getLink() %>" width="100" height="100" /></A>

	<%
							queryString="from Comment_Table where image_id='"+b[g]+"' and user_id='"+u.getUser_id()+"'";
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
									
									System.out.println("YOUR FOLDER IS"+folder);
								 	
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
	<img src=\ <%=m4.getLink()%> width="50" height="50" />


	<%
								
								 	
								 	
									}//for-286
										}//if-285
									}//try-267
										catch (Exception e)
									{
										System.out.println("THIS IS THE ERRROR  "+e);
										
									}	
								%><%=ct.getComment() %>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<%=ct.getComment_date() %>

	<br>
	<A link="Delete_Comment?cid=<%=c.getC_id()%>">Delete</A>

	<br>
	<hr>

	<%}
								}
								}
							
							
							
							
							//........formate for video.....//
								if(m.getFormate().equals("video/mp4"))
								{
								%>
	<h2><%=m.getImage_name() %>
		<br />
	</h2>
	<A href="Download?Image_Id=<%=m.getImage_id() %>"><video
			src="\<%=m.getLink() %>" width="100" height="100" /></A>

	<%
							queryString="from Comment_Table where image_id='"+b[g]+"' and user_id='"+u.getUser_id()+"'";
								Query q12=session112.createQuery(queryString);
								user3= (ArrayList) q12.list();
								System.out.println("hello the size for <<<<<<<<<>>>>>>>>>>>>Image data is:"+user3.size());
								if(user3!=null && user3.size()>0)
								{
									for(int i3=0;i3<user3.size();i3++)
									{
										
										Comment_Table c=(Comment_Table)user3.get(i3);
									System.out.println("your Comment"+c.getComment());
									System.out.println("your PASSWORD is"+c.getComment_date()+"\n\n");
									
									
									//<<<<<<<<<<<<<<<<<LODING PROFILE PIC>>>>>>>>>>>>>>>>>>>//
									System.out.println("YOUR FOLDER IS"+folder);
	 	
	 	queryString="from User_profile_pic where user_id='"+u.getUser_id()+"'";
	
	 	User_profile_pic p=new User_profile_pic();
	 	try
		{//	
	 		
			AnnotationConfiguration config11=new AnnotationConfiguration();
			config11.addAnnotatedClass(User_profile_pic.class);
			config11.configure("hibernate.cfg.xml");
			System.out.println("build session factory");
			SessionFactory factory1=config1.buildSessionFactory();
			Session session1121=factory.getCurrentSession();
			session1121.beginTransaction();
			System.out.println("Testsdfsfssdfsd123");
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
					System.out.println("THE m.getImage Name is"+m4.getData_size());
					System.out.println("The LINK TO IMAGE IS:"+m4.getLink());
					String s11q=m4.getLink();
					
					System.out.println(s11q);
					s11q=s11q.substring(7);
					System.out.println(s11q);
					//String IMG=getServletContext().getRealPath("") + File.separator +s11;
			
			%>
	<br>
	<img src=\ <%=m4.getLink()%> width="50" height="50" />


	<%
	
	 	
	 	
		}//for-286
			}//if-285
		}//try-267
			catch (Exception e)
		{
			System.out.println("THIS IS THE ERRROR  "+e);
			
		}
									
								%><%=c.getComment() %>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<%=c.getComment_date() %>
	<br>
	<A href="Delete_Comment?cid=<%=c.getC_id()%>">Delete</A>

	<hr>

	<%}
								}
								}
							
							
							
						}//169
						
					}//167
				}//158
				
							%>












	<h2 style="color: gray;">Comments:</h2>

	<%
				}//try-84
				catch(Exception e)
				{
					System.out.println("ERROR DUE TO"+":"+e);	
				
				}
	 	
		 }//else-77
	}//else outer-43
		  %>

	<h2 style="color: aqua;">
		<br>
		<hr>
</body>
</html>