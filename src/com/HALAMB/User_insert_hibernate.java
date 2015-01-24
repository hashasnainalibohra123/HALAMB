package com.HALAMB;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import com.HALAMB.USER_INFO;



public class User_insert_hibernate {
	
	AnnotationConfiguration config=new AnnotationConfiguration();
	SessionFactory factory;
public User_insert_hibernate()
{
	config.addAnnotatedClass(USER_INFO.class);
	config.addAnnotatedClass(IMAGE_DATA.class);
	config.addAnnotatedClass(User_profile_pic.class);
	config.addAnnotatedClass(PROFILE_COMMENT_TABLE.class);
	config.addAnnotatedClass(Privacy.class);
	config.addAnnotatedClass(USER_EXTRA_INFO.class);

	config.addAnnotatedClass(USER_LANGUAGE.class);
	
	config.configure("hibernate.cfg.xml");
	 factory=config.buildSessionFactory();
	
}
	
	//config.addAnnotatedClass();
	//new SchemaExport(config).create(true,true);
	
public void FriendRequestInsert(FriendCount f){
	
	//	new SchemaExport(config).create(true,true);
		
		Session session=factory.getCurrentSession();
		
		
		session.beginTransaction();
		
		
		
		
	session.save(f);
	session.getTransaction().commit();
	
		
	}
public void UserSignUp(USER_INFO u){
		
	//	new SchemaExport(config).create(true,true);
		
		Session session=factory.getCurrentSession();
		
		
		session.beginTransaction();
		
		/*AnnotationConfiguration config=new AnnotationConfiguration();
		//config.addAnnotatedClass();
		config.configure("hibernate.cfg.xml");
		new SchemaExport(config).create(true,true);
		SessionFactory factory=config.buildSessionFactory();
		Session session=factory.getCurrentSession();
		session.beginTransaction();*/
		
		
	session.save(u);
	session.getTransaction().commit();
	
		
	}
	public void UserUpdateUp(USER_INFO u){
		
		//	new SchemaExport(config).create(true,true);
			
			Session session=factory.getCurrentSession();
			
			
			session.beginTransaction();
			
			/*AnnotationConfiguration config=new AnnotationConfiguration();
			//config.addAnnotatedClass();
			config.configure("hibernate.cfg.xml");
			new SchemaExport(config).create(true,true);
			SessionFactory factory=config.buildSessionFactory();
			Session session=factory.getCurrentSession();
			session.beginTransaction();*/
			
			
		session.update(u);
		session.getTransaction().commit();
		
			
		}
	public void UserLogedUp(USER_INFO u){
		
		//	new SchemaExport(config).create(true,true);
			
			Session session=factory.getCurrentSession();
			
			
			session.beginTransaction();
			
			/*AnnotationConfiguration config=new AnnotationConfiguration();
			//config.addAnnotatedClass();
			config.configure("hibernate.cfg.xml");
			new SchemaExport(config).create(true,true);
			SessionFactory factory=config.buildSessionFactory();
			Session session=factory.getCurrentSession();
			session.beginTransaction();*/
			
			
		session.update(u);
		
		session.getTransaction().commit();
		
			
		}
public void UserUploadProfilePic(User_profile_pic i){
		
		//	new SchemaExport(config).create(true,true);
			
			Session session=factory.getCurrentSession();
			
			
			session.beginTransaction();
			
			/*AnnotationConfiguration config=new AnnotationConfiguration();
			//config.addAnnotatedClass();
			config.configure("hibernate.cfg.xml");
			new SchemaExport(config).create(true,true);
			SessionFactory factory=config.buildSessionFactory();
			Session session=factory.getCurrentSession();
			session.beginTransaction();*/
			
			
		session.save(i);
		session.getTransaction().commit();
		
			
		}
	
	public void UserUpload(IMAGE_DATA i){
		
		//	new SchemaExport(config).create(true,true);
			
			Session session=factory.getCurrentSession();
			
			
			session.beginTransaction();
			
			/*AnnotationConfiguration config=new AnnotationConfiguration();
			//config.addAnnotatedClass();
			config.configure("hibernate.cfg.xml");
			new SchemaExport(config).create(true,true);
			SessionFactory factory=config.buildSessionFactory();
			Session session=factory.getCurrentSession();
			session.beginTransaction();*/
			
			
		session.save(i);
		session.getTransaction().commit();
		
			
		}
	
	
	@SuppressWarnings("unchecked")
	public USER_INFO UserLogin(String  u){
	
		USER_INFO u2=new USER_INFO();
		try
		{//	
	
			Session session=factory.getCurrentSession();
		session.beginTransaction();
			
			Query q=session.createQuery(u);
			q.setMaxResults(1);
			//List user=q.list();
			
			 List<USER_INFO> user=q.list();
		
		System.out.println("hello the size is:"+user.size());
		for(USER_INFO u1:user)
		{
			System.out.println("yourzxczxvczx email is"+u1.getEmail());
			System.out.println("your PASSWORD is"+u1.getPass()+"\n\n");
			
			u2=u1;
		}
		session.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			
			System.out.println("Error  due to "+e);
		}
		return u2;
		}
	
	@SuppressWarnings("unchecked")
	public IMAGE_DATA Getting_Object(String  u){
	
	IMAGE_DATA u2=new IMAGE_DATA();
		try
		{//	
	
		Session session=factory.getCurrentSession();
		session.beginTransaction();
			
			Query q=session.createQuery(u);
			q.setMaxResults(1);
			//List user=q.list();
			
			 List<IMAGE_DATA> user=q.list();
		
		System.out.println("hello the size is:"+user.size());
		for(IMAGE_DATA u1:user)
		{
			System.out.println("your Image Name is"+u1.getImage_name());
			System.out.println("your Image SIZE  is"+u1.getData_size()+"\n\n");
			
			u2=u1;
		}
		session.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			
			System.out.println("Error  due to "+e);
		}
		return u2;
		}
	
	public User_profile_pic Getting_Object_pro(String  u){
		
		User_profile_pic u2=new User_profile_pic();
			try
			{//	
		
			Session session=factory.getCurrentSession();
			session.beginTransaction();
				
				Query q=session.createQuery(u);
				q.setMaxResults(1);
				//List user=q.list();
				
				 @SuppressWarnings("unchecked")
				List<User_profile_pic> user=q.list();
			
			System.out.println("hello the size is:"+user.size());
			for(User_profile_pic u1:user)
			{
				System.out.println("your Image Formate is"+u1.getFormate());
				System.out.println("your Image SIZE  is"+u1.getData_size()+"\n\n");
				
				u2=u1;
			}
			session.getTransaction().commit();
			
			}
			catch(Exception e)
			{
				
				System.out.println("Error  due to "+e);
			}
			return u2;
			}
	
	
	
public USER_EXTRA_INFO Getting_USER_EXTRA_INFO(String  u){
		
		USER_EXTRA_INFO u2=new USER_EXTRA_INFO();
			try
			{//	
		
			Session session=factory.getCurrentSession();
			session.beginTransaction();
				
				Query q=session.createQuery(u);
				q.setMaxResults(1);
				//List user=q.list();
				
				 @SuppressWarnings("unchecked")
				List<USER_EXTRA_INFO> user=q.list();
			
		//	System.out.println("hello the size is:"+user.size());
			for(USER_EXTRA_INFO u1:user)
			{
				//System.out.println("your Image Formate is"+u1.getAbout_me());
				//System.out.println("your Image SIZE  is"+u1.getBody_unit()+"\n\n");
				
				u2=u1;
			}
			session.getTransaction().commit();
			
			}
			catch(Exception e)
			{
				
				System.out.println("Error  due to "+e);
			}
			return u2;
			}
	


public Privacy Getting_Privacy(String  u){
	
	Privacy u2=new Privacy();
		try
		{//	
	
		Session session=factory.getCurrentSession();
		session.beginTransaction();
			
			Query q=session.createQuery(u);
			q.setMaxResults(1);
			//List user=q.list();
			
			 @SuppressWarnings("unchecked")
			List<Privacy> user=q.list();
		
		//System.out.println("hello the size is:"+user.size());
		for(Privacy u1:user)
		{
		//	System.out.println("your Image Formate is"+u1.getFriend_request_access());
			//System.out.println("your Image SIZE  is"+u1.getFriends_list_access()+"\n\n");
			
			u2=u1;
		}
		session.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			
			System.out.println("Error  due to "+e);
		}
		return u2;
		}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ArrayList IMAGE_GET(String  u){
		ArrayList<IMAGE_DATA> user = null;
		try
		{//	
	
		Session session=factory.getCurrentSession();
		session.beginTransaction();
			
			Query q=session.createQuery(u);
			q.setMaxResults(4);
			//List user=q.list();
			
						user=(ArrayList<IMAGE_DATA>) q.list();
		System.out.println("hello the size is:"+user.size());
		
		if(user!=null)
		for(IMAGE_DATA u1:user)
		{
			System.out.println("YOUR IMAGE OF HIGEST RATE NAME   "+u1.getImage_name());
		}
		session.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			
			System.out.println("Error  due to "+e);
		}
		return user;
		}
	
	
}
