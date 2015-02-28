package com.HALAMB;





import java.io.IOException;
import java.io.PrintWriter;

import java.util.Date;
import java.util.Properties;


//import java.util.Calendar;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.HALAMB.USER_INFO;










public class CREATE_ACCOUNT extends HttpServlet {
		private static final long serialVersionUID = 102831973239L;       
    User_insert_hibernate u1;
    
	
		 
		//init method started
	/*	public void init(ServletConfig config1)throws ServletException
		{
			
			
			System.out.println("Factory has been created....");
		}
	*/	
		
		
		@SuppressWarnings("deprecation")
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			
			
			int i=00006;
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		pw.print("<html>");
		pw.print("<body>");
		pw.print("<form >");
		pw.print("<form id='uploadbanner' enctype='multipart/form-data' method='post' action='#>");
		   pw.print("<input id='fileupload' name='f' type='file' />");
		pw.print("</form>");
		pw.print("HELLO");
		pw.print(i);
		
		pw.print("</body>");
		
		int y;
	String s=request.getParameter("email");
	String s1=request.getParameter("profile_name");
	String s2=request.getParameter("password");
	String s3=request.getParameter("nom");
	String s4=request.getParameter("birth_year");
	String s5=request.getParameter("birth_month");
	String s6=request.getParameter("birth_day");
		String s7=request.getParameter("sexe");
		String s8=request.getParameter("pays_select");
		String s9=request.getParameter("region");
		String s10=request.getParameter("ville");
		String age1=request.getParameter("age");
		int age=Integer.parseInt(age1);
	int   r1;	
	r1 = (int)((Math.random() * 9000000)+1000000);
	USER_INFO u=new USER_INFO();
	
	
	
	
	
	
		y=Integer.parseInt(s5);
		System.out.println(new Date(Integer.parseInt(s4)-1900,y-1,Integer.parseInt(s6)));
		//Integer.parseInt(s6),y,Integer.parseInt(s5)
		u.setEmail(s);
		u.setDob1(new Date(Integer.parseInt(s4)-1900,y-1,Integer.parseInt(s6)));
		u.setCity("asd");
		u.setPass(s2);
		u.setCountry(s8);
		u.setProfile_name(s1);
		u.setSex(s7);
		u.setUser_name(s3);
		u.setRegion(s9);
		u.setVarified(r1);
		u.setAge(age);
		u.setCity(s10);
		java.util.Date upload_date = new  Date();
        
        u.setSignupdate(upload_date);
		u1=new User_insert_hibernate();
		u1.UserSignUp(u);
		
		System.out.println("THis is test @@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
 
		Session session = Session.getDefaultInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("hasnain.ali.bohra.test@gmail.com","garvit552");
				}
			});
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("hasnain.ali.bohra552@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(s));
			message.setSubject("Testing Subject");
	
		
			message.setText("Dear Mail Crawler," +
					"\n\n No spam to my email, please! EMAIL PASSWORD IS:    "+r1+"  THANKING YOU");
			
 
			
			
			Transport.send(message);
 
	
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		
		HttpSession session1=request.getSession();
		session1.setAttribute("password",s2);
		session1.setAttribute("email",s );
		
		s1=r1+"";
		session1.setAttribute( "random_NUMBER",s1);
		
		
		getServletContext().getRequestDispatcher("/Default_Setting").forward(request, response);
		//getServletContext().getRequestDispatcher("/logedPage.html").forward(request, response);
		
		
		}

}
