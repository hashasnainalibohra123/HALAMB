
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

			<form action="Search.jsp" method="get" id="searchForm">
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
   org.hibernate.cfg.AnnotationConfiguration;"%>


	<h2>IMAGES</h2>
	<div id="social">



		<form action="Download" method="post" enctype="multipart/form-data">


			<!-- <input type="image"  src="HOT\h2.jpg" name='h1' size="200" height="200"/>
<input type="image"  src="HOT\h3.jpg" name='h1' size="200" height="200"/>
<input type="image"  src="HOT\h4.jpg" name='h1' size="200" height="200"/> -->
			<input type="text" name="her" /> <input type="submit" name="her" />



		</form>

		<!--  <a class="image" href="E:\HOT\h2.jpg" target="_blank"><img src="E:\HOT\h2.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" download="myimage"><img src="E:\HOT\h3.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h4.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h5.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h6.jpg"  /></a>
       -->
		<%ArrayList user= null;
       String search=(String)request.getParameter("k");
		try
		{//	
	
			AnnotationConfiguration config1=new AnnotationConfiguration();
		//config.addAnnotatedClass();
			config1.addAnnotatedClass(IMAGE_DATA.class);
		config1.configure("hibernate.cfg.xml");
		//new SchemaExport(config).create(true,true);
		SessionFactory factory=config1.buildSessionFactory();
		Session session1=factory.getCurrentSession();
		session1.beginTransaction();
			
		//............getting search string from FORM HTML..................//
		
		System.out.println("THIS IS TO BE SEARCH"+search);
		
		
		String queryString = "from ContentItem where image_name = '%"+search+"%' ";
		
			Query q=session1.createQuery("from IMAGE_DATA where image_name like'%"+search+"%' ");
			q.setMaxResults(4);
			//List user=q.list();
			
						user=(ArrayList) q.list();
		System.out.println("hello the size is:"+user.size());
		
		
		if(user!=null && user.size()>0)
		{
			for(int i=0;i<user.size();i++)
			{
				IMAGE_DATA m=(IMAGE_DATA)user.get(i);
				System.out.println("THE m.getImage Name is"+m.getImage_name());
				System.out.println("The LINK TO IMAGE IS:"+m.getLink());
				%>

		<A href="Download_side_video.jsp?Image_Id=<%=m.getImage_id() %>"><video
				src="\<%=m.getLink() %>" width="200" height="200" /></A>
		<%}
		}
		
		
		
		session1.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			
			System.out.println("Error  due to asf "+e);
		}
     
     %>

		<br />



		<%ArrayList user1 = null;
		try
		{//	
	
			AnnotationConfiguration config1=new AnnotationConfiguration();
		//config.addAnnotatedClass();
			config1.addAnnotatedClass(IMAGE_DATA.class);
		config1.configure("hibernate.cfg.xml");
		//new SchemaExport(config).create(true,true);
		SessionFactory factory=config1.buildSessionFactory();
		Session session1=factory.getCurrentSession();
		session1.beginTransaction();
			
			Query q=session1.createQuery("from IMAGE_DATA where image_name like'%"+search+"%' and formate ='image/jpeg'");
			q.setMaxResults(4);
			//List user=q.list();
			
						user1=(ArrayList) q.list();
		System.out.println("hello the size is:"+user1.size());
		
		
		if(user1!=null && user1.size()>0)
		{
			for(int i=0;i<user1.size();i++)
			{
				IMAGE_DATA m=(IMAGE_DATA)user1.get(i);
				System.out.println("THE m.getImage Name is"+m.getImage_name());
				System.out.println("The LINK TO IMAGE IS:"+m.getLink());
				%>

		<A href="Download_side.jsp?Image_Id=<%=m.getImage_id() %>"><img
			src="\<%=m.getLink() %>" width="200" height="200" /></A>
		<%}
		}
		
		
		
		session1.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			
			System.out.println("Error  due to "+e);
		}
     
     %>

		<%--  <a id="download" href="<%m.getLink(); %>" >Download</a>
       
       <a href="<%m.getLink(); %>"><img border="0" src="HOT\h2.jpg"/></a>
       --%>
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