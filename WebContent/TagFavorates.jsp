<%@page import="com.HALAMB.Favorate_list"%>
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
  org.hibernate.SessionFactory,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,com.HALAMB.Favorate_video_List,
 java.io.File,com.HALAMB.Comment_Table,com.HALAMB.Favorate_list,
 java.awt.image.BufferedImage;"%>




	<%HttpSession session1=request.getSession(true);
				
			String s1=(String)session1.getAttribute("email");
			String s2=(String)session1.getAttribute("password");
			String user_id=(String )request.getParameter("user_id");
			String down="Comments_loding.jsp";
			session.setAttribute("from",down);
			session.setAttribute("user_id",user_id);
				
			%>








	
			<%ArrayList user= null,user2=null,user_f=null,user_v=null;
		boolean flag=false;
      //.....boolean for ID checking........//
      boolean flag1=false;
		
		//.....checking for SESSSION >>>
  	 String session1_f,session2_f;
	 HttpSession session_f=request.getSession(false);
	 System.out.println("TEST "+session_f);
	
	 //......ANNOTATION CONFIGURATION.............//
	 	AnnotationConfiguration config1=new AnnotationConfiguration();
	
		
		
		
		
		//config.addAnnotatedClass();
			config1.addAnnotatedClass(IMAGE_DATA.class);
			config1.addAnnotatedClass(Favorate_list.class);
			config1.addAnnotatedClass(Favorate_video_List.class);
		config1.configure("hibernate.cfg.xml");
		//new SchemaExport(config).create(true,true);
		SessionFactory factory=config1.buildSessionFactory();
	
	 
	 
	 
	 if(session_f==null)
	{
		
		
		System.out.println("You have to login first");
		HttpSession session123=request.getSession();
//session123.setAttribute("from","upload" );
//session.setAttribute("password",r.getPass());


	
	//	getServletContext().getRequestDispatcher("/login.html").forward(request, response);
		destroy();
		
	}
	else
	{
		
		session1_f=(String) session.getAttribute("email");
		session2_f=(String) session.getAttribute("password");
		HttpSession session123=request.getSession();
		session123.setAttribute("from","home" ); 
		if(session1_f==null &&  session2_f==null)
		{		
			System.out.println("In the Upload Area "+session1_f+"   "+session2_f);
		}
		else
		{
			flag=true;
			session.setAttribute("from","favorate_list_loding");
	
				USER_INFO u=new USER_INFO();
				String queryString="from USER_INFO where email='"+session1_f+"'";
				User_insert_hibernate s=new User_insert_hibernate();
				u=s.UserLogin(queryString);
				System.out.println("Your pass word is"+u.getPass());
				
				
				
				config1.addAnnotatedClass(USER_INFO.class);
				config1.addAnnotatedClass(Favorate_list.class);
				config1.addAnnotatedClass(Favorate_video_List.class);
				try
				{//	
			
					Session session23=factory.getCurrentSession();
				session23.beginTransaction();
					
				System.out.println("Testsdfsfssdfsd123");
				Query q;
				q=session23.createQuery("from Favorate_list where user_id="+u.getUser_id());
				user_f=(ArrayList)q.list();
				%>
				<div id="content">
				<div class="adminBox">
				

					<div class="contentbox">
						<h5 class="blackTitle">
							My favorites lists (<%=user_f.size() %>
							lists)
						</h5>
						<form>
			
<%if(user_f!=null && user_f.size()>0)
{
	for(int i1=0;i1<user_f.size();i1++)
	{
		
		Favorate_list m=(Favorate_list)user_f.get(i1);
		System.out.println("THE m.getImage Name is"+m.getFav_list_name());
		System.out.println("The LINK TO IMAGE IS:"+m.getUser_id());
		int count_max = ((Long)session23.createQuery("select count(*) from Favorate_video_List where f_id="+m.getF_id()).uniqueResult()).intValue();
		System.out.println("THIS IS CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCOUNT+"+count_max +"DDDDDDDDDDDDDDDDDDDDDDDD"+m.getF_id());
	
	%>
							<h5 class="blackTitle">
							<%=m.getFav_list_name() %>(<%=count_max %>
							lists)
						</h5>	<input type="radio"  value="<%=m.getF_id()%>"  name="favlist_list" id="favlist_list<%=m.getF_id() %>" /> <label >
										<strong><span class="name"><%=m.getFav_list_name() %></span></strong>
										(<%=count_max %>    <%=m.getF_id()%> video) 
								</label> <br>  

							
							<%
	
		}
}
	
				}catch(Exception e){System.out.println("sdfsfsfs"+e);}

		}
	}

 %>
 </form>
						
								
							
						
						<div class="vsep"></div>

						
					</div>
				</div>
			</div>
			
</body>
</html>