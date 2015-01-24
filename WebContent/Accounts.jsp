<%@page import="com.HALAMB.Privacy"%>
<%@page import="com.HALAMB.USER_EXTRA_INFO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<!--<![endif]-->
<head>
<meta charset="utf-8">
<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->

<title>My account - hasnain123 - HALAMB.COM</title>
<meta http-equiv="X-Frame-Options" content="deny">


<link rel="stylesheet"
	href="http://static.HALAMB.com/v2/css/xv-styles.css?v=18">
<link rel="stylesheet" href="Accounts_style.css?v=17">
<link rel="stylesheet" href="CSS_01.css?v=18">
<link rel="stylesheet" href="PROFILE_STYle.CSS?v=9">
<link rel="stylesheet" href="Accounts_style.css?v=17">
<link rel="stylesheet" href="CSS_01.css?v=18">
<script
	src="http://static.CREATE_ACCOUNT.com/v2/js/libs/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="countries.js"></script>
<script src="http://static.HALAMB.com/v2/js/libs/modernizr-2.6.2.min.js"></script>
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
					src="http://static.HALAMB.com/v2/img/xv-rss.png" alt="XML RSS feed" /></a>
				<a href="http://twitter.com/HALAMBcom" target="_blank"><img
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
				THE BEST <span class="redText">FREE VIDEO</span> SITE
			</h2>
		</div>

		<div class="redStripe clearfix" id="mainMenu">
			<p>3000+ Best VIDEOS / DAY</p>
			<ul>
				<li><a href="http://www.HALAMB.com/new/">New Videos</a></li>
				<li><a href="http://www.HALAMB.com/best/">Best Videos</a></li>
				<li><a href="http://www.HALAMB.com/Beststars">Beststars</a></li>
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
 javax.imageio.ImageIO,com.HALAMB.Favorate_list,
 java.io.File,com.HALAMB.User_profile_pic,com.HALAMB.USER_EXTRA_INFO,com.HALAMB.USER_LANGUAGE"%>


		<%ArrayList user= null,user2=null,user_l=null;
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
			config1.addAnnotatedClass(USER_LANGUAGE.class);

			config1.addAnnotatedClass(USER_EXTRA_INFO.class);

			config1.addAnnotatedClass(Privacy.class);
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
				USER_EXTRA_INFO ux =new USER_EXTRA_INFO();
				USER_LANGUAGE ul=new  USER_LANGUAGE();
				Privacy pri=new Privacy();
				String queryString="from USER_INFO where email='"+session1_f+"'";
				User_insert_hibernate s=new User_insert_hibernate();
				u=s.UserLogin(queryString);
				
				//........getting USER_EXTRA_INFO............//
				
				queryString="from USER_EXTRA_INFO where user_id='"+u.getUser_id()+"'";
				ux=s.Getting_USER_EXTRA_INFO(queryString);
				
				//.........getting Privacy.....................//
				queryString="from Privacy where user_id='"+u.getUser_id()+"'";
				pri=s.Getting_Privacy(queryString);
				
		
				//...............USER_LANGUAGE.................//
					
		
				
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
							<li><a href="favorate.jsp">My favorites</a></li>
							<li><a href="favorate.jsp">Manage favorites lists</a></li>
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
					<h2>My profile - Edit information</h2>

					<div class="contentbox">

						<form action="Accounts" method="post">
							<fieldset id="profile-edit-account-info">
								<legend>My account</legend>
								<div class="formLine">
									<p class="inlineError">
										Your email has not been validated yet. Please click <a
											href="/account/email/validate">Here</a> to validate it.
									</p>
								</div>

								<div class="formLine">
									<label for="firstname_text">Good Name</label>
									<div class="content">
										<input type="text" name="firstname" id="firstname_text"
											value="<%=u.getUser_name() %>" />
									</div>
								</div>
								<div class="formLine">
									<label for="day_select">Birthdate</label>
									<div class="content">
										<select name="day" id="day_select">
											<option value="0"></option>
											<%
			for(int d=0;d<=31;d++)
			{
				if(u.getDob1().getDate()!=d)
				{
					%><option value="<%=d %>"><%=d %></option>
											<% 
				}
				else
				{
					%><option value="<%=d %>" selected="selected"><%=d %></option>
											<%
				}
			} 
			System.out.println("u.getDob1().getDay()"+u.getDob1().getDate());
			%>
										</select> <select name="month" id="month_select">
											<option value="0"></option>
											<option value="1" <%if(u.getDob1().getMonth()+1==1){%>
												selected="selected" <% } %>>January</option>
											<option value="2" <%if(u.getDob1().getMonth()+1==2){%>
												selected="selected" <% } %>>February</option>
											<option value="3" <%if(u.getDob1().getMonth()+1==3){%>
												selected="selected" <% } %>>March</option>
											<option value="4" <%if(u.getDob1().getMonth()+1==4){%>
												selected="selected" <% } %>>April</option>
											<option value="5" <%if(u.getDob1().getMonth()+1==5){%>
												selected="selected" <% } %>>May</option>
											<option value="6" <%if(u.getDob1().getMonth()+1==6){%>
												selected="selected" <% } %>>June</option>
											<option value="7" <%if(u.getDob1().getMonth()+1==7){%>
												selected="selected" <% } %>>July</option>
											<option value="8" <%if(u.getDob1().getMonth()+1==8){%>
												selected="selected" <% } %>>August</option>
											<option value="9" <%if(u.getDob1().getMonth()+1==9){%>
												selected="selected" <% } %>>September</option>
											<option value="10" <%if(u.getDob1().getMonth()+1==10){%>
												selected="selected" <% } %>>October</option>
											<option value="11" <%if(u.getDob1().getMonth()+1==11){%>
												selected="selected" <% } %>>November</option>
											<option value="12" <%if(u.getDob1().getMonth()+1==12){%>
												selected="selected" <% } %>>December</option>
										</select> <select name="year" id="year_select">
											<option value="0"></option>
											<%
			for(int d=1900;d<=2014;d++)
			{
				if(u.getDob1().getYear()+1900!=d)
				{
					System.out.println(u.getDob1().getYear());
					%><option value="<%=d %>"><%=d %></option>
											<% 
				}
				else
				{
					%><option value="<%=d %>" selected="selected"><%=d %></option>
											<%
				}
			} %>
										</select>
									</div>
								</div>
								<div class="formLine">
									<label for="sex_select">I'm</label>
									<div class="content">
										<select name="sex" id="sex_select">


											<option value="Man" <%if(u.getSex().equals("Man")){%>
												selected="selected" <% } %>>Man</option>
											<option value="Woman" <%if(u.getSex().equals("Woman")){%>
												selected="selected" <% } %>>Woman</option>
											<option value="Transvestite"
												<%if(u.getSex().equals("Transvestite")){%>
												selected="selected" <% } %>>Transvestite</option>
											<option value="Gay man" <%if(u.getSex().equals("Gay man")){%>
												selected="selected" <% } %>>Gay man</option>
											<option value="Lesbian woman"
												<%if(u.getSex().equals("Lesbian woman")){%>
												selected="selected" <% } %>>Lesbian woman</option>
											<option value="Couple" <%if(u.getSex().equals("Couple")){%>
												selected="selected" <% } %>>Couple</option>
											<option value="Gay couple"
												<%if(u.getSex().equals("Gay couple")){%> selected="selected"
												<% } %>>Gay couple</option>
											<option value="Lesbian couple"
												<%if(u.getSex().equals("Lesbian couple")){%>
												selected="selected" <% } %>>Lesbian couple</option>
											<option value="Transexual"
												<%if(u.getSex().equals("Transexual")){%> selected="selected"
												<% } %>>Transexual</option>
											<option value="Transexual couple"
												<%if(u.getSex().equals("Transexual couple")){%>
												selected="selected" <% } %>>Transexual couple</option>
											<option value="Site or Company"
												<%if(u.getSex().equals("Site or Company")){%>
												selected="selected" <% } %>>Site or Company</option>
										</select>
									</div>
								</div>
								<div class="formLine">
									<label for="pays_text">Country:</label>
									<div class="content">
										<select name="pays_select" id="pays_select"></select>
									</div>
								</div>
								<div class="formLine region">
									<label for="region_text">Region:</label>
									<div class="content">
										<select name="region" id="region_select"></select>
									</div>
								</div>
								<script>
            populateCountries("pays_select", "region_select");
            
        </script>
								<div class="formLine">
									<label for="city_text">City</label>
									<div class="content">
										<input type="text" name="city" id="city_text"
											value="<%=u.getCity() %>" />
									</div>
								</div>
								<div class="formLine form_field_rememberme">
									<div class="content">
										<input type="checkbox" name="rememberme"
											id="rememberme_checkbox"> <label
											for="rememberme_checkbox">Remember me on this
											computer.</label>
									</div>
								</div>

								<div class="formActions center">
									<input type="submit" value="Update my information" />
								</div>
							</fieldset>

							<fieldset id="profile-edit-privacy-settings">
								<legend>My privacy</legend>

								<div class="formLine">
									<label>Who can send me a friend request:</label>
									<div class="content">
										<select name="friend_request_access"
											id="friend_request_access_select"
											name="friend_request_access_select">
											<option value="1" <%if(pri.getFriend_request_access()==1){%>
												selected="selected" <% } %>>Everybody</option>
											<option value="2" <%if(pri.getFriend_request_access()==2){%>
												selected="selected" <% } %>>Only friends of my
												friends</option>
											<option value="0" <%if(pri.getFriend_request_access()==0){%>
												selected="selected" <% } %>>No one</option>
										</select>
									</div>
								</div>
								<div class="formLine">
									<label>Who can view my friends lists:</label>
									<div class="content">
										<select name="friends_list_access"
											id="friends_list_access_select" name="friends_list_access">
											<option value="1" <%if(pri.getFriends_list_access()==1){%>
												selected="selected" <% } %>>Everybody</option>
											<option value="3" <%if(pri.getFriends_list_access()==3){%>
												selected="selected" <% } %>>Only registered</option>
											<option value="2" <%if(pri.getFriends_list_access()==2){%>
												selected="selected" <% } %>>Only friends</option>
											<option value="0" <%if(pri.getFriends_list_access()==0){%>
												selected="selected" <% } %>>No one</option>
										</select>
									</div>
								</div>
								<div class="formLine">
									<label>Who can view my videos:</label>
									<div class="content">
										<select name="upload_access" id="upload_access_select"
											name="upload_access">
											<option value="1" <%if(pri.getUpload_access()==1){%>
												selected="selected" <% } %>>Everybody</option>
											<option value="2" <%if(pri.getUpload_access()==2){%>
												selected="selected" <% } %>>Only friends</option>
											<option value="0" <%if(pri.getUpload_access()==0){%>
												selected="selected" <% } %>>No one</option>
										</select>
									</div>
								</div>
								<div class="formLine">
									<label>Who can view my contact info:</label>
									<div class="content">
										<select name="contact_access" id="contact_access_select">
											<option value="1" <%if(pri.getContact_access()==1){%>
												selected="selected" <% } %>>Everybody</option>
											<option value="3" <%if(pri.getContact_access()==3){%>
												selected="selected" <% } %>>Only registered</option>
											<option value="2" <%if(pri.getContact_access()==2){%>
												selected="selected" <% } %>>Only friends</option>
											<option value="0" <%if(pri.getContact_access()==0){%>
												selected="selected" <% } %>>No one</option>
										</select>
									</div>
								</div>
								<div class="formLine">
									<label>Who can comment me:</label>
									<div class="content">
										<select name="wall_access" id="wall_access_select">
											<option value="3" <%if(pri.getWall_access()==3){%>
												selected="selected" <% } %>>Only registered</option>
											<option value="2" <%if(pri.getWall_access()==2){%>
												selected="selected" <% } %>>Only friends</option>
											<option value="0" <%if(pri.getWall_access()==0){%>
												selected="selected" <% } %>>No one</option>
										</select>
									</div>
								</div>
								<div class="formLine">
									<label for="blocked_countries"> Blocked countries: <br>
										<span class="inlineSmallNote">Your profile is hidden in
											these countries.<br>10 max.
									</span>
									</label>

									<div class="content">
										<select name="blocked_countries" id="blocked_countries"
											onblur="copy();"></select>
										<script>
            populateCountries("blocked_countries", "region_select");
          
        </script>
										<span class="profile-tag" data-id="AF" id="profile_tag_AF"></span>
									</div>


									<script type="text/javascript">
function copy() 
{
	var e = document.getElementById("profile_tag_AF");
	var _selectedValue= e.options[e.selectedIndex].value;
	document.getElementById("profile_tag_AF").innerHTML+=document.getElementById("blocked_countries").value;
    }
</script>


								</div>


								<div class="formActions center">
									<input value="Update my information" type="submit" />
								</div>
							</fieldset>

							<fieldset id="profile-edit-profile-info">
								<legend>My information</legend>

								<div class="formLine">
									<label for="contact_infos_text">Contact information:</label>
									<div class="content">
										<input name="contact_infos" id="contact_infos_text"
											type="text" value="<%=ux.getContact_info() %>" />
									</div>
								</div>
								<div class="formLine">
									<label for="website_text">Website:</label>
									<div class="content">
										<input name="website" id="website_text" type="text"
											value="<%=ux.getWebsite() %>" maxlength="200" />
									</div>
								</div>
								<div class="formLine">
									<label for="interests_text">Interests:</label>
									<div class="content">
										<input type="text" class="tags_widget_input" name="interests"
											value="<%=ux.getInterests() %>" />
									</div>
								</div>
								<div class="formLine">
									<label for="about_me_text">About me:</label>
									<div class="content">
										<textarea name="about_me" id="about_me_text" rows="5"
											cols="56"><%=ux.getAbout_me() %></textarea>
									</div>
								</div>
								<div class="formLine form_field_languages">
									<label>Languages:</label>
									<div class="content">
										<span> <input name="languages[]"
											id="languages_SQ_checkbox" type="checkbox" value="SQ"
											<%String q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='SQ'";
  	Session session112=factory.getCurrentSession();
	session112.beginTransaction();
	Query q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_SQ_checkbox"> Albanian </label>
										</span> <span> <input name="languages[]"
											id="languages_AR_checkbox" type="checkbox" value="AR"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='AR'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_AR_checkbox"> Arabic </label>
										</span> <span> <input name="languages[]"
											id="languages_ZH_checkbox" type="checkbox" value="ZH"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='ZH'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_ZH_checkbox"> Chinese </label>
										</span> <span> <input name="languages[]"
											id="languages_HR_checkbox" type="checkbox" value="HR"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='HR'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_HR_checkbox"> Croatian </label>
										</span> <span> <input name="languages[]"
											id="languages_CS_checkbox" type="checkbox" value="CS"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='CS'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_CS_checkbox"> Czech </label>
										</span> <span> <input name="languages[]"
											id="languages_NL_checkbox" type="checkbox" value="NL"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='NL'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_NL_checkbox"> Dutch </label>
										</span> <span> <input name="languages[]"
											id="languages_EN_checkbox" type="checkbox" value="EN"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='EN'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_EN_checkbox"> <strong>English</strong>
										</label>
										</span> <span> <input name="languages[]"
											id="languages_FI_checkbox" type="checkbox" value="FI"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='FI'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_FI_checkbox"> Finnish </label>
										</span> <span> <input name="languages[]"
											id="languages_FR_checkbox" type="checkbox" value="FR"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='FR'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_FR_checkbox"> <strong>French</strong>
										</label>
										</span> <span> <input name="languages[]"
											id="languages_DE_checkbox" type="checkbox" value="DE"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='DE'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_DE_checkbox"> <strong>German</strong>
										</label>
										</span> <span> <input name="languages[]"
											id="languages_HU_checkbox" type="checkbox" value="HU"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='HU'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_HU_checkbox"> Hungarian </label>
										</span> <span> <input name="languages[]"
											id="languages_ID_checkbox" type="checkbox" value="ID"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='ID'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_ID_checkbox"> Indonesian </label>
										</span> <span> <input name="languages[]"
											id="languages_IT_checkbox" type="checkbox" value="IT"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='IT'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_IT_checkbox"> Italian </label>
										</span> <span> <input name="languages[]"
											id="languages_JA_checkbox" type="checkbox" value="JA"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='JA'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_JA_checkbox"> Japanese </label>
										</span> <span> <input name="languages[]"
											id="languages_KO_checkbox" type="checkbox" value="KO"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='KO'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_KO_checkbox"> Korean </label>
										</span> <span> <input name="languages[]"
											id="languages_MS_checkbox" type="checkbox" value="MS"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='MS'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_MS_checkbox"> Malay </label>
										</span> <span> <input name="languages[]"
											id="languages_NO_checkbox" type="checkbox" value="NO"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='NO'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_NO_checkbox"> Norwegian </label>
										</span> <span> <input name="languages[]"
											id="languages_ZZ_checkbox" type="checkbox" value="ZZ"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='ZZ'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_ZZ_checkbox"> Other </label>
										</span> <span> <input name="languages[]"
											id="languages_PT_checkbox" type="checkbox" value="PT"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='PT'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_PT_checkbox"> Portuguese </label>
										</span> <span> <input name="languages[]"
											id="languages_RO_checkbox" type="checkbox" value="RO"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='RO'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_RO_checkbox"> Romanian </label>
										</span> <span> <input name="languages[]"
											id="languages_RU_checkbox" type="checkbox" value="RU"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='RU'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_RU_checkbox"> Russian </label>
										</span> <span> <input name="languages[]"
											id="languages_SR_checkbox" type="checkbox" value="SR"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='SR'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_SR_checkbox"> Serbian </label>
										</span> <span> <input name="languages[]"
											id="languages_ZY_checkbox" type="checkbox" value="ZY"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='ZY'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_ZY_checkbox"> Sign Languages </label>
										</span> <span> <input name="languages[]"
											id="languages_ES_checkbox" type="checkbox" value="ES"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='ES'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_ES_checkbox"> <strong>Spanish</strong>
										</label>
										</span> <span> <input name="languages[]"
											id="languages_SV_checkbox" type="checkbox" value="SV"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='SV'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_SV_checkbox"> Swedish </label>
										</span> <span> <input name="languages[]"
											id="languages_TH_checkbox" type="checkbox" value="TH"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='TH'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_TH_checkbox"> Thai </label>
										</span> <span> <input name="languages[]"
											id="languages_TR_checkbox" type="checkbox" value="TR"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='TR'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_TR_checkbox"> Turkish </label>
										</span> <span> <input name="languages[]"
											id="languages_VI_checkbox" type="checkbox" value="VI"
											<%q4="from USER_LANGUAGE where user_id='"+u.getUser_id()+"' and lang='VI'";
  session112.beginTransaction();
	 q1=session112.createQuery(q4);
	q1.setMaxResults(1);
	user_l= (ArrayList) q1.list();
	System.out.println("hello the size is:"+user_l.size());
	if(user_l.size()>0)
	{%>
											checked='checked' <%
	}%> /> <label
											for="languages_VI_checkbox"> Vietnamese </label>
										</span>
									</div>
								</div>
								<div class="formLine">
									<label>Seeking:</label>
									<div class="content">
										<select name="seeking" id="seeking_select">
											<option value=""
												<%if(ux.getSeeking()!=null)if(ux.getSeeking().equals("")){%>
												selected="selected" <% } %>></option>
											<option value="Man"
												<%if(ux.getSeeking()!=null)if(ux.getSeeking().equals("Man")){%>
												selected="selected" <% } %>>Man</option>
											<option value="Woman"
												<%if(ux.getSeeking()!=null)if(ux.getSeeking().equals("Woman")){%>
												selected="selected" <% } %>>Woman</option>
											<option value="Gay man"
												<%if(ux.getSeeking()!=null)if(ux.getSeeking().equals("Gay man")){%>
												selected="selected" <% } %>>Gay man</option>
											<option value="Lesbian woman"
												<%if(ux.getSeeking()!=null)if(ux.getSeeking().equals("Lesbian woman")){%>
												selected="selected" <% } %>>Lesbian woman</option>
											<option value="Couple"
												<%if(ux.getSeeking()!=null)if(ux.getSeeking().equals("Couple")){%>
												selected="selected" <% } %>>Couple</option>
											<option value="Gay couple"
												<%if(ux.getSeeking()!=null)if(ux.getSeeking().equals("Gay couple")){%>
												selected="selected" <% } %>>Gay couple</option>
											<option value="Lesbian couple"
												<%if(ux.getSeeking()!=null)if(ux.getSeeking().equals("Lesbian couple")){%>
												selected="selected" <% } %>>Lesbian couple</option>
											<option value="Transexual"
												<%if(ux.getSeeking()!=null)if(ux.getSeeking().equals("Transexual")){%>
												selected="selected" <% } %>>Transexual</option>
											<option value="Transvestite"
												<%if(ux.getSeeking()!=null)if(ux.getSeeking().equals("Transvestite")){%>
												selected="selected" <% } %>>Transvestite</option>
											<option value="Transexual couple"
												<%if(ux.getSeeking()!=null)if(ux.getSeeking().equals("Transexual couple")){%>
												selected="selected" <% } %>>Transexual couple</option>
										</select>
									</div>
								</div>
								<div class="formLine">
									<label>Relationship:</label>
									<div class="content">
										<select name="relationship" id="relationship_select">
											<option value=""
												<%if(ux.getRelationship()!=null)if(ux.getRelationship().equals("")){%>
												selected="selected" <% } %>></option>
											<option value="Single"
												<%if(ux.getRelationship()!=null)if(ux.getRelationship().equals("Single")){%>
												selected="selected" <% } %>>Single</option>
											<option value="Married"
												<%if(ux.getRelationship()!=null)if(ux.getRelationship().equals("Married")){%>
												selected="selected" <% } %>>Married</option>
										</select>
									</div>
								</div>
								<div class="formLine">
									<label>Kids :</label>
									<div class="content">
										<select name="kids" id="kids_select">
											<option value=""
												<%if(ux.getKids()!=null)if(ux.getKids().equals("") ){%>
												selected="selected" <% } %>></option>
											<option value="No but do not want any"
												<%if(ux.getKids()!=null)if(ux.getKids().equals("No but do not want any")){%>
												selected="selected" <% } %>>No but do not want any</option>
											<option value="No but want some"
												<%if(ux.getKids()!=null)if(ux.getKids().equals("No but want some")){%>
												selected="selected" <% } %>>No but want some</option>
											<option value="Yes and we live together"
												<%if(ux.getKids()!=null)if(ux.getKids().equals("Yes and we live together")){%>
												selected="selected" <% } %>>Yes and we live
												together</option>
											<option value="Yes and we do not live together"
												<%if(ux.getKids()!=null)if(ux.getKids().equals("Yes and we do not live together")){%>
												selected="selected" <% } %>>Yes and we do not live
												together</option>
										</select>
									</div>
								</div>
								<div class="formLine">
									<label for="education_text">Education:</label>
									<div class="content">
										<input name="education" id="education_text" type="text"
											value="<%if(ux.getEducation()!=null) %><%=ux.getEducation() %>" />
									</div>
								</div>
								<div class="formLine">
									<label>Religion:</label>
									<div class="content">
										<select name="religion" id="religion_select">
											<option value=""
												<%if(ux.getReligion()!=null)if(ux.getReligion().equals("")){%>
												selected="selected" <% } %>></option>
											<option value="Agnostic"
												<%if(ux.getReligion()!=null)if(ux.getReligion().equals("Agnostic")){%>
												selected="selected" <% } %>>Agnostic</option>
											<option value="Atheist"
												<%if(ux.getReligion()!=null)if(ux.getReligion().equals("Atheist")){%>
												selected="selected" <% } %>>Atheist</option>
											<option value="Buddhist/Taoist"
												<%if(ux.getReligion()!=null)if(ux.getReligion().equals("Buddhist/Taoist")){%>
												selected="selected" <% } %>>Buddhist/Taoist</option>
											<option value="Catholic"
												<%if(ux.getReligion()!=null)if(ux.getReligion().equals("Catholic")){%>
												selected="selected" <% } %>>Catholic</option>
											<option value="Hindu"
												<%if(ux.getReligion()!=null)if(ux.getReligion().equals("Hindu")){%>
												selected="selected" <% } %>>Hindu</option>
											<option value="Muslim"
												<%if(ux.getReligion()!=null)if(ux.getReligion().equals("Muslim")){%>
												selected="selected" <% } %>>Muslim</option>
											<option value="Jewish"
												<%if(ux.getReligion()!=null)if(ux.getReligion().equals("Jewish")){%>
												selected="selected" <% } %>>Jewish</option>
											<option value="Protestant"
												<%if(ux.getReligion()!=null)if(ux.getReligion().equals("Protestant")){%>
												selected="selected" <% } %>>Protestant</option>
											<option value="Christian"
												<%if(ux.getReligion()!=null)if(ux.getReligion().equals("Christian")){%>
												selected="selected" <% } %>>Christian</option>
											<option value="Other"
												<%if(ux.getReligion()!=null)if(ux.getReligion().equals("Other")){%>
												selected="selected" <% } %>>Other</option>
										</select>
									</div>
								</div>



								<div class="formLine">
									<label>Ethnicity:</label>
									<div class="content">
										<select name="ethnicity" id="ethnicity_select">
											<option value=""
												<%if(ux.getEthnicity()!=null)if(ux.getEthnicity().equals("")){%>
												selected="selected" <% } %>></option>
											<option value="Asian"
												<%if(ux.getEthnicity()!=null)if(ux.getEthnicity().equals("Asian")){%>
												selected="selected" <% } %>>Asian</option>
											<option value="Black"
												<%if(ux.getEthnicity()!=null)if(ux.getEthnicity().equals("Black")){%>
												selected="selected" <% } %>>Black</option>
											<option value="Indian"
												<%if(ux.getEthnicity()!=null)if(ux.getEthnicity().equals("Indian")){%>
												selected="selected" <% } %>>Indian</option>
											<option value="Latino"
												<%if(ux.getEthnicity()!=null)if(ux.getEthnicity().equals("Latino")){%>
												selected="selected" <% } %>>Latino</option>
											<option value="Middle Eastern"
												<%if(ux.getEthnicity()!=null)if(ux.getEthnicity().equals("Middle Eastern")){%>
												selected="selected" <% } %>>Middle Eastern</option>
											<option value="Mixed"
												<%if(ux.getEthnicity()!=null)if(ux.getEthnicity().equals("Mixed")){%>
												selected="selected" <% } %>>Mixed</option>
											<option value="White"
												<%if(ux.getEthnicity()!=null)if(ux.getEthnicity().equals("White")){%>
												selected="selected" <% } %>>White</option>
										</select>
									</div>
								</div>

								<div class="formLine form_field_body_unit">
									<select name="body_unit" id="body_unit_select">
										<option value="EU"
											<%if(ux.getBody_unit()!=null)if(ux.getBody_unit().equals("EU")){%>
											selected="selected" <% } %>>cm and kg</option>
										<option value="US"
											<%if(ux.getBody_unit()!=null)if(ux.getBody_unit().equals("US")){%>
											selected="selected" <% } %>>in and lbs</option>
									</select>
								</div>
								<div class="formLine">
									<label for="height_text">Height:</label>
									<div class="content">
										<input id="height_text" type="text" name="height"
											value="<%=ux.getHeight_text() %>" /> <span id="heightUnit"></span>
									</div>
								</div>
								<div class="formLine">
									<label for="weight_text">Weight:</label>
									<div class="content">
										<input id="weight_text" type="text" name="weight"
											value="<%=ux.getWeight_text() %>" /> <span id="weightUnit"></span>
									</div>
								</div>


								<div class="formActions center">
									<input value="Update my information" type="submit" />
								</div>
							</fieldset>
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

		<p class="slogan">HALAMB.com - the best free Best videos on
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