
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="Accounts_style.css?v=17">
   <link rel="stylesheet" href="CSS_01.css?v=18">
   <link rel="stylesheet" href="PROFILE_STYle.CSS?v=9">
<title>Insert title here</title>

</head>
<body>


<div id="page">				
    <header>
   
    
      <div id="page">
    <header>
      <div class="whiteStripe clearfix">
        <div id="social">
          <a href="http://www.HALAMB.com/rss/rss.xml" target="_blank"><img src="http://static.HALAMB.com/v2/img/xv-rss.png" alt="XML RSS feed" /></a>
          <a href="http://twitter.com/xvideoscom" target="_blank"><img src="http://static.HALAMB.com/v2/img/xv-red-twitter.png" alt="HALAMB on Twitter" /></a>
        </div>
        <a href="http://www.HALAMB.com"><img src="http://img100.HALAMB.com/videos/thumbs/HALAMB.gif" alt="HALAMB Home" id="siteLogo" /></a>
        <h1 class="hidden">HALAMB.COM</h1>
        <form action="/" method="get" id="searchForm">
          <input type="text" name="k" value="" id="q" maxlength="2048" size="30" />
          <input type="submit" value="Search" id="searchSubmit" />
        </form>
        <h2>THE BEST <span class="redText">FREE VIDEO</span> SITE</h2>
      </div>
      
      <div class="redStripe clearfix" id="mainMenu">
        <p>3000+ Best VIDEOS / DAY</p>
        <ul>
          <li><a href="/best/">Best Videos</a></li>
          <li><a href="/pornstars">Best stars</a></li>
          <li><a href="/channels">Channels</a></li>
          <li><a href="/profiles">Profiles</a></li>
          <li><a href="/tags/">Tags</a></li>
          <li><a href="http://forum.xnxx.com/">Forum</a></li>
          <li><a href="http://multi.xnxx.com/">Best Pics</a></li>
        </ul>
      </div>
      
    
      
    </header>
   
</div>
<%@ page import="com.HALAMB.USER_INFO,com.HALAMB.User_insert_hibernate,com.HALAMB.IMAGE_DATA, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,
   org.hibernate.cfg.AnnotationConfiguration;" %>





<form action="Download" method="post" enctype="multipart/form-data" >


<!-- <input type="image"  src="HOT\h2.jpg" name='h1' size="200" height="200"/>
<input type="image"  src="HOT\h3.jpg" name='h1' size="200" height="200"/>
<input type="image"  src="HOT\h4.jpg" name='h1' size="200" height="200"/> -->


</form>   

       <!--  <a class="image" href="E:\HOT\h2.jpg" target="_blank"><img src="E:\HOT\h2.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" download="myimage"><img src="E:\HOT\h3.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h4.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h5.jpg"  /></a>
          <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h6.jpg"  /></a>
       -->        <%ArrayList user= null,user2=null;
		boolean flag=false;
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

	     
           <div class="blackStripe clearfix" id="secondaryMenu">
        <p>
          <a href="HALAMB.html"><b>Create account</b></a> | <a href="login.html"><b>Log in</b></a>
        </p>
        <ul>
          <li><strong><a href="/c/Amateur-17">Real Amateur VIDEO Videos</a></strong></li>
          <li>||</li>
          <li><a href="/best/day/">Best Of Today</a></li>
          <li>|</li>
          <li><a href="/best/week/">Best Of 7 Days</a></li>
          <li>|</li>
          <li><a href="/best/month/">Best Of 30 Days</a></li>
          <li>|</li>
        </ul>
      </div>
	     
	     
	     
	     
	     
	     
	     
	     

	<%
	//	getServletContext().getRequestDispatcher("/login.html").forward(request, response);
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




%>



           <div class="blackStripe clearfix" id="secondaryMenu">
        <p>
          <a href="HALAMB.html"><b>Create account</b></a> | <a href="login.html"><b><%=u.getEmail() %></b></a>
        </p>
        <ul>
          <li><strong><a href="/c/Amateur-17">Real Amateur VIDEO Videos</a></strong></li>
          <li>||</li>
          <li><a href="/best/day/">Best Of Today</a></li>
          <li>|</li>
          <li><a href="/best/week/">Best Of 7 Days</a></li>
          <li>|</li>
          <li><a href="/best/month/">Best Of 30 Days</a></li>
          <li>|</li>
        </ul>
      </div>




	    


<%
				
				
				
		destroy();
		
		}
		
	}//else-54

   	
		//>>>??>>>>>>>>>>>>>>>>>>>>??>>COUNT SESSION<<??<<<<<<<<<<<<<<<<??<<<<<<<<<<<<

				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				HttpSession session_count=request.getSession(true);
		int count=1;
		String count_s=null;
		String str;
		int set_jump=0;
		str=request.getParameter("k");
		
		if(session_count.isNew())
		{count=1;
			System.out.println("this is newly create session  "+count);			
		}
		else
		{
			count_s=(String ) session_count.getAttribute("count_video");
			String count_s1=(String ) session_count.getAttribute("password");
			String count_s2=(String ) session_count.getAttribute("email");
			
			System.out.println("THIS IS COUNT BEFORE UPDATE GETPARAMETER    "+count_s);	
			System.out.println("THIS IS COUNT BEFORE UPDATE GETPARAMETER    "+count_s1);	
			System.out.println("THIS IS COUNT BEFORE UPDATE GETPARAMETER    "+count_s2);	
			System.out.println("THIS IS COUNT BEFORE UPDATE GETPARAMETER    "+str);	
					if(count_s!=null)
					{
		count=Integer.parseInt(count_s);
		//set_jump=count;
	
					System.out.println("This is Video sesssion SET JUMP  "+count);
					}
					else
					{
						System.out.println("COUNT IS NULL SO ");
						count=1;
						
					}
		}
		
		
		
		
		
       
       
       
       
       
       
       
       
       
       
       try
		{//	
	
		Session session1=factory.getCurrentSession();
		session1.beginTransaction();
			%>
<h2><center>VIDEOS</center>
</h2><%
			Query q=session1.createQuery("from IMAGE_DATA where formate='video/mp4'");
			int count_max = ((Long)session1.createQuery("select count(*) from IMAGE_DATA where formate='video/mp4'").uniqueResult()).intValue();
			System.out.println("This is the NUMBER OF ROWS BY QUERY   "+count_max+"   hello HIBYE  :::: "+count);
			
			
			if(session_count.isNew())
			{	}
			else
			{
			
			count_s=(String ) session_count.getAttribute("count_video");
			System.out.println("IN THE ELSE OF COUNT_S"+count_s);
			}
if(count_s==null || str!=null)	
{				
		if(str!=null)
		{
			if(str!=null)
				 set_jump=Integer.parseInt(str);
			
			if(set_jump==1)
			
				{
				q.setFirstResult(set_jump-1);
				System.out.println("IN THE IF SET_JUMP:::::::::::"+set_jump);
				}
			else
			{
				int v;
				v=4;
				v=((set_jump-1)*4)+1;
				q.setFirstResult(v-1);
				System.out.println("IN THE IF SET_JUMP:::::::::::else"+set_jump);
				
			}
		
			System.out.println("this is<<<<<<<<<   SET_JUMP>>>>>>>>>>>"+set_jump*4);
		}
		else
		{
			System.out.println("IN THE ELSE");
			
			set_jump=1;
			q.setFirstResult(set_jump-1);
		}

}
else
{
	count=Integer.parseInt(count_s);
	set_jump=count;
	if(set_jump==1)
		
	{
	q.setFirstResult(set_jump-1);
	System.out.println("IN THE IF SET_JUMP:::::::::::"+set_jump);
	}
else
{
	int v;
	v=4;
	v=((set_jump-1)*4)+1;
	q.setFirstResult(v-1);
	System.out.println("IN THE IF SET_JUMP:::::::::::else"+set_jump);
	
}

System.out.println("this is<<<<<<<<<   SET_JUMP>>>>>>>>>>>"+set_jump*4);


	
				System.out.println("This is Video sesssion SET JUMP123  "+set_jump);
	}
		q.setMaxResults(4);
			count=count+4;
			if(count>=count_max)
			{
				count=count_max-count;
		//		count++;
			}
			
			
			String count_session=set_jump+"";
			System.out.println("This is COUNT   "+count_session);
			session_count.setAttribute("count_video",count_session);
			System.out.println("THIS IS AFTER SETATTRIB0  ");
			try
			{
			user=(ArrayList)q.list();
			
			}
			catch(Exception e)
			{System.out.println("Hello due to"+e);
			}
				user=(ArrayList) q.list();
System.out.println("This is error");
		System.out.println("hello the size is:"+user.size());
		
		
		if(user!=null && user.size()>0)
		{
			for(int i=0;i<user.size();i++)
			{
				IMAGE_DATA m=(IMAGE_DATA)user.get(i);
				System.out.println("THE m.getImage Name is"+m.getImage_name());
				System.out.println("The LINK TO IMAGE IS:"+m.getLink());
				%>
				
				<A href="Download_side_video.jsp?Image_Id=<%=m.getImage_id() %>"><video src="\<%=m.getLink() %>" width="200" height="200" /></A>

			<%}
			%>
			<br/>
			<%
			}
		 int maxi=count_max/4;
		 if(count_max%4==0)
		 {
		    	maxi=count_max/4;
		 }
		 else
		 {
		   	maxi=maxi+1;
			
			
		}
		System.out.println("this is MAXI >>>>>>>>>>>"+maxi);
		for(int k=1;k<=maxi;k++)
		{
		if(set_jump==k)
		{
			%>

			<a href="HOME.jsp?k=<%=k %>"><input type="button" value=<%=k %> disabled="disabled"></a>
				<%
			
		}
		else
		{
		%>

	<a href="HOME.jsp?k=<%=k %>"><input type="button" value=<%=k %>></a>
		<%
		}}
		
		session1.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			
			System.out.println("Error  due to asf "+e);
		}
     
     %>
     
     
<h2><center>IMAGES</center><br/>
</h2>
     
     <%ArrayList user1= null;
		
       
   	
		//>>>??>>>>>>>>>>>>>>>>>>>>??>>COUNT SESSION<<??<<<<<<<<<<<<<<<<??<<<<<<<<<<<<
				HttpSession session_count1=request.getSession(true);
		int count_img=1;
		String str_img;
		 count_s=null;
		int set_jump_img=0;
		str=request.getParameter("img");
		
		if(session_count1.isNew())
		{count_img=1;
			System.out.println("this is newly create session  "+count);			
		}
		else
		{
			 count_s=(String ) session_count1.getAttribute("count_img");
			String count_s1=(String ) session_count1.getAttribute("password");
			String count_s2=(String ) session_count1.getAttribute("email");
			
			System.out.println("THIS IS COUNT BEFORE UPDATE GETPARAMETER    "+count_s);	
			System.out.println("THIS IS COUNT BEFORE UPDATE GETPARAMETER    "+count_s1);	
			System.out.println("THIS IS COUNT BEFORE UPDATE GETPARAMETER    "+count_s2);	
			System.out.println("THIS IS COUNT BEFORE UPDATE GETPARAMETER    "+str);	
					if(count_s!=null)
					{
		count=Integer.parseInt(count_s);
		System.out.println("THis is the session_set_jump  "+count_s);
					}
					else
					{
						System.out.println("COUNT IS NULL SO ");
						count=1;
						
					}
		}
		
		
		
		
		
       
       
       
       
       
       
       
       
       
       
       try
		{//	
	
			Session session1=factory.getCurrentSession();
		session1.beginTransaction();
			
			Query q=session1.createQuery("from IMAGE_DATA where rate=100 and formate='image/jpeg'");
			int count_max = ((Long)session1.createQuery("select count(*) from IMAGE_DATA where formate='image/jpeg'").uniqueResult()).intValue();
			System.out.println("This is the NUMBER OF ROWS BY QUERY   "+count_max+"   hello HIBYE  :::: ");
		
			if(session_count1.isNew())
			{	}
			else
			{
			
			count_s=(String ) session_count1.getAttribute("count_img");
			System.out.println("IN THE ELSE OF COUNT_S"+count_s);
			}
			
			
			
if(count_s==null || str!=null)	
{		
			
	if(str!=null)
		{
			if(str!=null)
				 set_jump=Integer.parseInt(str);
			
			if(set_jump==1)
			
				{
				q.setFirstResult(set_jump-1);
				System.out.println("IN THE IF SET_JUMP:::::::::::"+set_jump);
				}
			else
			{
				int v;
				v=4;
				v=((set_jump-1)*4)+1;
				q.setFirstResult(v-1);
				System.out.println("IN THE IF SET_JUMP:::::::::::else"+set_jump);
				
			}
		
			System.out.println("this is<<<<<<<<<   SET_JUMP>>>>>>>>>>>"+set_jump*4);
		}
		else
		{
			System.out.println("IN THE ELSE");
		//	q.setFirstResult(count-1);
			set_jump=1;
			q.setFirstResult(set_jump-1);
		}
}
else
{
	count=Integer.parseInt(count_s);
	set_jump=count;
	if(set_jump==1)
		
	{
	q.setFirstResult(set_jump-1);
	System.out.println("IN THE IF SET_JUMP:::::::::::"+set_jump);
	}
else
{
	int v;
	v=4;
	v=((set_jump-1)*4)+1;
	q.setFirstResult(v-1);
	System.out.println("IN THE IF SET_JUMP:::::::::::else"+set_jump);
	
}

System.out.println("this is<<<<<<<<<   SET_JUMP>>>>>>>>>>>"+set_jump*4);


	
				System.out.println("This is Video sesssion SET JUMP123  "+set_jump);
	}
		q.setMaxResults(4);
			
			
		String count_session=set_jump+"";
		System.out.println("This is COUNT   "+count_session);
		session_count1.setAttribute("count_img",count_session);
			//..................
			
			count=count+4;
			if(count>=count_max)
			{
				count=count_max-count;
		//		count++;
			}
			
			
			String count_session1=set_jump+"";
			System.out.println("This is COUNT   "+count_session1);
			session_count.setAttribute("count_video",count_session1);
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
				
				<A href="Download_side_video.jsp?Image_Id=<%=m.getImage_id() %>"><img src="\<%=m.getLink() %>" width="200" height="200" /></A>

			<%}
			%>
			<br/><br/>
			<%
			}
		 int maxi=count_max/4;
		 if(count_max%4==0)
		 {
		    	maxi=count_max/4;
		 }
		 else
		 {
		   	maxi=maxi+1;
			
			
		}
				
		
		System.out.println("this is MAXI >>>>>>>>>>>"+maxi);
		for(int k=1;k<=maxi;k++)
		{
		if(set_jump==k)
		{
			%>

			<a href="HOME.jsp?img=<%=k %>"><input type="button" value=<%=k %> disabled="disabled"></a>
				<%
			
		}
		else
		{
		%>

	<a href="HOME.jsp?img=<%=k %>"><input type="button" value=<%=k %>></a>
		<%
		}}
		
		session1.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			
			System.out.println("Error  due to asfde "+e);
		}
     
     %>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <%-- 
    
    
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
		
		Query q=session1.createQuery("from IMAGE_DATA where rate=100 and formate='image/jpeg'");
		int count_max = ((Long)session1.createQuery("select count(*) from IMAGE_DATA where formate='image/jpeg'").uniqueResult()).intValue();
		
		
		
		
		
		
		
		System.out.println("This is the NUMBER OF ROWS BY QUERY IMAGES::::::::::::   "+count_max);
		q.setFirstResult(count);
		q.setMaxResults(4);
		count=count+4;
		if(count>=count_max)
		{
			count=count_max-count;
			count++;
		}
		
		
		String count_session=count+"";
		System.out.println("This is COUNT   "+count_session);
		session_count.setAttribute("count",count_session);
	
			
			
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
				
				<A href="Download_side.jsp?Image_Id=<%=m.getImage_id() %>"><img src="\<%=m.getLink() %>" width="200" height="200" /></A>
			<%}
		}
		
		
		int maxi=count_max/4;
		for(int k=0;k<=maxi;k++)
		{
		
		%>
	
	<a href="HOME.jsp"><input type="button" value=<%=k+1 %>></a>
		<%
		}
		session1.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			
			System.out.println("Error  due to "+e);
		}
     

			%>
			
			 --%>
		
			
			
			 
     
     
      <%--  <a id="download" href="<%m.getLink(); %>" >Download</a>
       
       <a href="<%m.getLink(); %>"><img border="0" src="HOT\h2.jpg"/></a>
       --%>   <!--   <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h7.jpg"  /></a>\
           <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h8.jpg"  /></a>
           <a class="image" href="http://localhost:8080/HALAMB/Download.html" target="_blank"><img src="E:\HOT\h9.jpg"  /></a></div>
 -->
 </div><div>        <footer>
      <div class="botLinks">
        <a href="http://info.CREATE_ACCOUNT.com/legal/tos/">Terms of service</a> - 
        <a href="Upload">Upload Your Videos</a> - 
        <a href="http://www.ant.com/video-downloader/" target="_blank">Download our videos</a> - 
        <a href="http://info.CREATE_ACCOUNT.com/advertising/">Advertising</a> - 
        <a href="http://info.CREATE_ACCOUNT.com/content/">Content removal</a> - 
        <a href="/rss/rss.xml">RSS Updates</a> - 
        <a href="/rss/del.xml">Deletes RSS</a> - 
        <a href="http://info.CREATE_ACCOUNT.com/">More</a>...
      </div>

      <p class="slogan">CREATE_ACCOUNT.com - the best free multimedia videos on internet, 100% free.</p>
    </footer>
    
  </div> 
</body>
</html>