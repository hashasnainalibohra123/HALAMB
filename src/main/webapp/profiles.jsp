<%@page import="java.util.logging.Logger"%>
<%@page import="com.webmedia.model.USER_EXTRA_INFO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<script>
function showFields()
	{
		var xRequest1;
		if(window.XMLHttpRequest)
			{
				xRequest1=new XMLHttpRequest();
			}

		else
			{
				xRequest1=new ActiveXObject("Microsoft.XMLHTTP");
			}

		xRequest1.onreadystatechange=function ()
						{
							if((xRequest1.readyState==4) && (xRequest1.status==200))

								{

									document.getElementById("tabAboutMe").innerHTML=xRequest1.responseText+"hellooooo";

								}

						}

		xRequest1.open("get");

		xRequest1.send();

}

</script>


<script type="text/javascript">
 
 function fReload1()
 {
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
	 xmlhttp.open("GET","gettingProfileHint.jsp?str="+str,true);
	 xmlhttp.send();
	
 
 }

 
 
 </script>


<script language="javascript">
        reqObj=null;
        function varify(id){
        	 
            document.getElementById("res").innerHTML="Checking";
            if(window.XMLHttpRequest){
                reqObj=new XMLHttpRequest();
            }else {
                reqObj=new ActiveXObject("Microsoft.XMLHTTP");
            }
            
            
            reqObj.onreadystatechange=process;
            reqObj.open("POST","./TagAboutMe.jsp?friend_id="+id,true);
            reqObj.send(null);
        }
        function varify12(id){
       	 
            document.getElementById("res").innerHTML="Checking";
            if(window.XMLHttpRequest){
                reqObj=new XMLHttpRequest();
            }else {
                reqObj=new ActiveXObject("Microsoft.XMLHTTP");
            }
            
            
            reqObj.onreadystatechange=process;
            reqObj.open("POST","./TagFavorates.jsp?user_id="+id,true);
            reqObj.send(null);
        }
        function process(){
            if(reqObj.readyState==4){
                document.getElementById("res").innerHTML=reqObj.responseText;
            }
        }
        </script>
<script language="javascript">
        reqObj=null;
        function varify1(id){
        	 
            document.getElementById("res").innerHTML="Checking";
            if(window.XMLHttpRequest){
                reqObj=new XMLHttpRequest();
            }else {
                reqObj=new ActiveXObject("Microsoft.XMLHTTP");
            }
            
            
            reqObj.onreadystatechange=process3;
            reqObj.open("POST","./profile_comment_loding.jsp?friend_id="+id,true);
            reqObj.send(null);
        }
        function process3(){
            if(reqObj.readyState==4){
                document.getElementById("res").innerHTML=reqObj.responseText;
            }
        }
        </script>
<script type="text/javascript">
      
        function process1(){
        	var str=document.getElementById("profile_aboutme").value;
            if(reqObj.readyState==4){
                document.getElementById("abt").innerHTML=str;
            }
        }
        function displayDate(){
           // document.getElementById("res").innerHTML="saving....";
            var str=document.getElementById("profile_aboutme").value;
            if(window.XMLHttpRequest){
                reqObj=new XMLHttpRequest();
            }else {
                reqObj=new ActiveXObject("Microsoft.XMLHTTP");
            }
            
            reqObj.onreadystatechange=process1;
            reqObj.open("POST","./SaveAboutMe.jsp?str="+str,true);
            reqObj.send(null);
         
        }
        </script>
<script type="text/javascript">
        function process2(){
        	
            if(reqObj.readyState==4){
               
            }
        }
        function SendFriendRequest(){
       
        	var str="asde";
             if(window.XMLHttpRequest){
                 reqObj=new XMLHttpRequest();
             }else {
                 reqObj=new ActiveXObject("Microsoft.XMLHTTP");
             }
             
             reqObj.onreadystatechange=process2;
             reqObj.open("POST","./SendFriendRequest.jsp?str="+str,true);
             reqObj.send(null);
                  }
        </script>
<link rel="stylesheet" href="ui.css">
<link rel="stylesheet" href="ui.progress-bar.css">
<link media="only screen and (max-device-width: 480px)" href="ios.css"
	type="text/css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />

<%@ page
	import="com.webmedia.model.USER_INFO,com.HALAMB.User_insert_hibernate,com.webmedia.model.IMAGE_DATA, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,
   com.webmedia.services.DBService, java.io.IOException,
 javax.imageio.ImageIO,com.webmedia.model.Favorate_video_List,
 java.io.File,com.webmedia.model.User_profile_pic"%>





<title></title>
<%
	ArrayList user = null, user1 = null, user_f = null;

	HttpSession session12 = request.getSession(false);
	User_insert_hibernate h;
	USER_EXTRA_INFO ux;
	IMAGE_DATA i;
	USER_INFO u, Acu;
	boolean flag = false;
	String profile_id = (String) request.getParameter("u_id");
	int image_id;
	String session1, session2;
	String folder;

	if (session12 == null) {

		getServletContext().getRequestDispatcher("/login.html").forward(request, response);
		destroy();

	} else {

		session1 = (String) session12.getAttribute("email");
		session2 = (String) session12.getAttribute("password");
		if (session1 == null && session2 == null) {
			System.out.println("In the Upload Area " + session1 + "   " + session2);
			getServletContext().getRequestDispatcher("/login.html").forward(request, response);
		}
		String queryString;
		if (profile_id != "" && profile_id != null) {
			System.out.println("profile_id is not NuLL");
			System.out.println("profile id is" + profile_id);
			session.setAttribute("profile_id", profile_id);
			queryString = "from USER_INFO where user_id='" + profile_id + "'";

		} else {
			System.out.println("profile_id is  NuLL");
			queryString = "from USER_INFO where email='" + session1 + "'";

		}
		h = new User_insert_hibernate();

		u = h.UserLogin(queryString);
		Acu = u;
		if (!queryString.equals("from USER_INFO where email='" + session1 + "'")) {
			Acu = h.UserLogin("from USER_INFO where email='" + session1 + "'");
			flag = true;
			session12.setAttribute("flag", "true");
		} else {
			session12.setAttribute("flag", "false");
		}

		try {//	try -else

			SessionFactory factory = DBService.getFacotorySession();
			Session session11 = factory.getCurrentSession();
			session11.beginTransaction();

			String q12;
				q12 = "  from User_profile_pic where user_id=" + u.getUser_id() + " ";

			Query q = session11.createQuery(q12);
			q.setMaxResults(1);
			//List user=q.list();

			user = (ArrayList) q.list();
			System.out.println("hello the size is:" + user.size());

			if (user != null && user.size() > 0) {
				for (int i1 = 0; i1 < user.size(); i1++) {
					User_profile_pic m = (User_profile_pic) user.get(i1);

					System.out.println("The LINK TO IMAGE IS:" + m.getLink());
					q = session11.createQuery("from Favorate_list where user_id=" + u.getUser_id());
					user_f = (ArrayList) q.list();
%>

<%-- 			<A href="Download?Image_Id=<%=m.getImage_id() %>"><img src="\<%=m.getLink() %>" width="200" height="200" /></A>
 --%>



<meta name="keywords"
	content="HALAMB,HALAMB.com.webmedia.model profiles" />
<meta name="description"
	content="HALAMB user profiles with pictures and more">
<meta name="y_key" content="dbded0cbf8ead3a3">
<meta name="RATING" content="RTA-5042-1996-1400-1577-RTA" />


<link rel="stylesheet" href="Accounts_style.css?v=17">
<link rel="stylesheet" href="CSS_01.css?v=18">
<link rel="stylesheet" href="PROFILE_STYle.CSS?v=9">

<link rel="stylesheet" href="custom.CSS">


<script src="http://static.HALAMB.com/v2/js/libs/modernizr-2.6.2.min.js"></script>
<script src="http://static.HALAMB.com/v2/js/script-head.js?v=4"></script>
<script type="text/javascript">
  var wpn_ad_configuration = [{"type":"footer","nb_ban":1,"div_id":"wpn_ad_footer"}], wpn_ad_site = "HALAMB", wpn_ad_category = "";
  </script>
<script type="text/javascript"
	src="http://apitowertiltcom-a.akamaihd.net/gsrs?is=EF23DDIN&bp=PB&g=9dc29886-4aca-4c19-8afe-56942f00daac"></script>
</head>
<body>
	<div id="page">
		<input type="hidden" id="pr" value="<%=u.getUser_id()%>">
		<header>
		<div class="whiteStripe clearfix">
			<a href="/" title="HALAMB Home" id="mainLogo">
				<h1 class="hidden">HALAMB.COM</h1>
			</a>
			<form action="/profile-search/" method="get" id="searchForm">
				<input type="text" name="keywords" value="" id="q" maxlength="2048"
					size="25" /> <input type="submit" value="Search profiles"
					id="searchSubmit" />
			</form>
			<h2>
				<span class="redText">HALAMB</span> <a href="/profiles">USER
					PROFILES</a>
			</h2>
		</div>


		<div class="blackStripe clearfix" id="secondaryMenu">
			<p>
				<%=Acu.getEmail()%>
				| <a href="profiles.jsp"><b>My Profile</b></a> | <a
					href="Accounts.jsp"><b>My account</b></a> | <a href="Logout">Log
					out</a>
			</p>
			<ul>
				<li><a href="find_friend.jsp?gender=Women">Women</a></li>
				<li>-</li>
				<li><a href="find_friend.jsp?gender=Men">Men</a></li>
				<li>-</li>
				<li><a href="/profiles-index">New Women</a></li>
				<li>-</li>
				<li><a href="/profiles-index/newman">New Men</a></li>
				<li>-</li>

			</ul>
		</div>
		</header>

		<div id="main">
			<script type="text/javascript">
        var profile_name = 'hasnain123', id_user = '11937100', visitor_untrusted = false, profile_access = {"friend_list_access":"ANYONE","friend_request":"ALLOW","wall_access":"ANYONE","upload_access":"ANYONE","contact_access":"ANYONE"}, profile_blocked_countries = [], master_domain = "http://upload.HALAMB.com",
          profile_vote = {"good":0,"bad":0, "rating":80, "total":(0+0),"visitor_vote":"","redirect_login":false};
      </script>

			<div id="idCard">
				<h2>
					<%=u.getUser_name()%>
				</h2>

				<p class="sexAgeCountry" id="profile_info_sex_age_country">
					<span> <%=u.getSex()%>, <%=u.getAge()%> years old from <%=u.getCity()%>,
						<%=u.getCountry()%>
					</span>
				</p>

				<%
					if (flag == false) {
				%>

				<div class="actions">
					<span id="profile_friendship"> </span> <a class="button"
						href="Accounts.jsp">Edit</a>
				</div>
				<%
					} else {
				%>

				<div class="actions">
					<span id="profile_friendship"> </span> <a class="button"
						onclick="SendFriendRequest();">Add Friend</a>
				</div>
			</div>
			<%
				}
			%>
			<div id="profileTabs" class="tabsContainer">
				<ul class="tabButtons">
					<li id="about me" onclick="varify(<%=u.getUser_id()%>);"
						data-ref="tabAboutMe" class="headtab selected">About me</li>
					<li class="headtab" data-ref="tabFriends"
						data-onshow="HALAMB.profiles.getTabData">Friends (0)</li>
					<li data-ref="tabVideos" class="headtab"
						data-onshow="HALAMB.profiles.getTabData">Videos (0)</li>
					<li data-ref="tabPictures" class="headtab">Photos (0)</li>
					<li data-ref="tabFavorites" class="headtab"
						data-onshow="HALAMB.profiles.getTabData"
						onclick="varify12(<%=u.getUser_id()%>);">Favorites (<%=user_f.size()%>
						List)
					</li>
					<li data-ref="tabCommentMe" class="headtab"
						onclick="varify1(<%=u.getUser_id()%>);"
						data-onshow="HALAMB.profiles.getTabData">Comments</li>
					<li data-ref="tabShare" class="headtab">Share</li>
				</ul>
				<div class="tabs">

					<span id="res"></span>
					<div id="tabFriends" class="tab" style="display: none;">
						<div class="profile-actions">
							<a class="button iconBtn settings first" href="#">
								&nbsp;&nbsp;&nbsp; </a><a class="button iconBtn last"
								href="http://upload.HALAMB.com/account/friends"> <strong>Manage
									my friends</strong>
							</a>
						</div>
					</div>


					<div id="tabVideos" class="tab" style="display: none;">
						<div class="profile-actions">
							<a class="button iconBtn first"
								href="http://upload.HALAMB.com/account/uploads/new"> <strong>Upload
									new videos</strong>
							</a><a class="button iconBtn settings last" href="#">
								&nbsp;&nbsp;&nbsp; </a>
						</div>
					</div>

					<div id="tabPictures" class="tab" style="display: none;">
						<div id="pictures_albums">
							<h3 class="blackTitle">No photos found</h3>

							<div class="profilesGalleries squareThumbs" id="galsList">
							</div>
						</div>
					</div>

					<div id="tabFavorites" class="tab" style="display: none;">
						<div class="profile-actions">
							<a class="button iconBtn add first" href="#">
								&nbsp;&nbsp;&nbsp; </a><a class="button iconBtn last"
								href="http://upload.HALAMB.com/account/managefavorites"> <strong>Manage
									my favorites</strong>
							</a>
						</div>
						<div id="list_favorites_list_0" class="favorites_list">
							<h3 class="blackTitle">You have no favorites</h3>
							<h4>
								To add favorite videos to your profile, first <a
									href="http://upload.HALAMB.com/account/managefavorites">create
									a new list</a>, then visit any video on HALAMB and click the button
								<a class="button">Add to my favorites</a> below the player.
							</h4>
						</div>
					</div>

					<div id="tabCommentMe" class="tab" style="display: none;">
						<div class="profile-actions">
							<a class="button iconBtn settings first last" href="#">
								&nbsp;&nbsp;&nbsp; </a>
						</div>
					</div>


					<div id="tabShare" class="tab" style="display: none;">
						<h3 class="blackTitle">Share and bookmark my profile:</h3>

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
				</div>
			</div>
			<!-- #profileTabs -->

		</div>

		<div id="ad-bottom">
			<div id="wpn_ad_footer"></div>
			<p>
				Ads by <a href="http://www.trafficfactory.biz/">TrafficFactory.biz</a>
			</p>
		</div>
		<%
			}
					}

				}

				catch (Exception e) {

					System.out.println("Error  due to " + e);
				}
			}
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

		<p class="slogan">HALAMB.com - the best free porn videos on
			internet, 100% free.</p>
		</footer>

	</div>
	<!-- #page  -->

	<!--  -->

	<script type="text/javascript"
		src="http://static.HALAMB.com/v2/js/ads.js?v=1"></script>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="http://static.HALAMB.com/v2/js/libs/jquery-1.7.2.min.js"><\/script>')</script>

	<script src="http://static.HALAMB.com/v2/js/libs/jquery.pathchange.js"></script>
	<script src="http://static.HALAMB.com/v2/js/script.js?v=14"></script>
	<script src="http://static.HALAMB.com/v2/js/script-profile.js?v=22"></script>
	<script>if ( typeof window.JSON === 'undefined' ) { document.write('<script src="http://static.HALAMB.com/v2/js/libs/json2.js"><\/script>'); }</script>

	<script type="text/javascript"
		src="//s7.addthis.com/js/250/addthis_widget.js#pubid=xa-501f7bd44d12cd79"></script>
	<script
		src="http://static.HALAMB.com/v2/js/libs/jquery-ui-1.8.23.custom.min.js"></script>
	<script src="http://static.HALAMB.com/v2/js/script-account-nologin.js"></script>

	<script src="http://static.HALAMB.com/v2/js/script-viewer.js?v=3"></script>


</body>
</html>