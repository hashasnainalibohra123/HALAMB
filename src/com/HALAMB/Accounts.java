package com.HALAMB;

import java.io.IOException;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 * Servlet implementation class Accounts
 */
public class Accounts extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  String session1,session2;
	   
	   //****************FOLDER FOR USER*********************//
	   String folder;
	   int y;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);	// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String firstname =request.getParameter("firstname");
	System.out.println(firstname);
	String Birthdate =request.getParameter("Birthdate");
	System.out.println(Birthdate);
	String month =request.getParameter("month");
	System.out.println(month);
	String year =request.getParameter("year");
	System.out.println(year);
	String sex =request.getParameter("sex");
	System.out.println(sex);
	String pays_select =request.getParameter("pays_select");
	System.out.println(pays_select);
	String region =request.getParameter("region");
	System.out.println(region);
	String city =request.getParameter("city");
	System.out.println(city);
	String friend_request_access =request.getParameter("friend_request_access");
	System.out.println(friend_request_access);
	String friends_list_access =request.getParameter("friends_list_access");
	System.out.println(friends_list_access);
	String upload_access =request.getParameter("upload_access");
	System.out.println(upload_access);
	String contact_access =request.getParameter("contact_access");
	System.out.println(contact_access);
	String wall_access =request.getParameter("wall_access");
	System.out.println(wall_access);
	String blocked_countries =request.getParameter("blocked_countries");
	System.out.println(blocked_countries);
	String contact_infos =request.getParameter("contact_infos");
	System.out.println(contact_infos);
	String website =request.getParameter("website");
	System.out.println(website);
	String interests =request.getParameter("interests");
	System.out.println(interests);
	String about_me =request.getParameter("about_me");
	System.out.println(about_me);
	String languages[] =request.getParameterValues("languages[]");
	System.out.println(languages);
	String seeking =request.getParameter("seeking");
	System.out.println(seeking);
	String relationship =request.getParameter("relationship");
	System.out.println(relationship);
	String kids =request.getParameter("kids");
	System.out.println(kids);
	String religion =request.getParameter("religion");
	System.out.println(religion);
	String education =request.getParameter("education");
	System.out.println(education);
	String ethnicity =request.getParameter("ethnicity");
	System.out.println(ethnicity);
	String height_text =request.getParameter("height");
	System.out.println(height_text);

	String weight_text =request.getParameter("weight");
	System.out.println(weight_text);
	String body_unit =request.getParameter("body_unit");
	System.out.println(body_unit);
	
	
	
	AnnotationConfiguration config=new AnnotationConfiguration();
	config.addAnnotatedClass(USER_EXTRA_INFO.class);
	config.addAnnotatedClass(Privacy.class);
	config.addAnnotatedClass(USER_LANGUAGE.class);
	config.configure("hibernate.cfg.xml");
	//new SchemaExport(config).create(true,true);
	SessionFactory factory=config.buildSessionFactory();

	HttpSession session=request.getSession(false);
	
	
	

	if(session==null)

	{
			System.out.println("You have to login first");
			HttpSession session123=request.getSession();
			session123.setAttribute("from","upload" ); 
			getServletContext().getRequestDispatcher("/login.html").forward(request, response);
			destroy();
	}
	
	else
		
	{
			System.out.println("YOU S SESSION IS    ");
			session1=(String) session.getAttribute("email");
			session2=(String) session.getAttribute("password");
			HttpSession session123=request.getSession();
			session123.setAttribute("from","upload" ); 
			System.out.println("In the Upload Area "+session1+"   "+session2);

			if(session1==null &&  session2==null)
			{	
				System.out.println("In the Upload Area "+session1+"   "+session2);
				getServletContext().getRequestDispatcher("/login.html").forward(request, response);
				destroy();
			}
			else
			{
				y=9;
			}
	}

	if(y==9)

	{
			Privacy p=new Privacy();
			USER_EXTRA_INFO ux=new USER_EXTRA_INFO();
			USER_LANGUAGE ul=new USER_LANGUAGE();
			//user_language ul=new user_language();
			USER_INFO u=new USER_INFO();
			String queryString="from USER_INFO where email='"+session1+"'";
			User_insert_hibernate s=new User_insert_hibernate();
			u=s.UserLogin(queryString);
			
			
			//........getting preEXistig object........
			Session session12=factory.getCurrentSession();
			session12.beginTransaction();

			
			Query q=session12.createQuery("from USER_EXTRA_INFO where user_id='"+u.getUser_id()+"'");
			q.setMaxResults(1);
			@SuppressWarnings("unchecked")
			List<USER_EXTRA_INFO> user=q.list();
			
		//	System.out.println("hello the size is for USER_EXTRA_INFO:"+user.size());
			if(user.size()>0)
			
				{
				for(USER_EXTRA_INFO u1:user)
				{
					//System.out.println("your Image Formate is"+u1.getAbout_me());
					//System.out.println("your Image SIZE  is"+u1.getBody_unit()+"\n\n");
					
					ux=u1;
				}
				
					
				}
			else
				ux=new USER_EXTRA_INFO();
			
			q=session12.createQuery("from Privacy where user_id='"+u.getUser_id()+"'");
			q.setMaxResults(1);
			@SuppressWarnings("unchecked")
			List<Privacy> user1=q.list();
			
			//System.out.println("hello the size is:"+user.size());
			if(user1.size()>0)
			{
				for(Privacy u1:user1)
				{
				//	System.out.println("your Image Formate is"+u1.getFriend_request_access());
					//System.out.println("your Image SIZE  is"+u1.getFriends_list_access()+"\n\n");
					
					p=u1;
				}
				
					}
			else
				p=new Privacy();
			
			/////////.............for language................//
			
			 q=session12.createQuery("from USER_LANGUAGE where user_id='"+u.getUser_id()+"'");
			
			@SuppressWarnings("unchecked")
			List<USER_LANGUAGE> user2=q.list();
			System.out.println("hello the size is for USER_LANGUAGE:"+user2.size());
			if(user2.size()>0)
			
				{
				for(USER_LANGUAGE u1:user2)
				{
					
				session12.delete(u1);	
				}
				
					
				}
			else
				ul=new USER_LANGUAGE();
			
			
			
			
			if(friend_request_access!=null || friend_request_access=="")
			{
				int f=Integer.parseInt(friend_request_access);
				p.setFriend_request_access(f);
			}
			if(friends_list_access!=null || friends_list_access=="")
			{
				int f=Integer.parseInt(friends_list_access);
				p.setFriends_list_access(f);
			}
			if(upload_access!=null || upload_access=="")
			{
				int f=Integer.parseInt(upload_access);
				p.setUpload_access(f);
			}
			if(contact_access!=null || contact_access=="")
			{
				int f=Integer.parseInt(contact_access);
				p.setContact_access(f);
			}
			if(wall_access!=null || wall_access=="")
			{
				int f=Integer.parseInt(wall_access);
				p.setWall_access(f);
			}
			p.setUser_id(u.getUser_id());
			
			
			
			//..........settingUSerExtrA iNFO..............//
			ux.setUser_id(u.getUser_id());
			if(contact_infos!=null || contact_infos!="")
			{
				ux.setContact_info(contact_infos);
			}
			if(website!=null || website!="")
			{
				ux.setWebsite(website);
			}
			
			if(interests!=null || interests!="")
			{
				ux.setInterests(interests);
			}
			if(about_me!=null || about_me!="")
			{
				ux.setAbout_me(about_me);
			}
			if(seeking!=null || seeking!="")
			{
				ux.setSeeking(seeking);
			}
			
			if(relationship!=null || relationship!="")
			{
				ux.setRelationship(relationship);
			}
			if(kids!=null || kids!="")
			{
				ux.setKids(kids);
			}
			if(religion!=null || religion!="")
			{
				ux.setReligion(religion);
			}
			
			if(education!=null || education!="")
			{
				ux.setEducation(education);
			}
			
			if(ethnicity!=null || ethnicity!="")
			{
				ux.setEthnicity(ethnicity);
			}
			if(height_text!=null || height_text!="")
			{
				ux.setHeight_text(height_text);
			}
			if(weight_text!=null || weight_text!="")
			{
				ux.setWeight_text(weight_text);
			}
			
			if(body_unit!=null || body_unit!="")
			{
				ux.setBody_unit(body_unit);
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			

				if(user.size()>0)
				
					{
					
						session12.update(ux);
					}
				else
					session12.save(ux);
				
				if(user1.size()>0)
				{
					
					session12.update(p);
					}
				else
					session12.save(p);
			
				
				for(int k=0;k<languages.length;k++)
				{
					ul=new USER_LANGUAGE();
					ul.setLang(languages[k]);
					ul.setUser_id(u.getUser_id());
					
					
					session12.save(ul);
					
					
				}
					
			/*if(languages!=null)
			{
				for(int j=0;j<languages.length;j++)
				{
					ul.setLang(languages[j]);
					ul.setUser_id(u.getUser_id());
					session12.saveOrUpdate(ul);
				}
			}*/
			session12.getTransaction().commit();
			
			getServletContext().getRequestDispatcher("/Accounts.jsp").forward(request, response);
			
				
	
	
	
	
	
	
	
	
	
	
	
	}
	}
}
