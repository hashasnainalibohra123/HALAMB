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
 * Servlet implementation class ManageFavrates
 */
public class ManageFavrates extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 String session1,session2;
	   
	   //****************FOLDER FOR USER*********************//
	   String folder;
	   int y;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String f_name=request.getParameter("name");
		String f_visi=request.getParameter("status");
		AnnotationConfiguration config=new AnnotationConfiguration();
		//config.addAnnotatedClass();
		config.addAnnotatedClass(Favorate_list.class);
		config.configure("hibernate.cfg.xml");
		//new SchemaExport(config).create(true,true);
		SessionFactory factory=config.buildSessionFactory();

		HttpSession session=request.getSession(false);
		
		
		
		boolean flag=false;

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
				Favorate_list f=new Favorate_list();
				
				USER_INFO u=new USER_INFO();
				String queryString="from USER_INFO where email='"+session1+"'";
				User_insert_hibernate s=new User_insert_hibernate();
				u=s.UserLogin(queryString);
				f.setUser_id(u.getUser_id());
				f.setVisibility(Integer.parseInt(f_visi));
				f.setFav_list_name(f_name);
				//........getting preEXistig object........
				
				queryString="from Favorate_list  where user_id='"+u.getUser_id()+"'";
				
				
				
				Session session123=factory.getCurrentSession();
				session123.beginTransaction();
				Query q=session123.createQuery(queryString);
				q.setMaxResults(1);
				//List user=q.list();
				
				List<Favorate_list> user=q.list();
			
			System.out.println("hello the size is:"+user.size());
			if(user.size()<0)
				session123.save(f);
			else
				
			{
				for(Favorate_list u1:user)
				{
					if(u1.getFav_list_name().equals(f_name))
					{
						flag=true;
					}
				}
				
				
				if(flag==false)
				{
					session123.save(f);
				}
				else
				{
					session.setAttribute("Exist",flag );
				}
				
			}	
				
				session123.getTransaction().commit();
				getServletContext().getRequestDispatcher("/favorate.jsp").forward(request, response);

				
				
				
				
				
				
		}
	
	}

}
