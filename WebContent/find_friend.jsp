<%@page
	import="com.sun.org.apache.xalan.internal.xsltc.util.IntegerArray"%>
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

<title>HALAMB Profiles list - HALAMB.COM</title>
<meta name="keywords"
	content="HALAMB,HALAMB.com, x videos,x video,porn,video,videos," />
<meta name="description"
	content="HALAMB HALAMB Woman Profiles list free">
<meta name="verify-v1"
	content="3Awl+ctS3GOag+hKJiSg9SQQ2MR/GwV8H/PAgMhGhcM=" />

<meta http-equiv="pics-Label"
	content='(pics-1.1 "http://www.icra.org/pics/vocabularyv03/" l gen true for "http://HALAMB.com" r (n 3 s 3 v 0 l 3 oa 0 ob 0 oc 0 od 0 oe 0 of 0 og 0 oh 0 c 3) gen true for "http://www.HALAMB.com" r (n 3 s 3 v 0 l 3 oa 0 ob 0 oc 0 od 0 oe 0 of 0 og 0 oh 0 c 3))' />
<link rel="meta" href="http://www.HALAMB.com/labels.rdf"
	type="application/rdf xml" title="ICRA labels" />

<link rel="search" type="application/opensearchdescription+xml"
	title="HALAMB" href="/rss/rss.xml">
<link rel="shortcut icon"
	href="http://static.HALAMB.com/img/favicon_xvideos.ico">

<link rel="stylesheet" href="Accounts_style.css?v=17">
<link rel="stylesheet" href="CSS_01.css?v=18">

<script src="http://static.HALAMB.com/v2/js/libs/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="countries.js"></script>
<script type="text/javascript">
    var master_url = "HALAMB.com";
  </script>
<script src="http://static.HALAMB.com/v2/js/script-head.js?v=4"></script>
<script src="http://static.HALAMB.com/v2/js/mobile.js"></script>
</head>
<body>
	<script type="text/javascript">
  var wpn_ad_configuration = [{"type":"footer","nb_ban":1,"div_id":"wpn_ad_footer"}], wpn_ad_site = "HALAMB", wpn_ad_category = "";
  </script>
	<div id="page">
		<header>
		<div class="whiteStripe clearfix">
			<a href="/" title="HALAMB Home" id="mainLogo"> <img
				src="http://img100.HALAMB.com/videos/thumbs/HALAMB.gif"
				alt="HALAMB Home" id="siteLogo" />

			</a>
			<form action="/" method="post" id="searchForm">
				<input type="text" name="k" value="" id="q" maxlength="2048"
					size="30" /> <input type="submit" value="Search" id="searchSubmit" />
			</form>
			<h2>
				<span class="redText">HALAMB</span> <a href="/profiles">USER
					PROFILES</a>
			</h2>
		</div>

		<div class="redStripe clearfix" id="mainMenu">
			<p>Over 3000 new free bestvideos / day</p>
			<ul>
				<li><a href="/">New Videos</a></li>
				<li><a href="/best/">Best Videos</a></li>
				<li><a href="/pornstars">Pornstars</a></li>
				<li><a href="/channels">Channels</a></li>
				<li><a href="/profiles">Profiles</a></li>
				<li><a href="/tags/">Tags</a></li>
				<li><a href="http://forum.xnxx.com/">Forum</a></li>
				<li><a href="http://multi.xnxx.com/">bestPics</a></li>
			</ul>
		</div>


		<%@ page
			import="com.HALAMB.USER_INFO,com.HALAMB.User_insert_hibernate,com.HALAMB.IMAGE_DATA, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,java.util.Formatter,java.util.Date,
 java.io.File,com.HALAMB.User_profile_pic,java.text.SimpleDateFormat,
 java.awt.image.BufferedImage;"%>





		<title></title>



		<div class="blackStripe clearfix" id="secondaryMenu">
			<p>
				<%=(String)session.getAttribute("email") %>
				| <a href="profiles.jsp"><b>My Profile</b></a> | <a
					href="UPDATE_EMAIL.jsp"><b>My account</b></a> | <a href="Logout">Log
					out</a>
			</p>
			<ul>
				<li><strong>6,255,486 profiles</strong></li>
				<li>-</li>
				<li><a href="find_friend.jsp?gender=Women"><strong>Women</strong></a></li>
				<li>-</li>
				<li><a href="find_friend.jsp?gender=Men">Men</a></li>
				<li>-</li>
			</ul>
		</div>
		</header>

		<div id="main">

			<div id="adProfiles">
				<a href="profiles.jsp">Access my profile</a>
			</div>

			<form action="find_friend.jsp" method="get" id="searchProfileForm"
				class="no-search ad-none">
				<!-- Left column -->
				<div class="column leftcol">
					<div class="formLine form_field_keywords">
						<label for="phrase_text">Keywords:</label>
						<div class="content">
							<input type="text" name="keywords" id="phrase_text" />
						</div>
						<div class="help">
							<em>Searches in profile name, city, country, description and
								education</em>
						</div>
					</div>
					<div class="formLine">
						<label for="sex_select">Gender:</label>
						<div class="content">
							<select name="gender" id="sex_select">
								<option value=""></option>
								<option value=""></option>
								<option value="Man">Man</option>
								<option value="Woman">Woman</option>
								<option value="Transvestite">Transvestite</option>
								<option value="Gay man">Gay man</option>
								<option value="Lesbian woman">Lesbian woman</option>
								<option value="Couple">Couple</option>
								<option value="Gay couple">Gay couple</option>
								<option value="Lesbian couple">Lesbian couple</option>
								<option value="Transexual">Transexual</option>
								<option value="Transexual couple">Transexual couple</option>
								<option value="Site or Company">Site or Company</option>
							</select>
						</div>
					</div>


					<div class="formLine">
						<label for="create_date_select">Create date:</label>
						<div class="content">
							<select name="create_date" id="create_date_select" value="0">
								<option value="0"></option>
								<option value="1">Today</option>
								<option value="7">Last week</option>
								<option value="30">Last month</option>
								<option value="90">Last 3 months</option>
							</select>
						</div>
					</div>
					<div class="content">
						<div class="formLine country">

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
					</div>
					<script>
            populateCountries("pays_select", "region_select");
            
        </script>


					<div class="formLine">
						<label for="relationship_select">Relationship:</label>
						<div class="content">
							<select name="relationship" id="relationship_select">
								<option value=""></option>
								<option value="Single">Single</option>
								<option value="Taken">Taken</option>
								<option value="Open">Open</option>
							</select>
						</div>
					</div>
					<div class="formLine">
						<label for="age_min_select">Age:</label>
						<div class="content two_selects">
							<select name="age_min" id="age_min_select">
								<option value="0"></option>
								<option value="5">5y</option>
								<option value="6">6y</option>
								<option value="7">7y</option>
								<option value="8">8y</option>
								<option value="9">9y</option>
								<option value="10">10y</option>
								<option value="11">11y</option>
								<option value="12">12y</option>
								<option value="13">13y</option>
								<option value="14">14y</option>
								<option value="15">15y</option>
								<option value="16">16y</option>
								<option value="17">17y</option>
								<option value="18">18y</option>
								<option value="19">19y</option>
								<option value="20">20y</option>
								<option value="21">21y</option>
								<option value="22">22y</option>
								<option value="23">23y</option>
								<option value="24">24y</option>
								<option value="25">25y</option>
								<option value="26">26y</option>
								<option value="27">27y</option>
								<option value="28">28y</option>
								<option value="29">29y</option>
								<option value="30">30y</option>
								<option value="31">31y</option>
								<option value="32">32y</option>
								<option value="33">33y</option>
								<option value="34">34y</option>
								<option value="35">35y</option>
								<option value="36">36y</option>
								<option value="37">37y</option>
								<option value="38">38y</option>
								<option value="39">39y</option>
								<option value="40">40y</option>
								<option value="41">41y</option>
								<option value="42">42y</option>
								<option value="43">43y</option>
								<option value="44">44y</option>
								<option value="45">45y</option>
								<option value="46">46y</option>
								<option value="47">47y</option>
								<option value="48">48y</option>
								<option value="49">49y</option>
								<option value="50">50y</option>
								<option value="51">51y</option>
								<option value="52">52y</option>
								<option value="53">53y</option>
								<option value="54">54y</option>
								<option value="55">55y</option>
								<option value="56">56y</option>
								<option value="57">57y</option>
								<option value="58">58y</option>
								<option value="59">59y</option>
								<option value="60">60y</option>
								<option value="61">61y</option>
								<option value="62">62y</option>
								<option value="63">63y</option>
								<option value="64">64y</option>
								<option value="65">65y</option>
								<option value="66">66y</option>
								<option value="67">67y</option>
								<option value="68">68y</option>
								<option value="69">69y</option>
								<option value="70">70y</option>
								<option value="71">71y</option>
								<option value="72">72y</option>
								<option value="73">73y</option>
								<option value="74">74y</option>
								<option value="75">75y</option>
								<option value="76">76y</option>
								<option value="77">77y</option>
								<option value="78">78y</option>
								<option value="79">79y</option>
								<option value="80">80y</option>
								<option value="81">81y</option>
								<option value="82">82y</option>
								<option value="83">83y</option>
								<option value="84">84y</option>
								<option value="85">85y</option>
								<option value="86">86y</option>
								<option value="87">87y</option>
								<option value="88">88y</option>
								<option value="89">89y</option>
								<option value="90">90y</option>
								<option value="91">91y</option>
								<option value="92">92y</option>
								<option value="93">93y</option>
								<option value="94">94y</option>
								<option value="95">95y</option>
								<option value="96">96y</option>
								<option value="97">97y</option>
								<option value="98">98y</option>
								<option value="99">99y</option>
								<option value="100">100y</option>
								<option value="101">101y</option>
								<option value="102">102y</option>
								<option value="103">103y</option>
								<option value="104">104y</option>
								<option value="105">105y</option>
								<option value="106">106y</option>
								<option value="107">107y</option>
								<option value="108">108y</option>
								<option value="109">109y</option>
								<option value="110">110y</option>
								<option value="111">111y</option>
								<option value="112">112y</option>
								<option value="113">113y</option>
								<option value="114">114y</option>
								<option value="115">115y</option>
								<option value="116">116y</option>
								<option value="117">117y</option>
								<option value="118">118y</option>
								<option value="119">119y</option>
								<option value="120">120y</option>
							</select> <select name="age_max" id="age_max_select">
								<option value="0"></option>
								<option value="5">5y</option>
								<option value="6">6y</option>
								<option value="7">7y</option>
								<option value="8">8y</option>
								<option value="9">9y</option>
								<option value="10">10y</option>
								<option value="11">11y</option>
								<option value="12">12y</option>
								<option value="13">13y</option>
								<option value="14">14y</option>
								<option value="15">15y</option>
								<option value="16">16y</option>
								<option value="17">17y</option>
								<option value="18">18y</option>
								<option value="19">19y</option>
								<option value="20">20y</option>
								<option value="21">21y</option>
								<option value="22">22y</option>
								<option value="23">23y</option>
								<option value="24">24y</option>
								<option value="25">25y</option>
								<option value="26">26y</option>
								<option value="27">27y</option>
								<option value="28">28y</option>
								<option value="29">29y</option>
								<option value="30">30y</option>
								<option value="31">31y</option>
								<option value="32">32y</option>
								<option value="33">33y</option>
								<option value="34">34y</option>
								<option value="35">35y</option>
								<option value="36">36y</option>
								<option value="37">37y</option>
								<option value="38">38y</option>
								<option value="39">39y</option>
								<option value="40">40y</option>
								<option value="41">41y</option>
								<option value="42">42y</option>
								<option value="43">43y</option>
								<option value="44">44y</option>
								<option value="45">45y</option>
								<option value="46">46y</option>
								<option value="47">47y</option>
								<option value="48">48y</option>
								<option value="49">49y</option>
								<option value="50">50y</option>
								<option value="51">51y</option>
								<option value="52">52y</option>
								<option value="53">53y</option>
								<option value="54">54y</option>
								<option value="55">55y</option>
								<option value="56">56y</option>
								<option value="57">57y</option>
								<option value="58">58y</option>
								<option value="59">59y</option>
								<option value="60">60y</option>
								<option value="61">61y</option>
								<option value="62">62y</option>
								<option value="63">63y</option>
								<option value="64">64y</option>
								<option value="65">65y</option>
								<option value="66">66y</option>
								<option value="67">67y</option>
								<option value="68">68y</option>
								<option value="69">69y</option>
								<option value="70">70y</option>
								<option value="71">71y</option>
								<option value="72">72y</option>
								<option value="73">73y</option>
								<option value="74">74y</option>
								<option value="75">75y</option>
								<option value="76">76y</option>
								<option value="77">77y</option>
								<option value="78">78y</option>
								<option value="79">79y</option>
								<option value="80">80y</option>
								<option value="81">81y</option>
								<option value="82">82y</option>
								<option value="83">83y</option>
								<option value="84">84y</option>
								<option value="85">85y</option>
								<option value="86">86y</option>
								<option value="87">87y</option>
								<option value="88">88y</option>
								<option value="89">89y</option>
								<option value="90">90y</option>
								<option value="91">91y</option>
								<option value="92">92y</option>
								<option value="93">93y</option>
								<option value="94">94y</option>
								<option value="95">95y</option>
								<option value="96">96y</option>
								<option value="97">97y</option>
								<option value="98">98y</option>
								<option value="99">99y</option>
								<option value="100">100y</option>
								<option value="101">101y</option>
								<option value="102">102y</option>
								<option value="103">103y</option>
								<option value="104">104y</option>
								<option value="105">105y</option>
								<option value="106">106y</option>
								<option value="107">107y</option>
								<option value="108">108y</option>
								<option value="109">109y</option>
								<option value="110">110y</option>
								<option value="111">111y</option>
								<option value="112">112y</option>
								<option value="113">113y</option>
								<option value="114">114y</option>
								<option value="115">115y</option>
								<option value="116">116y</option>
								<option value="117">117y</option>
								<option value="118">118y</option>
								<option value="119">119y</option>
								<option value="120">120y</option>
							</select>
						</div>
					</div>

					<div class="formActions">
						<input type="submit" value="Search profiles" /> <input
							type="submit" name="_advanced_search" value="Advanced search"
							class="advanced" /> <strong>Order by</strong> <input
							type="radio" name="orderby" id="orderby_relevance"
							value="relevance" checked="checked" /> <label
							for="orderby_relevance">Relevance</label> <input type="radio"
							name="orderby" id="orderby_hits" value="hits" /> <label
							for="orderby_hits">Hits</label> <input type="radio"
							name="orderby" id="orderby_votes" value="votes" /> <label
							for="orderby_votes">Votes</label>
					</div>
				</div>
			</form>

			<!-- PAGINATION -->
			<div class="pagination">
				<ul>
					<li><a class="sel">1</a></li>
					<li><a href="/profiles/1">2</a></li>
					<li><a href="/profiles/2">3</a></li>
					<li><a href="/profiles/3">4</a></li>
					<li><a href="/profiles/4">5</a></li>
					<li><a href="/profiles/5">6</a></li>
					<li><a href="/profiles/6">7</a></li>
					<li><a href="/profiles/7">8</a></li>
					<li><a href="/profiles/8">9</a></li>
					<li><a href="/profiles/9">10</a></li>
					<li><a class="nP" href="/profiles/1">Next</a></li>
				</ul>
			</div>
			<!-- END PAGINATION -->
			<div id="profilesList" class="profilesGalleries">
				<%ArrayList user = null,user1 = null;
		
      //...checking session exist or not.......//
     	 
      	 session=request.getSession(false);
	 	 String jump1=(String)session.getAttribute("jump");
	 	 
		 int jump=0;
	     System.out.println("jump is"+jump1);
	if(jump1!=null && jump1!="" && jump1.equals("0"))
		jump=Integer.parseInt(jump1);
	
  	int count_max=0;
  ///////ANNOTATION CONFIGURATION////////
  		AnnotationConfiguration config1=new AnnotationConfiguration();
	//config.addAnnotatedClass();
		config1.addAnnotatedClass(IMAGE_DATA.class);
	config1.configure("hibernate.cfg.xml");
	//new SchemaExport(config).create(true,true);
	SessionFactory factory=config1.buildSessionFactory();
  HttpSession session12=request.getSession(false);
	User_insert_hibernate h;
	IMAGE_DATA i;
	USER_INFO u;
	boolean flag=false;
	int image_id;
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date today = dateFormat.parse(dateFormat.format(new Date()));
		Date d1,d2;
		String session1,session2;
		String folder;
	
		
		String queryString="from USER_INFO ";
	String gender=(String)request.getParameter("gender");

	String country=(String)request.getParameter("pays_select");

	String region=(String)request.getParameter("region");
	String age_max=(String)request.getParameter("age_max");

	String age_min=(String)request.getParameter("age_min");
	
	String create_date=(String)request.getParameter("create_date");
	
	System.out.println("TESR");
	
	if(gender==null){System.out.println("gender is null");}else System.out.println(gender );
	if(country==null){System.out.println("country is null");}
	if(region==null){System.out.println("region is null");}
	if(age_max==null){System.out.println("max age is null");}
	if(age_min==null){System.out.println("min age is null");}
	if(create_date==null){System.out.println("create_date is null");}else System.out.println(create_date );
	if(session12==null)
	{
		
		
		System.out.println("You have to login first");

	
		//getServletContext().getRequestDispatcher("/login.html").forward(request, response);
		destroy();
		
	}
	else
	{
		
		session1=(String) session12.getAttribute("email");
		 session2=(String) session12.getAttribute("password");
		 System.out.println();
		 System.out.println("this is IN THE USER_UPLOAD_IMAGES"+session1);
		 System.out.println("this is IN THE USER_UPLOAD_IMAGES"+session2);
		 if(session1==null &&  session2==null)
		{		System.out.println("In the Upload Area "+session1+"   "+session2);
		//getServletContext().getRequestDispatcher("/login.html").forward(request, response);
	}
	
		 
		 if((gender==null || gender.equals(""))&& age_max.equals("0") && age_min.equals("0") && country.equals("-1") && country==null && region==null && age_max==null && age_min==null && create_date==null) {
			System.out.println(); 
			queryString="from USER_INFO ";
		 }
		 else
		 {
			 queryString="from USER_INFO where ";
			 
			 if(gender!=null && !gender.equals("") ){queryString=queryString+" sex='"+gender+"'";
			 flag=true;
			 }
			 if(country!=null && !country.equals("-1")){
				 if(flag==true)
					 
					 queryString=queryString+" and ";
				 queryString=queryString+" country='"+country+"' ";
				 flag=true;
			 }
			 if(region!=null && !region.equals("") ){
				 if(flag==true)
					 queryString=queryString+" and ";
				 queryString=queryString+" region='"+region+"' ";
				 flag=true;
			 }
			
			 if(age_max!=null && age_min!=null && !age_max.equals("0") && !age_min.equals("0")){
				 if(flag==true)
					 queryString=queryString+" and age between"+" "+age_min+" and "+age_max;
				 else
					 queryString=queryString+" age between"+" "+age_max+" and "+age_min;
				 flag=true;
				 }
			 else if(age_max!=null && !age_max.equals("0")){
				 if(flag==true)
					 queryString=queryString+" and ";
				 queryString=queryString+" age="+age_max;
				 flag=true;
			 }
			 else if(age_min!=null && !age_min.equals("0")){
				 if(flag==true)
					 queryString=queryString+" and ";
				 queryString=queryString+" age ="+age_min;
				 flag=true;
			 }
			
			 
			 if(create_date!=null && !create_date.equals("") &&  !create_date.equals("0") ){
				 if(flag==true)
					 queryString=queryString+" and ";
				  d1=new Date(System.currentTimeMillis()-(Integer.parseInt(create_date)*24*60*60*1000)); 
				  d1=dateFormat.parse(dateFormat.format(d1));
				  today = dateFormat.parse(dateFormat.format(new Date()));	
				 System.out.println(d1+"                "+today);
				 System.out.println(dateFormat.format(d1)+"  ");
				 
				 queryString=queryString+" signupdate between '"+dateFormat.format(d1)+"' and '"+dateFormat.format(new Date())+"' ";
				 flag=true;
			 }
			 if(queryString.equals("from USER_INFO where ")){
				 queryString="from USER_INFO";
				 
			 }
			 
			 
		 }
		 System.out.println(queryString);
		 
		 
		 
		 
		// queryString="from USER_INFO where email='"+session1+"'";
		 h=new User_insert_hibernate();
		 
		 
		 try
		 {
			 Session session11=factory.getCurrentSession();
				session11.beginTransaction();
				Query q=session11.createQuery(queryString);
				
				
				
				user=(ArrayList) q.list();
				count_max=user.size();
				System.out.println("hello the size of loaded user is:"+user.size());
				q.setFirstResult(jump);
				
				if(user!=null && user.size()>0)
				{
					for(int i1=0;i1<user.size();i1++)
					{
						USER_INFO u1=(USER_INFO)user.get(i1);
						String q12="  from User_profile_pic where user_id='"+u1.getUser_id()+"' ";
						
						
						 q=session11.createQuery(q12);
						 		q.setMaxResults(1);
								user1=(ArrayList) q.list();
							System.out.println("hello the size of profile pic is:"+user1.size());
							
							
							if(user1!=null && user1.size()>0)
							{
								for(int i11=0;i11<user1.size();i11++)
								{
									User_profile_pic m=(User_profile_pic)user1.get(i11);
												
									System.out.println("The LINK TO IMAGE IS:"+m.getLink()); 
									if(i11%5==0)
									{
									
									}
									//......lodding image.../////
						%>

				<div class="thumbProfile" id="profile_adultslutfinder">
					<div class="thumb">
						<div class="vcenter">
							<div class="vcenter-ie">
								<a href="profiles.jsp?u_id=<%=u1.getUser_id()%>"> <img src=\
									<%=m.getLink()%> width="180" height="180" /></a>
							</div>
						</div>
					</div>
					<p class="profileName">
						<a href="profiles.jsp?u_id=<%=u1.getUser_id()%>"><%=u1.getProfile_name() %></a>
					</p>
					<p class="profileInfo">
						<%=u1.getSex() %>
						<%=u1.getAge() %>y from
						<%=u1.getCountry() %>
					</p>
					<p class="itemsCounts">10 videos - 318 favs - 170 photos</p>
				</div>



				<%
								}
								}
						
						
						
						
						
						
						
					}
				
					}//if-for user
					
					
					
					
					int maxi=count_max/4;
					 if(count_max%2==0)
					 {
					    	maxi=count_max/2;
					 }
					 else
					 {
					   	maxi=maxi+1;
						
						
					}
					System.out.println("this is MAXI >>>>>>>>>>>"+maxi);
String j=jump+"";
					session.setAttribute("jump",j);
				
					for(int k=1;k<=maxi;k++)
					{
					if(jump==k)
					{	%>

				<a href="find_friend.jsp?k=<%=k %>"><input type="button"
					value=<%=k %> disabled="disabled"></a>
				<%
						
					}
					else
					{
					%>

				<a href="find_friend.jsp?k=<%=k %>"><input type="button"
					value=<%=k %>></a>
				<%
					}}
					
					
					
					
					
		 }catch(Exception e){
			 System.out.println("ERROR DUE TO  "+e);
		 }
		 }

		 %>

				<!-- PAGINATION -->
				<div class="pagination">
					<ul>


						<li><a class="sel">1</a></li>
						<li><a href="/profiles/1">2</a></li>
						<li><a href="/profiles/2">3</a></li>
						<li><a href="/profiles/3">4</a></li>
						<li><a href="/profiles/4">5</a></li>
						<li><a href="/profiles/5">6</a></li>
						<li><a href="/profiles/6">7</a></li>
						<li><a href="/profiles/7">8</a></li>
						<li><a href="/profiles/8">9</a></li>
						<li><a href="/profiles/9">10</a></li>
						<li><a class="nP" href="/profiles/1">Next</a></li>
					</ul>
				</div>
				<!-- END PAGINATION -->

			</div>
			<!-- #main -->

			<div id="ad-bottom">
				<div id="wpn_ad_footer"></div>
				<p>
					Ads by <a href="http://www.trafficfactory.biz/">TrafficFactory.biz</a>
				</p>
			</div>

			<!-- Last round : 1409938855 -->





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

			<p class="slogan">HALAMB.com - the best free bestvideos on
				internet, 100% free.</p>
			</footer>

		</div>
		<!-- #page  -->
	</div>
	<script type="text/javascript"
		src="http://static.HALAMB.com/v2/js/ads.js?v=1"></script>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

	<script src="http://static.HALAMB.com/v2/js/script.js?v=14"></script>





	<script src="http://static.HALAMB.com/v2/js/script-account-nologin.js"></script>
	<script type="text/javascript" language="javascript">
    HALAMB.cookies.set("SEARCH_BODY_UNIT", "", 10, "/", "HALAMB.com", false);
  </script>


	<script type="text/javascript">  
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-24038425-1']);
    _gaq.push(['_trackPageview']);
    _gaq.push(['_setSampleRate', '1']);
  
    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();  
  </script>


	<!--  -->
</body>
</html>
<!-- Gen By 238 -->
<!-- 
 ID : 34b220d54e2958ae858099133e12a935
O:8:"stdClass":4:{s:8:"sitename";s:7:"default";s:4:"type";s:18:"profiles-clicksort";s:9:"sexfilter";s:5:"woman";s:4:"page";i:0;}
Time : 0 d 0 h 2 m 5 s
-->