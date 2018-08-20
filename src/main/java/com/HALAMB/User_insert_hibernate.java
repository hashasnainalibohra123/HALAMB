package com.HALAMB;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.webmedia.model.FriendCount;
import com.webmedia.model.IMAGE_DATA;
import com.webmedia.model.Privacy;
import com.webmedia.model.USER_EXTRA_INFO;
import com.webmedia.model.USER_INFO;
import com.webmedia.model.User_profile_pic;
import com.webmedia.services.DBService;



public class User_insert_hibernate {

	SessionFactory factory;
	
	public User_insert_hibernate()
	{
		factory = DBService.getFacotorySession();

	}

	public void FriendRequestInsert(FriendCount f){

		Session session=factory.getCurrentSession();

		session.beginTransaction();

		session.save(f);
		session.getTransaction().commit();


	}
	
	public void UserSignUp(USER_INFO u){

		Session session=factory.getCurrentSession();
		session.beginTransaction();
		session.save(u);
		session.getTransaction().commit();
	}
	
	public void UserUpdateUp(USER_INFO u){

		Session session=factory.getCurrentSession();


		session.beginTransaction();

		session.update(u);
		session.getTransaction().commit();


	}
	
	public void UserLogedUp(USER_INFO u){

		Session session=factory.getCurrentSession();


		session.beginTransaction();

		session.update(u);

		session.getTransaction().commit();


	}
	public void UserUploadProfilePic(User_profile_pic i){

		Session session=factory.getCurrentSession();
		session.beginTransaction();
		session.save(i);
		session.getTransaction().commit();


	}

	public void UserUpload(IMAGE_DATA i){

		Session session=factory.getCurrentSession();


		session.beginTransaction();

		session.save(i);
		session.getTransaction().commit();


	}


	@SuppressWarnings("unchecked")
	public USER_INFO UserLogin(String  u){

		USER_INFO u2=new USER_INFO();
		try
		{

			Session session=factory.getCurrentSession();
			session.beginTransaction();

			Query q=session.createQuery(u);
			q.setMaxResults(1);

			List<USER_INFO> user=q.list();

			for(USER_INFO u1:user)
			{
				u2=u1;
			}
			session.getTransaction().commit();
			session.close();

		}
		catch(Exception e)
		{

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

			List<IMAGE_DATA> user=q.list();

			for(IMAGE_DATA u1:user)
			{

				u2=u1;
			}
			session.getTransaction().commit();

		}
		catch(Exception e)
		{

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

			for(User_profile_pic u1:user)
			{
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

			@SuppressWarnings("unchecked")
			List<USER_EXTRA_INFO> user=q.list();

			for(USER_EXTRA_INFO u1:user)
			{
				u2=u1;
			}
			session.getTransaction().commit();

		}
		catch(Exception e)
		{

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

			@SuppressWarnings("unchecked")
			List<Privacy> user=q.list();

			for(Privacy u1:user)
			{
				u2=u1;
			}
			session.getTransaction().commit();

		}
		catch(Exception e)
		{
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
