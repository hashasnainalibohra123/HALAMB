
<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en"
	style="background-color: rgb(120, 156, 147);">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
<%@ page
	import="com.HALAMB.USER_INFO,
 com.HALAMB.User_insert_hibernate,
 com.HALAMB.IMAGE_DATA,
 com.HALAMB.User_profile_pic,
 java.util.ArrayList, 
 org.hibernate.Query,
 org.hibernate.Session,
 org.hibernate.SessionFactory,
 org.hibernate.cfg.AnnotationConfiguration, 
 java.io.IOException,
 javax.imageio.ImageIO,
 java.io.File,com.HALAMB.Comment_Table,
 java.awt.image.BufferedImage;"%>


<title>
	<%ArrayList user = null;
		boolean flag=false;
		HttpSession session1 ;
		HttpSession session_f=request.getSession(false);
		 String session1_f="",session2_f;
		String Image_Id = request.getParameter("Image_Id");
		
		//..........Bulding SESSION FACTORY............
		//.....getting the annotation.........
		AnnotationConfiguration config1=new AnnotationConfiguration();

		config1.addAnnotatedClass(IMAGE_DATA.class);
		config1.addAnnotatedClass(IMAGE_DATA.class);
		config1.addAnnotatedClass(Comment_Table.class);
		config1.configure("hibernate.cfg.xml");
	
		SessionFactory factory=config1.buildSessionFactory();
	
		//...variable for storing formate.........//
		String Formate=null;
		try
	{
		
		Session session11=factory.getCurrentSession();
		session11.beginTransaction();
		String q12=" from IMAGE_DATA where Image_Id="+Image_Id;
	
		Query q=session11.createQuery(q12);
		q.setMaxResults(4);
		
		user=(ArrayList) q.list();
	
	
	if(user!=null && user.size()>0)
	{
		for(int i=0;i<user.size();i++)
		{
			IMAGE_DATA m=(IMAGE_DATA)user.get(i);
			System.out.println("THE m.getImage Name is"+m.getImage_name());
			System.out.println("The LINK TO IMAGE IS:"+m.getLink());
			Formate=m.getFormate();
			%> <%-- 			<A href="Download?Image_Id=<%=m.getImage_id() %>"><img src="\<%=m.getLink() %>" width="200" height="200" /></A>
 --%> <%=m.getImage_name() %>




</title>
<meta name="keywords"
	content="HALAMB,HALAMB.com, x videos,x video,MultiMedia,video,videos,,cumshot,teen,licking,fucking,milf,blowjob,handjob,mature,threesome,momsbangteens" />
<meta name="description"
	content="HALAMB Casi James, Brandi Love, and Jake Ariston - Birds and the Bees free">
<meta name="verify-v1"
	content="3Awl+ctS3GOag+hKJiSg9SQQ2MR/GwV8H/PAgMhGhcM=" />

<meta http-equiv="pics-Label"
	content='(pics-1.1 "http://www.icra.org/pics/vocabularyv03/" l gen true for "http://HALAMB.com" r (n 3 s 3 v 0 l 3 oa 0 ob 0 oc 0 od 0 oe 0 of 0 og 0 oh 0 c 3) gen true for "http://www.HALAMB.com" r (n 3 s 3 v 0 l 3 oa 0 ob 0 oc 0 od 0 oe 0 of 0 og 0 oh 0 c 3))' />
<link rel="meta" href="http://www.HALAMB.com/labels.rdf"
	type="application/rdf xml" title="ICRA labels" />

<link rel="search" type="application/opensearchdescription+xml"
	title="HALAMB" href="/rss/rss.xml">
<link rel="shortcut icon"
	href="http://static.HALAMB.com/img/favicon_HALAMB.ico">

<link rel="stylesheet" href="Accounts_style.css?v=17">
<link rel="stylesheet" href="CSS_01.css?v=18">
<link rel="stylesheet" href="PROFILE_STYle.CSS?v=9">
<link rel="stylesheet" href="video_css.css?v=7">


<script>
		  function setVisibility(id, visibility) {
		  
			  if(document.getElementById("dom").value=="Comments <-"){
		
				  document.getElementById(id).style.display = "none";
					
				  document.getElementById("dom").value = "Comments ->"; 
				  
			  }
			  else 
				  {
				 
				  
				  document.getElementById(id).style.display = "inline";
				  
				  document.getElementById("dom").value ="Comments <-";
					
				  
				  }
		  
		  }
		

</script>
<script type="text/javascript">
 
 function fReload()
 {
	
	 //document.getElementById('w123').value='dsdsdsd';
var str=document.getElementById("message_text").value;
	 var xmlhttp;
	 if (str.length==0)
	   { 
	   document.getElementById("message_text").innerHTML="<b><hr>the result will displayed here</b></h.";
	   return;
	   }
	 if (window.XMLHttpRequest)
	   {// code for IE7+, Firefox, Chrome, Opera, Safari
	   xmlhttp=new XMLHttpRequest();
	   }
	 else
	   {// code for IE6, IE5
	   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	   }
	 xmlhttp.onreadystatechange=function()
	   {
	   if (xmlhttp.readyState==4 && xmlhttp.status==200)
	     {
	     document.getElementById("addHere").innerHTML=xmlhttp.responseText+document.getElementById("addHere").innerHTML;
	     }
	   }
	 xmlhttp.open("GET","gettingHint.jsp?q="+str,true);
	 xmlhttp.send();
	alert("hellllllllo");
 
 }

 
 
 </script>

      
      <link rel="stylesheet" href="ui.css">
  <link rel="stylesheet" href="ui.progress-bar.css">
  <link media="only screen and (max-device-width: 480px)" href="ios.css" type="text/css" rel="stylesheet" /> 
   <link rel="stylesheet" href="ui.css">
   <script src="jquery.js" type="text/javascript" charset="utf-8"></script>
  <script src="progress.js" type="text/javascript" charset="utf-8"></script>
  
 


<script type="text/javascript"
	src="http://apitowertiltcom-a.akamaihd.net/gsrs?is=EF23DDIN&bp=PB&g=9dc29886-4aca-4c19-8afe-56942f00daac"></script>
</head>
<body>
 
	<div id="page">
		<header>
		
			<div class="whiteStripe clearfix">
				<a href="/" title="HALAMB Home" id="mainLogo"> <img
					src="http://img100.HALAMB.com/videos/thumbs/HALAMB.gif"
					alt="HALAMB Home" id="siteLogo" />
					<h1 class="hidden">HALAMB.COM</h1>
				</a>


				<form action="/" method="get" id="searchForm">
					<input type="text" name="k" value="" id="q" maxlength="2048"
						size="30" /> <input type="submit" value="Search"
						id="searchSubmit" />
				</form>
				<h2 class="secondary">
					<span class="redText">BIGGER</span> and <span class="redText">BETTER</span>
					than the others... <span class="redText">HALAMB.COM</strong>
				</h2>
			</div>

			<div class="redStripe clearfix" id="mainMenu">
				<ul>
					<li><a href="/">New Videos</a></li>
					<li><a href="/best/">Best Videos</a></li>
					<li><a href="/MultiMediastars">MultiMediastars</a></li>
					<li><a href="/channels">Channels</a></li>
					<li><a href="/profiles">Profiles</a></li>
					<li><a href="/tags/">Tags</a></li>
					<li><a href="http://forum.xnxx.com/">Forum</a></li>
					<li><a href="http://multi.xnxx.com/">MultiMedia Pics</a></li>
					<li><a rel="nofollow"
						href="http://www.ant.com/video-downloader/" target="_blank"><strong>Video
								Downloader</strong></a></li>
				</ul>
			</div>
			<%  
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
					<a href="HALAMB.html"><b>Create account</b></a> | <a
						href="login.html"><b>Log in</b></a>
				</p>
				<ul>
					<li><strong><a href="/c/Amateur-17">Real Amateur
								VIDEO Videos</a></strong></li>
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
					<a href="Logout"><b>Logout</b></a> | <a href="profiles.jsp"><b><%=u.getEmail() %></b></a>
				</p>
				<ul>
					<li><strong><a href="/c/Amateur-17">Real Amateur
								VIDEO Videos</a></strong></li>
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

   	
		%>




		</header>

		<div id="main">
			<!-- State : dispo - Wed, 09 Jul 14 10:31:52 +0200 Exist (set in array). Loaded ! Video exist and loaded. Video exist OK.  -->



			<h2><%=m.getImage_name() %>
				<span class="duration">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= m.getData_size() %>kb
				</span>
			</h2>





			<div id="content">

				<div id="video-ad">
					<div id="wpn_ad_square"></div>
				</div>

				<!-- PLAYER FLASH -->
				<!-- NEW VERSION -->
				<div id="player">
					<%String s11=m.getLink();
			
			
	        int counter = 0;
			System.out.println(s11);
			s11=s11.substring(7);
			System.out.println(s11);
			String IMG=getServletContext().getRealPath("") + File.separator +s11;
			
			if(Formate.equals("video/mp4"))
			{
		
				%>
					<A href="Download?Image_Id=<%=m.getImage_id() %>"> <video
							controls autoplay>
							<source src="\<%=m.getLink() %>" type="video/ogg">
							<source src="movie.mp4" type="video/mp4">
							<object data="movie.mp4">
								<embed src="movie.swf">
							
									</object>
						
						</video> <%-- <video src="\<%=m.getLink() %>"  /> --%></A>
					<%}

			if(m.getFormate().equals("image/jpeg"))
			{
						%>
					<A href="Download?Image_Id=<%=m.getImage_id() %>"><img
						src="\<%=m.getLink() %>" width="450" height="500" /></A>
					<%}
			}
	
	}
	
	session11.getTransaction().commit();

	}
	catch(Exception e)
	{
		
		System.out.println("Error  due to "+e);
	}

%>
				</div>


				<!-- END PLAYER FLASH -->

			</div>
			<!-- #content -->

			<div id="videoTabs" class="tabsContainer">
				<ul class="tabButtons">
					<li id="tabVote"><span class="nb_views"> 258,925<br>
							<span class="text">views</span>
					</span> <span class="voteActions"> <!--Did you like this video ?-->
							<a id="voteYes" class="button btnVote withThumb">&nbsp;&nbsp;&nbsp;</a><a
							id="voteNo" class="button btnVote withThumb">&nbsp;&nbsp;&nbsp;</a>
					</span>

						<div class="ratingBarBlock">
							<div class="ratingBar">
								<div style="width: 100.00%;" id="ratingBarGood"></div>
							</div>
							<div class="ratingCounts">
								<span id="ratingTotal">1485</span> Total
							</div>
						</div> <span id="rating">100.00%</span> <script type="text/javascript"
							language="javascript">
              vote_urls = {yes: 'http://www.HALAMB.com/videovote/7135087/YES/1110000101110100101010110110100024956/', no: 'http://www.HALAMB.com/videovote/7135087/NO/1100000001100001101010000101001061889/'};
            </script></li>



					<li data-ref="tabDownload" class="headtab closable"
						onclick="varify(<%=Image_Id %>);"><img
						src="http://static.HALAMB.com/v2/img/download.png" height="14"
						width="14" /> Comments</li>
					<li data-ref="tabDownload" class="headtab closable"><img
						src="http://static.HALAMB.com/v2/img/download.png" height="14"
						width="14" /> Download</li>
					<li data-ref="tabFavs" class="headtab closable"
						data-onshow="HALAMB.favorites.onShowTab"
						onclick="verify21(<%=Image_Id %>);">Add to my favorites</li>
					<script language="javascript">
        reqObj=null;
        function varify( id){
            document.getElementById("res").innerHTML="Checking...";
            if(window.XMLHttpRequest){
                reqObj=new XMLHttpRequest();
            }else {
                reqObj=new ActiveXObject("Microsoft.XMLHTTP");
            }
            
            reqObj.onreadystatechange=process;
            
            document.getElementById("tabComments").style.display = "none";
            reqObj.open("POST","./Comments_loding.jsp?img_id="+id,true);
            reqObj.send(null);
        }
        function varify456(id){

        	reqObj=null;
        var str=document.getElementsByName("favlist_list");
/*         if(document.getElementById('gender_Male').checked) {
        	  //Male radio button is checked
        	}else if(document.getElementById('gender_Female').checked) {
        	  //Female radio button is checked
        	}
 */        
        
 
        
        var radios = document.getElementsByName('favlist_list');
       
        var value;
        for (var i = 0; i < radios.length; i++) {
        	
            if (radios[i].type === 'radio' && radios[i].checked) {
                // get value, set checked flag or do whatever you need to
                value = radios[i].value; 
        
               
                if(window.XMLHttpRequest){
                    reqObj=new XMLHttpRequest();
                }else {
                    reqObj=new ActiveXObject("Microsoft.XMLHTTP");
                }
                
                reqObj.onreadystatechange=process_saving;
                
                //document.getElementById("tabComments").style.display = "none";
                reqObj.open("POST","./favorate_list_saving.jsp?str="+value,true);
                reqObj.send(null);
            }
        }

           //document.getElementById("addHere").innerHTML="Checking.PPPPPPPPPPPPPPPPPP.";
      
           
              
        }
        function process(){
            if(reqObj.readyState==4){
                document.getElementById("res").innerHTML=reqObj.responseText;
            }
        } 
        function process_saving(){
            if(reqObj.readyState==4){
            

            	document.getElementById("addHere").innerHTML=xmlhttp.responseText+document.getElementById("addHere").innerHTML;
        	    //document.getElementById("res").innerHTML=reqObj.responseText;
            }
        }
        </script>
					<script language="javascript">
        reqObj=null;
        function verify21( id){
        
        	document.getElementById("res").innerHTML="<div id='progress_bar' class='ui-progress-bar ui-container'><div class='ui-progress' style='width: %;'><span class='ui-label' style='display:none;'>Processing <b class='value'>79%</b></span></div></div>";
            if(window.XMLHttpRequest){
                reqObj=new XMLHttpRequest();
            }else {
                reqObj=new ActiveXObject("Microsoft.XMLHTTP");
            }
            
            reqObj.onreadystatechange=process;
            
            document.getElementById("tabComments").style.display = "none";
            reqObj.open("POST","./favorate_list_loding.jsp?img_id="+id,true);
            reqObj.send(null);
            
        }
        </script>

					<li data-ref="tabShare" class="headtab closable">Share</li>
					<li data-ref="tabEmbed" class="headtab closable" onclick="">Embed</li>
				</ul>
				<script>hasu()
				{alert("hello");
				}</script>
				
				<span class=tabs id="res"></span>
				<div class="tabs">

					<div id="tabComments" class="tab">
						<div class="tabHeaderForm notLoggedIn">

							<%session1=request.getSession(true);
				
			String s1=(String)session1.getAttribute("email");
			String s2=(String)session1.getAttribute("password");
			String down="download";
			session.setAttribute("from",down);
			session.setAttribute("Image_Id",Image_Id);
				if(s1==null && s2==null || session1.isNew())
							
				{	%>
							<h3 class="blackTitle">
								Comments <span class="nbVideoComments"></span>:
							</h3>

							<div class="leftCol">
								<p>
									<strong>You must be logged in to comment a video.</strong>
								</p>
								<form method="POST" id="signinForm" action="LOGIN_ACCOUNT">
									<table>
										<tr>
											<th>Your login (email):</th>
											<td><input type="text" name="login"
												id="comment__login_text" /></td>
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
								<p>Not yet a HALAMB member? Here is what you can do with a
									FREE account:</p>
								<ul>
									<li>- Upload videos.</li>
									<li>- Commenting.</li>
									<li>- Add videos to your favorites.</li>
									<li>- Create your profile page and make some new friends.</li>
								</ul>
								<div class="signup">
									<a class="button"
										href="http://upload.HALAMB.com/account/create" target="_blank">Sign
										Up Now For Free</a>
								</div>
							</div>

							<%} else
				{%>Comment The video<br />

							<div class="center">

								<form method="POST" id="signinForm" action="Comment">
									<table>
										<tr>

											<td><textarea rows="5" name="text" id="message_text"
													onChange="updateMessageBox()" onKeyUp="updateMessageBox()"></textarea></td>
										</tr>
										<tr>
											<td><input type="submit" value="Comment" name="log" />
											</td>
										</tr>
									</table>
								</form>
							</div>


							<%} %>

						</div>

					</div>



					<div id="tabFavs" class="tab">
						<div class="tabHeaderForm notLoggedIn">



							<%session1=request.getSession(true);
				
			String s11=(String)session1.getAttribute("email");
			String s21=(String)session1.getAttribute("password");
			String down1="download";
			session.setAttribute("from",down1);
			session.setAttribute("Image_Id",Image_Id);
				if(s11==null && s21==null || session1.isNew())
				{
				
				%>
							<h3 class="blackTitle">
								Add to my Favorites <span class="nbVideoComments"></span>:
							</h3>
							<div class="leftCol">
								<p>
									<strong><p>
											<strong>You must be logged in to add a favorite.</strong>
										</p></strong>
								</p>
								<form method="POST" id="signinForm" action="LOGIN_ACCOUNT">
									<table>
										<tr>
											<th>Your login (email):</th>
											<td><input type="text" name="login"
												id="comment__login_text" /></td>
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
									<div id="progressbar"></div>
								</form>
							</div>
							<div class="rightCol">
								<p>Not yet a HALAMB member? Here is what you can do with a
									FREE account:</p>
								<ul>
									<li>- Upload videos.</li>
									<li>- Commenting.</li>
									<li>- Add videos to your favorites.</li>
									<li>- Create your profile page and make some new friends.</li>
								</ul>
								<div class="signup">
									<a class="button"
										href="http://upload.HALAMB.com/account/create" target="_blank">Sign
										Up Now For Free</a>
								</div>
							</div>

							<%} else
				{%>Add Favorate The video<br />

							<div class="center">

								<form method="POST" id="signinForm" action="favorate">
									<table>
										<tr>


										</tr>
										<tr>
											<td><input type="button" value="Add Favarate" name="log" />
											</td>
										</tr>
									</table>
								</form>
							</div>


							<%} %>














							<!-- 			<div class="leftCol">
					<p><strong>You must be logged in to add a favorite.</strong></p>
					<form action="http://upload.HALAMB.com/account/?redirect=%2Fvideo7135087%2Fcasi_james_brandi_love_and_jake_ariston_-_birds_and_the_bees%23_tabFavs" method="POST">
					<table>
						<tr>
						<th>Your login (email):</th>
						<td><input type="text" name="login" id="fav__login_text" /></td>
						</tr>
						<tr>
						<th>Your password:</th>
						<td><input type="password" name="password" id="fav__password_text" /></td>
						</tr>
					</table>
					<input type="submit" value="Login" name="log" />
					<p class="forgot_password"><a href="http://upload.HALAMB.com/account/lostpassword" target="_blank">Forgot username or password ?</a></p>
					</form>
				</div> -->

						</div>
					</div>
					<!--     <script language="javascript" type="text/javascript">
            favs_signin_url = 'http://upload.HALAMB.com/account/?redirect=%2Fvideo7135087%2Fcasi_james_brandi_love_and_jake_ariston_-_birds_and_the_bees%23_tabFavs';
            favs_manage_url = 'http://upload.HALAMB.com/account/managefavorites';
            dl_signin_url = 'http://upload.HALAMB.com/account/?redirect=%2Fvideo7135087%2Fcasi_james_brandi_love_and_jake_ariston_-_birds_and_the_bees%23_tabDownload';
            dl_signup_url = 'http://upload.HALAMB.com/account/create/?redirect=%2Fvideo7135087%2Fcasi_james_brandi_love_and_jake_ariston_-_birds_and_the_bees%23_tabDownload';
          </script>
       -->
					<div id="tabShare" class="tab">
						<h3 class="blackTitle">Share this video:</h3>

						<div id="shareButtons"
							class="addthis_toolbox addthis_default_style addthis_32x32_style">
							<a class="addthis_button_preferred_1"></a> <a
								class="addthis_button_preferred_2"></a> <a
								class="addthis_button_preferred_3"></a> <a
								class="addthis_button_preferred_4"></a> <a
								class="addthis_button_preferred_5"></a> <a
								class="addthis_button_preferred_6"></a> <a
								class="addthis_button_preferred_7"></a> <a
								class="addthis_button_preferred_8"></a> <a
								class="addthis_button_preferred_9"></a> <a
								class="addthis_button_preferred_10"></a> <a
								class="addthis_button_preferred_11"></a> <a
								class="addthis_button_compact"></a> <a
								class="addthis_counter addthis_bubble_style"></a>
						</div>
					</div>

					<div id="tabEmbed" class="tab">
						<h3 class="blackTitle">Embed this video to your site with
							this code:</h3>

						<input type="text" name="media_embed_code"
							id="mediaEmbedCodeInput" size="110"
							onclick="this.focus();this.select();"
							value="&lt;iframe src=&quot;http://flashservice.HALAMB.com/embedframe/7135087&quot; frameborder=0 width=510 height=400 scrolling=no&gt;&lt;/iframe&gt;">
					</div>
				</div>
			</div>
			<!-- #videoTabs -->

			<script>videoPageWriteRelated([[{id:7992002,u:"/video7992002/mom_daugther_an_daugthers_boyfriend",i:"http://img100-002.HALAMB.com/videos/thumbs/47/7b/cc/477bcc1dba0098cfb22e43efe31ca564/477bcc1dba0098cfb22e43efe31ca564.3.jpg",t:"Mom, daugther an daugthers boyfriend",d:"33 min",r:"100%"},{id:7793037,u:"/video7793037/horny_milf_fucks_young_stud",i:"http://img100-037.HALAMB.com/videos/thumbs/97/90/67/979067abccb8e5dd84364ec8eb3ba699/979067abccb8e5dd84364ec8eb3ba699.3.jpg",t:"Horny Milf fucks young stud",d:"32 min",r:"100%"},{id:6274719,u:"/video6274719/dad_fucking_mom_and_son_watching_prity_",i:"http://img100-719.HALAMB.com/videos/thumbs/5c/00/a9/5c00a9a445e75c046eddaae885ff7d79/5c00a9a445e75c046eddaae885ff7d79.2.jpg",t:"Dad fucking Mom and Son Watching (Prity)",d:"3 min",r:"100%"},{id:4010784,u:"/video4010784/julia_ann_and_marie_mccray_milf_and_teen_threesome",i:"http://img100-784.HALAMB.com/videos/thumbs/8d/97/e0/8d97e01349909f3560556092e9c868f8/8d97e01349909f3560556092e9c868f8.5.jpg",t:"Julia Ann and Marie McCray MILF and Teen  ...",d:"10 min",r:"99%"},{id:2651587,u:"/video2651587/mature_shows_young_couple_how_to_enjoy",i:"http://img100-587.HALAMB.com/videos/thumbs/12/40/b6/1240b65e4ce6076a752e5097d7289c8f/1240b65e4ce6076a752e5097d7289c8f.2.jpg",t:"Mature shows young couple how to enjoy",d:"5 min",r:"88%"},{id:5243188,u:"/video5243188/son_fuck_mom_while_she_sleeping",i:"http://img100-188.HALAMB.com/videos/thumbs/c3/c2/a0/c3c2a007279b65dc9146773bd436a12c/c3c2a007279b65dc9146773bd436a12c.15.jpg",t:"Son fuck mom while she sleeping",d:"9 min",r:"99%"},{id:5847093,u:"/video5847093/message_for_dad",i:"http://img100-093.HALAMB.com/videos/thumbs/c5/73/fc/c573fc367ba258d4ad77bcfa5d098cb3/c573fc367ba258d4ad77bcfa5d098cb3.21.jpg",t:"Message For Dad",d:"9 min",r:"99%"},{id:7785623,u:"/video7785623/lonely_hot_aunt_calls_her_nephew_and_they_have_phone_sex",i:"http://img100-623.HALAMB.com/videos/thumbs/39/f1/2d/39f12d083f8bc8b5593e8090a5732d1e/39f12d083f8bc8b5593e8090a5732d1e.4.jpg",t:"Lonely Hot Aunt Calls Her Nephew and They ...",d:"27 min",r:"99%"},{id:6317694,u:"/video6317694/casi_james_and_brandi_love_share_boyfriend_and_get_fucked",i:"http://img100-694.HALAMB.com/videos/thumbs/37/a9/43/37a943caf828ae2dd01d8c2763af5ce8/37a943caf828ae2dd01d8c2763af5ce8.28.jpg",t:"Casi James and Brandi Love share boyfrien ...",d:"5 min",r:"84%"},{id:7092716,u:"/video7092716/daughter_catches_mom",i:"http://img100-716.HALAMB.com/videos/thumbs/c9/8b/34/c98b34dd71c2c0c7a7665b199436ba9e/c98b34dd71c2c0c7a7665b199436ba9e.6.jpg",t:"Daughter Catches Mom",d:"11 min",r:"100%"}],[{id:7232814,u:"/video7232814/mommy_shows_how_they_can_do_it",i:"http://img100-814.HALAMB.com/videos/thumbs/c9/a3/c7/c9a3c7c51d786171e264ca6a61a79d8a/c9a3c7c51d786171e264ca6a61a79d8a.15.jpg",t:"Mommy shows how they can do it",d:"1h 27 min",r:"100%"},{id:2646701,u:"/video2646701/mom_teaches_young_couple_how_to_fuck",i:"http://img100-701.HALAMB.com/videos/thumbs/b0/e2/39/b0e23986cacee64f48a42a828ec5f2ac/b0e23986cacee64f48a42a828ec5f2ac.3.jpg",t:"Mom teaches young couple how to fuck",d:"5 min",r:"100%"},{id:3977538,u:"/video3977538/brandi_love_my_friend_s_hot_mom_brandi_love_giovann_from_http_oqps.net",i:"http://img100-538.HALAMB.com/videos/thumbs/fc/82/c5/fc82c5553a6b0dda672ad351d85b396c/fc82c5553a6b0dda672ad351d85b396c.7.jpg",t:"Brandi Love,My Friend&#039;s Hot Mom,Brandi Lo ...",d:"4 min",r:"100%"},{id:760700,u:"/video760700/how_i_fucked_your_mother",i:"http://img100-700.HALAMB.com/videos/thumbs/da/eb/81/daeb81f789ecb4f1dd4e7cebe8e35731/daeb81f789ecb4f1dd4e7cebe8e35731.1.jpg",t:"How I fucked your mother",d:"21 min",r:"99%"},{id:5248646,u:"/video5248646/step_mom_and_teen_threeway_hot_sex_with_lucky_boyfriend",i:"http://img100-646.HALAMB.com/videos/thumbs/26/24/03/2624034d1c875179892e20c3d1714487/2624034d1c875179892e20c3d1714487.28.jpg",t:"Step mom and teen threeway hot sex with l ...",d:"10 min",r:"98%"},{id:8009893,u:"/video8009893/mature_stepmom_catches_teen_couple_fucking_in_her_house",i:"http://img100-893.HALAMB.com/videos/thumbs/9f/8c/a7/9f8ca7bbcadacd848f2097d1c770f0b6/9f8ca7bbcadacd848f2097d1c770f0b6.16.jpg",t:"Mature stepmom catches teen couple fuckin ...",d:"6 min",r:"96%"},{id:5522214,u:"/video5522214/india_summer_veronica_radkes",i:"http://img100-214.HALAMB.com/videos/thumbs/ff/47/be/ff47be79f40c410ddfd031c93a39f41b/ff47be79f40c410ddfd031c93a39f41b.4.jpg",t:"India Summer, Veronica Radkes",d:"7 min",r:"100%"},{id:4486109,u:"/video4486109/brandi_love_casi_james",i:"http://img100-109.HALAMB.com/videos/thumbs/00/15/b8/0015b80f1123565af65d6f8ba07e577c/0015b80f1123565af65d6f8ba07e577c.28.jpg",t:"Brandi Love, Casi James",d:"8 min",r:"100%"},{id:6404773,u:"/video6404773/busty_milf_dylan_teaches_innocent_teen_amia_how_to_suck_and_fuck",i:"http://img100-773.HALAMB.com/videos/thumbs/61/05/48/61054876491d76419e59ce7032094c97/61054876491d76419e59ce7032094c97.8.jpg",t:"Busty Milf Dylan teaches innocent teen Am ...",d:"8 min",r:"100%"},{id:7292342,u:"/video7292342/brother_sister",i:"http://img100-342.HALAMB.com/videos/thumbs/b8/09/e4/b809e47e122999f9f4ff95a5811f5d13/b809e47e122999f9f4ff95a5811f5d13.6.jpg",t:"Brother Sister",d:"11 min",r:"100%"}],[{id:7576907,u:"/video7576907/natural_busty_mom_catches_sister_sucking_bro",i:"http://img100-907.HALAMB.com/videos/thumbs/07/7c/0b/077c0b7c6c19738af89cdea72f169d53/077c0b7c6c19738af89cdea72f169d53.2.jpg",t:"Natural Busty Mom Catches Sister Sucking Bro",d:"25 min",r:"100%"},{id:7775088,u:"/video7775088/threesome_bl_mm",i:"http://img100-088.HALAMB.com/videos/thumbs/a8/a2/4b/a8a24b4272c6cab4596d183f9b98f58c/a8a24b4272c6cab4596d183f9b98f58c.29.jpg",t:"Threesome BL MM",d:"49 min",r:"100%"},{id:3175496,u:"/video3175496/after_seeing_teens_fuck_milf_wants_a_go_on_young_dude",i:"http://img100-496.HALAMB.com/videos/thumbs/89/5d/c3/895dc35479e9940f555c32ce095aa1f1/895dc35479e9940f555c32ce095aa1f1.19.jpg",t:"After seeing teens fuck MILF wants a go o ...",d:"5 min",r:"94%"},{id:4984185,u:"/video4984185/mother_and_daughter_threesome_mother_daughter_threesome_brunette_hot_mature_milf_teen_sex_blowjob_s",i:"http://img100-185.HALAMB.com/videos/thumbs/f6/47/8f/f6478f7c6a889a2e799471433db8063f/f6478f7c6a889a2e799471433db8063f.2.jpg",t:"Mother And Daughter Threesome, mother dau ...",d:"36 min",r:"77%"},{id:4241852,u:"/video4241852/mom_catches_daughter",i:"http://img100-852.HALAMB.com/videos/thumbs/12/6a/c5/126ac5a4fe23865ed0b958a5d00593ea/126ac5a4fe23865ed0b958a5d00593ea.8.jpg",t:"Mom catches daughter",d:"36 min",r:"100%"},{id:7722320,u:"/video7722320/mom_teach_sex_to_her_daughter",i:"http://img100-320.HALAMB.com/videos/thumbs/00/0f/ee/000fee2e277840804c1e32efe9370449/000fee2e277840804c1e32efe9370449.14.jpg",t:"Mom teach sex to her daughter",d:"43 min",r:"100%"},{id:6142954,u:"/video6142954/brandi_love_casi_james",i:"http://img100-954.HALAMB.com/videos/thumbs/8b/94/70/8b947093edea478c177534dcbb724483/8b947093edea478c177534dcbb724483.29.jpg",t:"Brandi Love, Casi James",d:"6 min",r:"100%"},{id:1874120,u:"/video1874120/teens_get_blowjob_lesson_from_milf_who_is_horny",i:"http://img100-120.HALAMB.com/videos/thumbs/b2/52/c4/b252c4e6a5c078f3211e141bb1b711f0/b252c4e6a5c078f3211e141bb1b711f0.3.jpg",t:"Teens get blowjob lesson from milf who is ...",d:"3 min",r:"45%"},{id:757885,u:"/video757885/mom_teach_her_daughter_how_to_fuck",i:"http://img100-885.HALAMB.com/videos/thumbs/bb/75/65/bb7565893eaa93c5dcc0a6d3f4c5ec17/bb7565893eaa93c5dcc0a6d3f4c5ec17.2.jpg",t:"Mom teach her daughter how to fuck",d:"34 min",r:"100%"},{id:7873013,u:"/video7873013/moms_teach_sex_-_mom_and_daughter_tag_team_teen_boyfriend",i:"http://img100-013.HALAMB.com/videos/thumbs/a5/b6/97/a5b6977a52375e0434f54cc8c0090d60/a5b6977a52375e0434f54cc8c0090d60.12.jpg",t:"Moms Teach Sex - Mom and daughter tag tea ...",d:"5 min",r:"100%"}]]);</script>


		</div>
		<!-- #main -->
		<!-- ||/video7135087/casi_james_brandi_love_and_jake_ariston_-_birds_and_the_bees|| -->

		<div id="ad-bottom">
			<div id="wpn_ad_footer"></div>
			<p>
				Ads by <a href="http://www.trafficfactory.biz/">TrafficFactory.biz</a>
			</p>
		</div>


		<!--   <script language="javascript" type="text/javascript">
      var script = document.createElement("script");
      script.src = "/in.php?referer=" + escape(document.referrer);
      script.type = "text/javascript";
      document.getElementsByTagName("head")[0].appendChild(script);
    </script>
   -->
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

			<p class="slogan">HALAMB.com - the best free MultiMedia videos on
				internet, 100% free.</p>
		</footer>

	</div>
	<!-- #page  -->












</body>
</html>