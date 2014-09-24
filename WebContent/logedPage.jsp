<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.HALAMB.USER_INFO"%>
<%@page import="com.HALAMB.User_insert_hibernate"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>

<%
HttpSession session1=request.getSession(false);

String pass;
String email;
String session3,session2;
System.out.println("test1   by LOGED_PAGE");
String user=request.getParameter("login");
System.out.println("test1   "+user);
String pass1=request.getParameter("pass");
System.out.println("test1   "+pass1);


if(session==null)
{
	
	
	System.out.println("You have to login first");


	//getServletContext().getRequestDispatcher("/login.html").forward(request, response);
	//destroy();
	
}
else
{
	
	session3=(String) session.getAttribute("email");
	 session2=(String) session.getAttribute("password");
	if(session3==null &&  session2==null)
	{		System.out.println("In the Upload Area "+session1+"   "+session3);
	//getServletContext().getRequestDispatcher("/login.html").forward(request, response);
}
	else
	{
	//getServletContext().getRequestDispatcher("/HOME.html").forward(request, response);
	//destroy();
	}
	
}



String queryString="from USER_INFO where email='"+user+"'";
%>

<% 


pass=(String) session1.getAttribute("random_NUMBER");
System.out.println("RANDOM SYSTEM GENENRATEDN IS    "+pass);
System.out.println("YOUR EMAIL IS    "+(String) session1.getAttribute("email"));
email=(String) session1.getAttribute("email");
System.out.println(session1); 
if(pass==pass1){
	System.out.println("Correect");
	String queryString1="from USER_INFO where email='"+email+"'";
	USER_INFO u=new USER_INFO();
	User_insert_hibernate h=new User_insert_hibernate();
	u=h.UserLogin(queryString1);
	u.setVarified(1);
	
	
	
	
}
else
{
	//getServletContext().getRequestDispatcher("/logedPage.jsp").forward(request, response);
}

%></div>
</body>
</html>