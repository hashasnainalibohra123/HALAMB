package com.HALAMB;

import java.io.IOException;
import java.util.Properties;


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

import com.webmedia.model.USER_INFO;

/**
 * Servlet implementation class update_email
 */
public class update_email extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update_email() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	String email=request.getParameter("email");
	
	HttpSession session11=request.getSession(false);
	User_insert_hibernate h;

	USER_INFO u;

	String session1,session2;

	System.out.println("TESR");
	if(session11==null)
	{
		
		
		System.out.println("You have to login first");
 
	
		getServletContext().getRequestDispatcher("/login.html").forward(request, response);
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
		{		System.out.println("In the Upload Area "+session1+"   "+session2);
		getServletContext().getRequestDispatcher("/login.html").forward(request, response);
	}
		 else
		 {
			 String queryString="from USER_INFO where email='"+session1+"'";
			 h=new User_insert_hibernate();
			 
			 u=h.UserLogin(queryString);
			 
			 u.setEmail(email);
			
			 
			 int   r1;	
				r1 = (int)((Math.random() * 9000000)+1000000);
			 
			//......setting verification code.........//
			 
			 

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
							return new PasswordAuthentication("hasnain.ali.bohra552@gmail.com","garvit552");
						}
					});
		 
				try {
		 
					Message message = new MimeMessage(session);
					message.setFrom(new InternetAddress("hasnain.ali.bohra552@gmail.com"));
					message.setRecipients(Message.RecipientType.TO,
							InternetAddress.parse(email));
					message.setSubject("Testing Subject");
			
				
					message.setText("Dear Mail Crawler," +
							"\n\n No spam to my email, please! EMAIL PASSWORD IS:    "+r1+"  THANKING YOU");
					
		 
					
					
					Transport.send(message);
		 
			
		 
				} catch (MessagingException e) {
					throw new RuntimeException(e);
				}
				
				HttpSession Session11=request.getSession();
				Session11.setAttribute("password",u.getPass());
				Session11.setAttribute("email",email );
				String s1=r1+"";
				Session11.setAttribute( "random_NUMBER",s1);

			 System.out.println("CORRECT");
			 u.setVarified(r1);
			 
			 h.UserUpdateUp(u); 
			 
			 
		 }
		 getServletContext().getRequestDispatcher("/UPDATE_EMAIL.jsp").forward(request, response);
	
	}

}
}
