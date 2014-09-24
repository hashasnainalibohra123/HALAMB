package com.HALAMB;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class Default_Setting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		User_profile_pic p=new User_profile_pic();
		USER_INFO u=new USER_INFO();
		HttpSession session =request.getSession(false);
		String email=(String)session.getAttribute("email");
		User_insert_hibernate h=new User_insert_hibernate();
		String q="from USER_INFO where email='"+ email+"'";
		u=h.UserLogin(q);
		//HALAMB\\upload_images\\Default\\unknown.jpg
		p.setLink("HALAMB\\upload_images\\Default\\unknown.jpg");
		//p.setLink("HALAMB\\upload_images\\Default\\unknown.jpg");
		p.setUser_id(u.getUser_id());
		p.setFormate("image/jpeg");
		p.setData_size(132);
		 Date upload_date = new Date();
 	   p.setUpload_date(upload_date);

 	   //OBJECT FOR PRIVACY//
 	  USER_EXTRA_INFO ux =new USER_EXTRA_INFO();
 		Privacy pri=new Privacy();
 		pri.setFriend_request_access(1);
 		pri.setFriends_list_access(1);
 		pri.setUpload_access(1);
 		pri.setContact_access(1);
 		pri.setWall_access(0);
 		pri.setUser_id(u.getUser_id());
 		
 		ux.setContact_info("");
 		ux.setWebsite("");
 		ux.setInterests("");
 		ux.setAbout_me("");
 		ux.setSeeking("");
 		ux.setRelationship("");
 		ux.setKids("");
 		ux.setReligion("");
 		ux.setEducation("");
 		ux.setEthnicity("");
 		ux.setWeight_text("0");
 		ux.setHeight_text("0");
 		ux.setBody_unit("EU");
 	   
 	   ux.setUser_id(u.getUser_id());
 	   
 	   
		//Setting Profile PIC DATA
 	   AnnotationConfiguration config=new AnnotationConfiguration();
 	   
		config.addAnnotatedClass(IMAGE_DATA.class);
		config.configure("hibernate.cfg.xml");
		SessionFactory factory1=config.buildSessionFactory();
		Session session21=factory1.getCurrentSession();
		
		
		session21.beginTransaction();
		System.out.println("varification");
		session21.save(p);
		session21.save(pri);
		session21.save(ux);
		session21.getTransaction().commit();
		System.out.println("varification");
		getServletContext().getRequestDispatcher("/email_verification.jsp").forward(request, response);
		
	}

}
