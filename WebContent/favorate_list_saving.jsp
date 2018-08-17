<%@page import="com.webmedia.model.Favorate_list"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
       
      <link rel="stylesheet" href="ui.css">
  <link rel="stylesheet" href="ui.progress-bar.css">
  <link media="only screen and (max-device-width: 480px)" href="ios.css" type="text/css" rel="stylesheet" /> 
   <link rel="stylesheet" href="ui.css">
   <script src="jquery.js" type="text/javascript" charset="utf-8"></script>
  <script src="progress.js" type="text/javascript" charset="utf-8"></script>
  
 
 
</head>
	<%@ page
		import="com.webmedia.model.USER_INFO,com.HALAMB.User_insert_hibernate,com.webmedia.model.IMAGE_DATA,com.webmedia.model.User_profile_pic, java.util.ArrayList,
org.hibernate.Query,
 org.hibernate.Session,
  org.hibernate.SessionFactory,com.HALAMB.Upload_Profile_pic,com.webmedia.model.USER_INFO_IMAGE_DATA,
   org.hibernate.cfg.AnnotationConfiguration, java.io.IOException,
 javax.imageio.ImageIO,java.util.Date,
 java.io.File,com.webmedia.model.Comment_Table,com.HALAMB.Favorate_video_List,
 java.awt.image.BufferedImage;"%>
<body>

<%ArrayList user= null,user3=null,user_f=null;

HttpSession httpsession=request.getSession(true);
String email,pass,Image_Id;
if(httpsession.isNew())
	
{
		System.out.println("You have to login first");
		HttpSession session123=request.getSession();
		session123.setAttribute("from","comment" ); 
		getServletContext().getRequestDispatcher("/login.html").forward(request, response);
		destroy();
	
	
}

else
{
	
 String fav_list=request.getParameter("str");
 email=(String) httpsession.getAttribute("email");
 pass=(String) httpsession.getAttribute("password");
 Image_Id=(String )httpsession.getAttribute("Image_Id");
 
 //.....GETTING USER..............//
 USER_INFO u=new USER_INFO();
 String queryString="from USER_INFO where email='"+email+"'";
 User_insert_hibernate s=new User_insert_hibernate();
 u=s.UserLogin(queryString);
 
 
 //....GETTING IMAGE..............//

int  fav_id=0;

queryString="from USER_INFO where email='"+email+"'";
 
 //......setting values to comment_table..............//
AnnotationConfiguration config12=new AnnotationConfiguration();
config12.addAnnotatedClass(USER_INFO.class);
config12.addAnnotatedClass(IMAGE_DATA.class);
config12.addAnnotatedClass(User_profile_pic.class);
config12.addAnnotatedClass(Comment_Table.class);
config12.addAnnotatedClass(Favorate_video_List.class);
config12.addAnnotatedClass(Favorate_list.class);
config12.configure("hibernate.cfg.xml");
SessionFactory factory=config12.buildSessionFactory();
Session session12=factory.getCurrentSession();
session12.beginTransaction();
Favorate_list fav=new Favorate_list();
queryString="from Favorate_video_List where f_id='"+Integer.parseInt(fav_list)+"'";

Query q;
q=session12.createQuery(queryString);



user_f=(ArrayList)q.list();


if(user_f!=null && user_f.size()>0)
{
	System.out.println("Size of "+user_f.size());

	%>	<div id='progress_bar' class='ui-progress-bar ui-container'><div class='ui-progress' style='width: %;'><span class='ui-label' style='display:none;'>Processing <b class='value'>79%</b></span></div></div>
	<%
}
else
{
	Favorate_video_List fv=new Favorate_video_List();
	fv.setF_id(Integer.parseInt(fav_list));
	fv.setImage_Id(Integer.parseInt(Image_Id));
	fv.setUser_id(u.getUser_id());
	session12.save(fv);
	session12.getTransaction().commit();
	System.out.println("hasnain ali bohra");

%>	
<%}
}
%>
</body>
</html>