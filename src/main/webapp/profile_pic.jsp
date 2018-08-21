<%@page import="com.webmedia.model.User_profile_pic"%>
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

<title>My account - hasnain123 - HALAMB.COM</title>
<meta http-equiv="X-Frame-Options" content="deny">

<link rel="shortcut icon"
	href="http://static.HALAMB.com/img/favicon_xvideos.ico">

<link rel="stylesheet" href="Accounts_style.css?v=17">
<link rel="stylesheet" href="CSS_01.css?v=18">
<link rel="stylesheet" href="http://static.HALAMB.com/css/lightbox.css">
<script src="http://static.HALAMB.com/v2/js/libs/modernizr-2.6.2.min.js"></script>
<script src="http://static.HALAMB.com/v2/js/script-head.js?v=4"></script>
<script>
    var profile_name = "hasnain123";    var page_type = "PROFILE_PIC";
  </script>
</head>
<body>
	<%@ page
		import="com.webmedia.model.USER_INFO,com.HALAMB.User_insert_hibernate,com.webmedia.model.IMAGE_DATA, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,
  com.webmedia.services.DBService, java.io.IOException,
 javax.imageio.ImageIO,
 java.io.File"%>

	<% ArrayList user = null;
	HttpSession session11=request.getSession();
	User_insert_hibernate h;
	SessionFactory factory = DBService.getFacotorySession();
	IMAGE_DATA i;
	USER_INFO u;
	int image_id;
	String session1,session2;
	String folder;
	boolean flag1=false;
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
		{		
			 System.out.println("In the Upload Area "+session1+"   "+session2);
		 	 //getServletContext().getRequestDispatcher("/login.html").forward(request, response);
		}
	
		 String queryString="from USER_INFO where email='"+session1+"'";
		 h=new User_insert_hibernate();
		 
		 u=h.UserLogin(queryString);
	%>
	<div id="page">
		<header>
		<div class="whiteStripe clearfix">
			<div id="social">
				<a href="http://www.HALAMB.com/rss/rss.xml" target="_blank"><img
					src="http://static.HALAMB.com/v2/img/xv-rss.png" alt="XML RSS feed" /></a>
				<a href="http://twitter.com/xvideoscom" target="_blank"><img
					src="http://static.HALAMB.com/v2/img/xv-red-twitter.png"
					alt="HALAMB on Twitter" /></a>
			</div>
			<a href="http://www.HALAMB.com/" title="HALAMB Home" id="mainLogo">
				<img src="http://img100.HALAMB.com/videos/thumbs/HALAMB.gif"
				alt="HALAMB Home" id="siteLogo" />
				<h1 class="hidden">HALAMB.COM</h1>
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
				<li><a href="http://www.HALAMB.com/pornstars">Pornstars</a></li>
				<li><a href="http://www.HALAMB.com/channels">Channels</a></li>
				<li><a href="http://www.HALAMB.com/profiles">Profiles</a></li>
				<li><a href="http://www.HALAMB.com/tags/">Tags</a></li>
				<li><a href="http://forum.xnxx.com/">Forum</a></li>
				<li><a href="http://multi.xnxx.com/">multimedia Pics</a></li>
			</ul>
		</div>

		<div class="blackStripe clearfix" id="secondaryMenu">
			<p>
				<%=u.getEmail() %>| <a href="profiles.jsp"><b>My profile</b></a> | <a
					href="Accounts.jsp"><b>My account</b></a> | <a href="Logout"><b>Sign
						out</b></a>
			</p>
		</div>

		</header>

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

							<%String find="from User_profile_pic where user_id="+u.getUser_id()+"";
                                Session session1122=factory.getCurrentSession();
            					session1122.beginTransaction();
            					System.out.println("Testsdfsfssdfsd123");
            					Query q12=session1122.createQuery(find);
            					q12.setMaxResults(1);
            					user= (ArrayList) q12.list();
            					System.out.println("hello the size is:"+user.size());
            					System.out.println("Test12345");
            				
            					if(user!=null && user.size()>0)
            					{
            						for(int i1=0;i1<user.size();i1++)
            						{
            							User_profile_pic m=(User_profile_pic)user.get(i1);
            							System.out.println("THE m.getImage Name is"+m.getData_size());
            							System.out.println("The LINK TO IMAGE IS:"+m.getLink());
            							if(m.getLink().equals("HALAMB\\upload_images\\Default\\unknown.jpg"))
            							{
            								System.out.println("yes");
            								flag1=true;
            							}
            						}
            					}
                                
                                %>

							<li><strong>Identity:</strong> <%if(flag1==true){ %> <a
								class="redText" href="profile_pic.jsp"> unverified</a> <%}else
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
							<li><a href="/account/profilepic" class="sel">My main
									picture</a></li>
							<li><a href="/account/albums">Manage my albums</a></li>
						</ul>
					</div>
				</div>
				<div class="adminBox">
					<h3>My profile</h3>
					<div class="contentbox">
						<ul>
							<li><a href="Manage-comment.jsp">Manage comments</a></li>
							<li><a href="/account/edit">Edit information</a></li>
							<li><a href="/account/verify_account">Verify my profile</a></li>
							<li><a href="/account/email">Change/validate email</a></li>
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
					<h2>My videos - My main picture</h2>

					<div class="contentbox" id="profilePictures">
						<div class="bigPicBox">
							<div class="thumb">
								<p>My main picture:</p>
								<%	 i=new IMAGE_DATA();
		 System.out.println("Your pass word is "+u.getPass());
		 //
		 folder =u.getUser_id()+"."+u.getUser_name()+File.separator+"profile_pic";

		 //***************CREATING DIRECOTORY*****************//
		 String s1=getServletContext().getRealPath("")+File.separator+"upload_images"+File.separator +folder;
		 File file1 = new File(s1);
		 System.out.println("PATH DURING CREATING "+s1);
		 if (!file1.exists()) {

		 //*******************THIS IS THE USER_UPLOAD*********************//
		 System.out.println("you do not have UPLOAD ANY IMAGES");
		 //Loding default images.
		 %>
								<img src='\HALAMB\upload_images\Default\unknown.jpg' width="242"
									height="242" />
								<%
		 
		 }
		 else
		 {
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
					
					%>
								<img src='\<%=m.getLink()%>' width="242" height="242"
									align="left" />
								<%
					%>
								<br>
								<hr>
								<%
					if(m.getFormate().equals("video/mp4"))
							{
						%>

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


							</div>
							<div class="dl">
								<p>Upload a new main picture:</p>
								<form action="Upload_Profile_pic" enctype="multipart/form-data"
									method="POST">
									<input type="file" name="picture"
										onChange="document.getElementById('profile_picture_submit').disabled = false;" />
									<input type="hidden" name="profile_picture" value="ok" /> <input
										type="submit" value="Upload" disabled="disabled"
										id="profile_picture_submit"
										onClick="form.submit(); this.disabled = true;" /> <br> <em>(JPG,
										PNG, GIF. 50MB max)</em>
								</form>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- #main -->

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



</body>
</html>