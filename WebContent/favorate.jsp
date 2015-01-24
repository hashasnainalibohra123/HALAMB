<%@page import="com.HALAMB.Favorate_list"%>
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

<title>My account - hasnain123 - HALAMB.com</title>
<meta http-equiv="X-Frame-Options" content="deny">

<link rel="shortcut icon"
	href="http://static.HALAMB.com/img/favicon_xvideos.ico">

<link rel="stylesheet"
	href="http://static.HALAMB.com/v2/css/xv-styles.css?v=18">
<link rel="stylesheet" href="Accounts_style.css?v=17">
<link rel="stylesheet" href="CSS_01.css?v=18">
<link rel="stylesheet" href="PROFILE_STYle.CSS?v=9">
<script
	src="http://static.HALAMB.com/v2/js/libs/modernizr-2.6.2.min.js"></script>
<script src="http://static.HALAMB.com/v2/js/script-head.js?v=4"></script>
<script>
    var profile_name = "hasnain123";    var page_type = "EMAIL";
  </script>
</head>
<body>
	<div id="page">
		<header>
		<div class="whiteStripe clearfix">
			<div id="social">
				<a href="http://www.HALAMB.com/rss/rss.xml" target="_blank"><img
					src="http://static.HALAMB.com/v2/img/xv-rss.png"
					alt="XML RSS feed" /></a> <a href="http://twitter.com/xvideoscom"
					target="_blank"><img
					src="http://static.HALAMB.com/v2/img/xv-red-twitter.png"
					alt="XVideos on Twitter" /></a>
			</div>
			<a href="http://www.HALAMB.com/" title="XVideos Home" id="mainLogo">
				<img src="http://img100.HALAMB.com/videos/thumbs/xvideos.gif"
				alt="XVideos Home" id="siteLogo" />
				<h1 class="hidden">HALAMB.com</h1>
			</a>
			<form action="http://www.HALAMB.com/" method="get" id="searchForm">
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
				<li><a href="http://www.HALAMB.com/new/">New Videos</a></li>
				<li><a href="http://www.HALAMB.com/best/">Best Videos</a></li>
				<li><a href="http://www.HALAMB.com/multimediastars">multimediastars</a></li>
				<li><a href="http://www.HALAMB.com/channels">Channels</a></li>
				<li><a href="http://www.HALAMB.com/profiles">Profiles</a></li>
				<li><a href="http://www.HALAMB.com/tags/">Tags</a></li>
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
			import="com.HALAMB.USER_INFO,com.HALAMB.User_insert_hibernate,com.HALAMB.IMAGE_DATA, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,
 java.io.File,com.HALAMB.User_profile_pic,
 java.awt.image.BufferedImage;"%>
		<%ArrayList user= null,user2=null,user_f=null;
		boolean flag=false;
      //.....boolean for ID checking........//
      boolean flag1=false;
		
		//.....checking for SESSSION >>>
  	 String session1_f,session2_f;
	 HttpSession session_f=request.getSession(false);
	 System.out.println("TEST "+session_f);
		String exist;
	 //......ANNOTATION CONFIGURATION.............//
	 	AnnotationConfiguration config1=new AnnotationConfiguration();
	
		
		
		
		
		//config.addAnnotatedClass();
			config1.addAnnotatedClass(IMAGE_DATA.class);
			config1.addAnnotatedClass(Favorate_list.class);
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
		 exist=(String )session.getAttribute("Exist");
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
Session session112=factory.getCurrentSession();
session112.beginTransaction();
System.out.println("Testsdfsfssdfsd123");
Query q;
q=session112.createQuery("from Favorate_list where user_id="+u.getUser_id());
user_f=(ArrayList)q.list();

			 	queryString="from User_profile_pic where user_id='"+u.getUser_id()+"'";
			
			 	User_profile_pic p=new User_profile_pic();
			 	try
				{//	
			 		q=session112.createQuery(queryString);	 		
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
				| <a href="profiles.jsp"><b>My profile</b></a> | <a
					href="Accounts.jsp"><b>My account</b></a> | <a href="Logout"><b>Sign
						out</b></a>
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
					<h2>My favorites - Manage favorites</h2>

					<div class="contentbox">
						<h5 class="blackTitle">
							My favorites lists (<%=user_f.size() %>
							lists)
						</h5>
						<form id="deleteFavoritesLists" action="ManageFavrates"
							method="POST"
							onsubmit="return confirm('Are you sure you want to delete the selected lists ?');">
							<ul>
								<%if(user_f!=null && user_f.size()>0)
{
	for(int i1=0;i1<user_f.size();i1++)
	{
		Favorate_list m=(Favorate_list)user_f.get(i1);
		System.out.println("THE m.getImage Name is"+m.getFav_list_name());
		System.out.println("The LINK TO IMAGE IS:"+m.getUser_id());
		
		
	
	
	%>
								<li><input type="checkbox" name="favlist[]" value="6577094"
									id="favlist_6577094" /> <label for="favlist_6577094">
										<strong><span class="name"><%=m.getFav_list_name() %></span></strong>
										(0 video) - <span class="status"> <%if(m.getVisibility()==1) %>public<%if(m.getVisibility()==2) %>Only
											friends <%if(m.getVisibility()==3) %>Registered users <%if(m.getVisibility()==0) %>Nobody
									</span> can see it - <a
										href="http://www.HALAMB.com/favorite/6577094/asd">View
											online</a>
								</label> <input type="button" class="toggleEditFavsListPanel"
									id="dom<%=i1 %>" value="Edit list"
									onclick="setVisibility<%=i1 %>('hasu<%=i1 %>', 'inline');" />
									<script>function  setVisibility<%=i1 %>(id, visibility) {
        			  
     			  if(document.getElementById("dom<%=i1 %>").value=="Edit list"){
     		
     				  document.getElementById(id).style.display = "inline";
     					
     				  document.getElementById("dom<%=i1 %>").value = "close edit panel"; 
     				  
     			  }
     			  else 
     				  {
     				 
     				  
     				  document.getElementById(id).style.display = "none";
     				  
     				  document.getElementById("dom<%=i1 %>").value ="Edit list";
     					
     				  
     				  }
     		  
     		  }
        	   
           </script><a class="button" href="/account/favorites/6577094">Edit
										videos and tags</a> <br> <span class="taglist"><em>Tagged:</em>
										<a href="/account/favorites/6577094/#favTags">Add tags to
											your list</a> </span> <br> <span class="editFavsListPanel"
									id="hasu<%=i1 %>" style="display: none"> <span>Rename</span>
										<input type="text" name="new_list_name_6577094"
										id="new_list_name_6577094_text"
										value="<%=m.getFav_list_name() %>" /> <span>and change
											visibility to</span> <select name="new_list_status_6577094"
										id="new_list_status_6577094_select">
											<option value="ANYONE">Public</option>
											<option value="FRIEND">Only friends</option>
											<option value="REGISTER">Registered users</option>
											<option value="NOBODY" selected="selected">Nobody</option>
									</select> <input type="button" class="editFavsList" value="Update"
										data-listid="6577094" />
								</span></li>

							</ul>
							<%
	}
	

}


 %>
							<div class="formActions">
								<input type="submit" name="deleteFavsList"
									value="Delete selected list(s)*" />
							</div>
							<p class="inlineNote">*All your favorites videos will be
								deleted. This action is irreversible.</p>
						</form>

						<div class="vsep"></div>

						<form id="addFavoritesList" action="ManageFavrates" method="POST">
							<div class="formLine">
								<label for="new_favslist_name_text"> Create a new list
									of favorite videos: </label>
								<div class="content">
									<input type="text" name="name" id="new_favslist_name_text"
										value="" /> visibility: <select name="status"
										id="new_favslist_visibility_select">
										<option value="1" selected="selected">Public</option>
										<option value="2">Only friends</option>
										<option value="3">Registered users</option>
										<option value="0">Nobody</option>
									</select> <input type="submit" name="addFavsList" value="Submit" />
								</div>
							</div>
						</form>
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
			<a href="http://info.HALAMB.com/legal/tos/">Terms of service</a> - <a
				href="http://info.HALAMB.com/">Upload Your Videos</a> - <a
				href="http://www.ant.com/video-downloader/" target="_blank">Download
				our videos</a> - <a href="http://info.HALAMB.com/advertising/">Advertising</a>
			- <a href="http://info.HALAMB.com/content/">Content removal</a> - <a
				href="/rss/rss.xml">RSS Updates</a> - <a href="/rss/del.xml">Deletes
				RSS</a> - <a href="http://info.HALAMB.com/">More</a>...
		</div>

		<p class="slogan">HALAMB.com - the best free multimedia videos on
			internet, 100% free.</p>
		</footer>

	</div>
	<!-- #page  -->


	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="http://static.HALAMB.com/v2/js/libs/jquery-1.7.2.min.js"><\/script>')</script>


	<script src="http://static.HALAMB.com/v2/js/script.js?v=14"></script>
	<script src="http://static.HALAMB.com/v2/js/script-profile.js?v=25"></script>
	<script src="http://static.HALAMB.com/v2/js/script-account.js?v=23"></script>
</body>
</html>