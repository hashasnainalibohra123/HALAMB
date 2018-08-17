
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<div id="page">
		<header>
		<div class="whiteStripe clearfix">
			<div id="social">
				<a href="http://www.CREATE_ACCOUNT.com/rss/rss.xml" target="_blank"><img
					src="http://static.CREATE_ACCOUNT.com/v2/img/xv-rss.png"
					alt="XML RSS feed" /></a> <a
					href="http://twitter.com/CREATE_ACCOUNTcom" target="_blank"><img
					src="http://static.CREATE_ACCOUNT.com/v2/img/xv-red-twitter.png"
					alt="CREATE_ACCOUNT on Twitter" /></a>
			</div>
			<a href="http://www.CREATE_ACCOUNT.com" title="CREATE_ACCOUNT Home"
				id="mainLogo"> <img
				src="http://img100.CREATE_ACCOUNT.com/videos/thumbs/CREATE_ACCOUNT.gif"
				alt="CREATE_ACCOUNT Home" id="siteLogo" />
			</a>
			<h1>HALAMB.COM</h1>

			<form action="Search" method="get" id="searchForm">
				<input type="text" name="k" value="" id="q" maxlength="2048"
					size="30" /> <input type="submit" value="Search" id="searchSubmit" />
			</form>
			<h2>
				THE BEST <span class="redText">FREE multimedia</span> SITE
			</h2>
		</div>

		<div class="redStripe clearfix" id="mainMenu">
			<p>3000+ multimedia VIDEOS / DAY</p>
			<ul>
				<li><a href="http://www.CREATE_ACCOUNT.com/best/">Best
						Videos</a></li>
				<li><a href="http://www.CREATE_ACCOUNT.com/multimediastars">multimediastars</a></li>
				<li><a href="http://www.CREATE_ACCOUNT.com/channels">Channels</a></li>
				<li><a href="http://www.CREATE_ACCOUNT.com/profiles">Profiles</a></li>
				<li><a href="http://www.CREATE_ACCOUNT.com/tags/">Tags</a></li>
				<li><a href="http://forum.xnxx.com/">Forum</a></li>
				<li><a href="http://multi.xnxx.com/">multimedia Pics</a></li>
			</ul>
		</div>

		<div class="blackStripe clearfix" id="secondaryMenu">
			<ul>
				<li><strong><a
						href="http://www.CREATE_ACCOUNT.com/c/Amateur-17">Real Amateur
							multimedia Videos</a></strong></li>
				<li>||</li>
				<li><a href="http://www.CREATE_ACCOUNT.com/best/day/">Best
						Of Today</a></li>
				<li>|</li>
				<li><a href="http://www.CREATE_ACCOUNT.com/best/week/">Best
						Of 7 Days</a></li>
				<li>|</li>
				<li><a href="http://www.CREATE_ACCOUNT.com/best/month/">Best
						Of 30 Days</a></li>
				<li>|</li>
			</ul>
		</div>
		</header>

	</div>

	<%@ page
		import="com.webmedia.model.USER_INFO,com.HALAMB.User_insert_hibernate,com.webmedia.model.IMAGE_DATA, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,
 java.io.File,
 java.awt.image.BufferedImage;"%>
	<h2>IMAGES</h2>
	<div id="social">


		<form action="Download" method="post" enctype="multipart/form-data">
			<hr />
			<br>
			<hr>
			<!-- <input type="image"  src="HOT\h2.jpg" name='h1' size="200" height="200"/>
<input type="image"  src="HOT\h3.jpg" name='h1' size="200" height="200"/>
<input type="image"  src="HOT\h4.jpg" name='h1' size="200" height="200"/> -->
			<input type="text" name="her" /> <input type="submit" name="her" />

			<%ArrayList user = null;
	HttpSession session11=request.getSession(false);
	User_insert_hibernate h;
	IMAGE_DATA i;
	USER_INFO u;
	int image_id;
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
			 	
			 	queryString="from IMAGE_DATA where user_id='"+u.getUser_id()+"'";
			
			 	
			 	try
				{//	
			 		System.out.println("fsd123");
					AnnotationConfiguration config1=new AnnotationConfiguration();
				//config.addAnnotatedClass();
					System.out.println("Testsddfsd123");
					config1.addAnnotatedClass(IMAGE_DATA.class);
					System.out.println("Testsdfsfssdfsd123");
				config1.configure("hibernate.cfg.xml");
				//new SchemaExport(config).create(true,true);
				System.out.println("build session factory");
				SessionFactory factory=config1.buildSessionFactory();
				Session session112=factory.getCurrentSession();
				session112.beginTransaction();
				System.out.println("Testsdfsfssdfsd123");
					Query q=session112.createQuery(queryString);
					
					//List user=q.list();
					
					System.out.println("Test123");		
					user= (ArrayList) q.list();
								
				System.out.println("hello the size is:"+user.size());
				System.out.println("Test12345");
				
				if(user!=null && user.size()>0)
				{
					for(int i1=0;i1<user.size();i1++)
					{
						IMAGE_DATA m=(IMAGE_DATA)user.get(i1);
						System.out.println("THE m.getImage Name is"+m.getImage_name());
						System.out.println("The LINK TO IMAGE IS:"+m.getLink());
						String s11=m.getLink();
						
						
				        int counter = 0;
						System.out.println(s11);
						s11=s11.substring(7);
						System.out.println(s11);
						String IMG=getServletContext().getRealPath("") + File.separator +s11;
					if(m.getFormate().equals("image/jpeg"))
					{
					%><A href="Download?Image_Id=<%=m.getImage_id() %>"><img
				src="\<%=m.getLink() %>" width="200" height="200" /></A>

			<%
					}%>
			<br>
			<hr>
			<%
					if(m.getFormate().equals("video/mp4"))
							{
						%>
			<A href="Download?Image_Id=<%=m.getImage_id() %>"><video
					src="\<%=m.getLink() %>" 8 /></A>
			<%	}
					}
				}
			 	
			 	
				}catch (Exception e)
				{
					System.out.println("THIS IS THE ERRROR  "+e);
					
				}
			 	
			 	
			 	
			 	
			 	
			 	
		 }//else
		 
		 
		 
		 }//else outer  %>


		</form>

		<!--  <a class="image" href="E:\HOT\h2.jpg" target="_blank"><img src="E:\HOT\h2.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" download="myimage"><img src="E:\HOT\h3.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h4.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h5.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h6.jpg"  /></a>
       -->
		<!--   <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h7.jpg"  /></a>\
           <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h8.jpg"  /></a>
           <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h9.jpg"  /></a></div>
 -->
	</div>
	<div>
		<footer>
		<div class="botLinks">
			<a href="http://info.CREATE_ACCOUNT.com/legal/tos/">Terms of
				service</a> - <a href="Upload">Upload Your Videos</a> - <a
				href="http://www.ant.com/video-downloader/" target="_blank">Download
				our videos</a> - <a href="http://info.CREATE_ACCOUNT.com/advertising/">Advertising</a>
			- <a href="http://info.CREATE_ACCOUNT.com/content/">Content
				removal</a> - <a href="/rss/rss.xml">RSS Updates</a> - <a
				href="/rss/del.xml">Deletes RSS</a> - <a
				href="http://info.CREATE_ACCOUNT.com/">More</a>...
		</div>

		<p class="slogan">CREATE_ACCOUNT.com - the best free multimedia
			videos on internet, 100% free.</p>
		</footer>

	</div>
</body>
</html>