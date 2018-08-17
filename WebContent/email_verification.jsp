<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->

<title>My account - hasnain123 - HALAMBS.COM</title>
<meta http-equiv="X-Frame-Options" content="deny">

<link rel="shortcut icon"
	href="http://static.HALAMBs.com/img/favicon_HALAMBs.ico">

<link rel="stylesheet"
	href="http://static.HALAMBs.com/v2/css/xv-styles.css?v=18">
<link rel="stylesheet" href="Accounts_style.css?v=17">
<link rel="stylesheet" href="CSS_01.css?v=18">
<link rel="stylesheet" href="PROFILE_STYle.CSS?v=9">
<script
	src="http://static.HALAMBs.com/v2/js/libs/modernizr-2.6.2.min.js"></script>
<script src="http://static.HALAMBs.com/v2/js/script-head.js?v=4"></script>
<script>
    var profile_name = "hasnain123";    var page_type = "EMAIL";
  </script>
</head>
<body>
	<div id="page">
		<header>
		<div class="whiteStripe clearfix">
			<div id="social">
				<a href="http://www.HALAMBs.com/rss/rss.xml" target="_blank"><img
					src="http://static.HALAMBs.com/v2/img/xv-rss.png"
					alt="XML RSS feed" /></a> <a href="http://twitter.com.webmedia.modelscom"
					target="_blank"><img
					src="http://static.HALAMBs.com/v2/img/xv-red-twitter.png"
					alt="HALAMBs on Twitter" /></a>
			</div>
			<a href="http://www.HALAMBs.com/" title="HALAMBs Home" id="mainLogo">
				<img src="http://img100.HALAMBs.com/videos/thumbs/HALAMBs.gif"
				alt="HALAMBs Home" id="siteLogo" />
				<h1 class="hidden">HALAMBS.COM</h1>
			</a>
			<form action="http://www.HALAMBs.com/" method="get" id="searchForm">
				<input type="text" name="k" value="" id="q" maxlength="2048"
					size="30" /> <input type="submit" value="Search" id="searchSubmit" />
			</form>
			<h2>
				THE BEST <span class="redText">FREE PORN</span> SITE
			</h2>
		</div>

		<div class="redStripe clearfix" id="mainMenu">
			<p>3000+ PORN VIDEOS / DAY</p>
			<ul>
				<li><a href="http://www.HALAMBs.com/new/">New Videos</a></li>
				<li><a href="http://www.HALAMBs.com/best/">Best Videos</a></li>
				<li><a href="http://www.HALAMBs.com/pornstars">Pornstars</a></li>
				<li><a href="http://www.HALAMBs.com/channels">Channels</a></li>
				<li><a href="http://www.HALAMBs.com/profiles">Profiles</a></li>
				<li><a href="http://www.HALAMBs.com/tags/">Tags</a></li>
				<li><a href="http://forum.xnxx.com/">Forum</a></li>
				<li><a href="http://multi.xnxx.com/">Best Pics</a></li>
			</ul>
		</div>


		</header>






		<form action="Download" method="post" enctype="multipart/form-data">


			<!-- <input type="image"  src="HOT\h2.jpg" name='h1' size="200" height="200"/>
<input type="image"  src="HOT\h3.jpg" name='h1' size="200" height="200"/>
<input type="image"  src="HOT\h4.jpg" name='h1' size="200" height="200"/> -->


		</form>

		<!--  <a class="image" href="E:\HOT\h2.jpg" target="_blank"><img src="E:\HOT\h2.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" download="myimage"><img src="E:\HOT\h3.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h4.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h5.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h6.jpg"  /></a>
       -->
		<%@ page
			import="com.webmedia.model.USER_INFO,com.HALAMB.User_insert_hibernate,com.webmedia.model.IMAGE_DATA, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,
 java.io.File,com.webmedia.model.User_profile_pic,
 java.awt.image.BufferedImage;"%>
		<%ArrayList user= null,user2=null;
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
		{		System.out.println("In the Upload Area "+session1_f+"   "+session2_f);
	
			
		
		%>











		<%
		//getServletContext().getRequestDispatcher("/login.html").forward(request, response);
	}
		else
		{
		//getServletContext().getRequestDispatcher("/Upload_Image.jsp").forward(request, response);
				flag=true;


				USER_INFO u=new USER_INFO();
				String queryString="from USER_INFO where email='"+session1_f+"'";
				User_insert_hibernate s=new User_insert_hibernate();
				u=s.UserLogin(queryString);
				System.out.println("Your pass word is"+u.getPass());
String folder =u.getUser_id()+"."+u.getUser_name()+File.separator+"profile_pic";
System.out.println("YOUR FOLDER IS"+folder);
			 	
			 	queryString="from User_profile_pic where user_id='"+u.getUser_id()+"'";
			
			 	User_profile_pic p=new User_profile_pic();
			 	try
				{//	
			 		
						Session session112=factory.getCurrentSession();
					session112.beginTransaction();
					System.out.println("Testsdfsfssdfsd123");
					Query q=session112.createQuery(queryString);
					q.setMaxResults(1);
					user= (ArrayList) q.list();
					System.out.println("hello the size is:"+user.size());
					System.out.println("Test12345");
				
					if(user!=null && user.size()>0)
					{
						for(int i1=0;i1<user.size();i1++)
						{
							User_profile_pic m=(User_profile_pic)user.get(i1);
							System.out.println("THE m.getImage Name is"+m.getData_size());
							System.out.println("The LINK TO IMAGE IS:"+m.getLink());
							String s11=m.getLink();
							
							int counter = 0;
							System.out.println(s11);
							s11=s11.substring(7);
							System.out.println(s11);
							String IMG=getServletContext().getRealPath("") + File.separator +s11;
							if(m.getLink().equals("HALAMB\\upload_images\\Default\\unknown.jpg"))
							{
								System.out.println("yes");
								flag1=true;
							}
						}
						
					
					}
					
				}catch(Exception e){}


%>




		<div class="blackStripe clearfix" id="secondaryMenu">
			<p>
				<%=u.getEmail() %>
				| <a href="http://www.HALAMBs.com/profiles/hasnain123"><b>My
						profile</b></a> | <a href="/account"><b>My account</b></a> | <a
					href="Logout"><b>Sign out</b></a>
			</p>
		</div>








		<div id="main" class="pageAccount">
			<div id="userAdminLeftPanel">
				<div class="adminBox">
					<h3>Account status</h3>
					<div class="contentbox">
						<ul>
							<li><strong>Email:</strong> <%if(u.getVarified()!=1){
            %> <a class="redText" href="email_verification.jsp">
									unverified</a> <%  
              }
              else
              {%> verified <%  
              }
              %></li>
							<li><strong>Identity:</strong> <%if(flag1==true){ %> <a
								class="redText" href="profile_pic.jsp"> unerified</a> <%}else
                                	{%> verified <%} %></li>
							<li><strong>Type:</strong> regular account (<a
								class="redText" href="/account/request_pro_account">request
									a pro account</a>)</li>
						</ul>
					</div>
				</div>

				<div class="adminBox">
					<h3>My Friends</h3>
					<div class="contentbox">
						<ul>
							<li><a href="/account/friends">All my friends</a></li>
							<li><a href="/account/friendsrequests">New friends
									requests</a></li>
							<li><a href="/account/people/ilike">People I like</a></li>
							<li><a href="/account/people/wholikeme">People who like
									me</a></li>
							<li><a href="/account/friendsactivities">Friends
									activities</a></li>
							<li><a href="/account/blockedusers">Blocked users</a></li>
						</ul>
					</div>
				</div>
				<div class="adminBox">
					<h3>My favorites</h3>
					<div class="contentbox">
						<ul>
							<li><a href="/account/favorites">My favorites</a></li>
							<li><a href="/account/managefavorites">Manage favorites
									lists</a></li>
							<li><a href="/account/videosilike">Videos I like</a></li>
						</ul>
					</div>
				</div>
				<div class="adminBox">
					<h3>My videos</h3>
					<div class="contentbox">
						<ul>
							<li><a href="/account/uploads">My videos uploaded</a></li>
							<li><a href="/account/uploads/new">Upload new videos</a></li>
							<li><a href="/account/uploads/delete">Ask for videos
									deletion</a></li>
						</ul>
					</div>
				</div>
				<div class="adminBox">
					<h3>My photos</h3>
					<div class="contentbox">
						<ul>
							<li><a href="/account/profilepic">My main picture</a></li>
							<li><a href="/account/albums">Manage my albums</a></li>
						</ul>
					</div>
				</div>
				<div class="adminBox">
					<h3>My profile</h3>
					<div class="contentbox">
						<ul>
							<li><a href="/account/comments">Manage comments</a></li>
							<li><a href="/account/edit">Edit information</a></li>
							<li><a href="/account/verify_account">Verify my profile</a></li>
							<li><a href="/account/email" class="sel">Change/validate
									email</a></li>
							<li><a href="/account/password">Change password</a></li>
							<li><a href="/account/close">Close account</a></li>
						</ul>
					</div>
				</div>
				<div class="adminBox">
					<h3>Contact us</h3>
					<div class="contentbox">
						<ul>
							<li><a href="/account/support">My conversations</a></li>
						</ul>
					</div>
				</div>
			</div>





			<div id="content">
				<div class="adminBox">
					<h2>My profile - Change / Validate email</h2>

					<div class="contentbox" id="changeEmail">
						<form id="changeEmailForm" method="POST" action="verify_email">


							<div class="formLine">
								<label>Enter Verification Code:</label>
								<div class="content">
									<input name="password" id="password_text" type="password"
										value=""
										data-validation='{"parent":".formLine","rules":[{"name":"min","min":5}]}' />

									<input type="submit" value="Validate my email address" />
								</div>

							</div>
						</form>
						<%
      if(u.getVarified()!=1)
      {
    	  
      %>

						<p>
							Your email has not been validated yet. Please validate it.<br>
							A validated email is requested to create your profile page and
							receive notifications on your profile.
						</p>
						<%} %>
					</div>

				</div>

			</div>
		</div>
		<!-- #main -->
		<%
				
				
				
		destroy();
		
		}
		
	}//else-54

   	
		%>

		<footer>
		<div class="botLinks">
			<a href="http://info.HALAMBs.com/legal/tos/">Terms of service</a> - <a
				href="http://info.HALAMBs.com/">Upload Your Videos</a> - <a
				href="http://www.ant.com/video-downloader/" target="_blank">Download
				our videos</a> - <a href="http://info.HALAMBs.com/advertising/">Advertising</a>
			- <a href="http://info.HALAMBs.com/content/">Content removal</a> - <a
				href="/rss/rss.xml">RSS Updates</a> - <a href="/rss/del.xml">Deletes
				RSS</a> - <a href="http://info.HALAMBs.com/">More</a>...
		</div>

		<p class="slogan">HALAMBs.com - the best free porn videos on
			internet, 100% free.</p>
		</footer>

	</div>
	<!-- #page  -->


	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="http://static.HALAMBs.com/v2/js/libs/jquery-1.7.2.min.js"><\/script>')</script>


	<script src="http://static.HALAMBs.com/v2/js/script.js?v=14"></script>
	<script src="http://static.HALAMBs.com/v2/js/script-profile.js?v=25"></script>
	<script src="http://static.HALAMBs.com/v2/js/script-account.js?v=23"></script>
</body>
</html>