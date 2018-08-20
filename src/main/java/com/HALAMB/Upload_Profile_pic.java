package com.HALAMB;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.webmedia.model.USER_INFO;
import com.webmedia.model.User_profile_pic;
import com.webmedia.services.DBService;

@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)   // 50MB
/**
 * Servlet implementation class Upload_Profile_pic
 */
public class Upload_Profile_pic extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Upload_Profile_pic() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */


	String session1,session2;

	//****************FOLDER FOR USER*********************//
	String folder;
	int y;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  

		response.setContentType("text/html");  

		PrintWriter out = response.getWriter();

		User_profile_pic i=new User_profile_pic();

		SessionFactory factory=DBService.getFacotorySession();

		HttpSession session=request.getSession(false);

		boolean pass=false;

		String delete_file="";

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

			USER_INFO u=new USER_INFO();
			String queryString="from USER_INFO where email='"+session1+"'";
			User_insert_hibernate s=new User_insert_hibernate();
			u=s.UserLogin(queryString);
			System.out.println("Your pass word is"+u.getPass());
			folder =u.getUser_id()+"."+u.getUser_name()+File.separator+"profile_pic";

			//***************CREATING DIRECOTORY*****************//

			String s1=getServletContext().getRealPath("")+File.separator+"upload_images"+File.separator +u.getUser_id()+"."+u.getUser_name();
			File file1 = new File(s1);

			String s2=getServletContext().getRealPath("")+File.separator+"upload_images"+File.separator +folder;
			File file2 = new File(s2);
			String REAL_PATH;
			System.out.println("PATH DURING CREATING "+s1);
			if (!file1.exists())
			{
				if (file1.mkdir()) {
					System.out.println("Directory is created!");
				}
				else {
					System.out.println("Failed to create directory!");
				}
			}

			if (!file2.exists())
			{
				if (file2.mkdir()) {
					System.out.println("Directory is created!");
				}
				else {
					System.out.println("Failed to create directory!");
				}
			}



			//check if already exist
			queryString="from User_profile_pic where user_id='"+u.getUser_id()+"'";

			try
			{//	
				Session session12=factory.getCurrentSession();
				session12.beginTransaction();

				Query q=(session12).createQuery(queryString);
				q.setMaxResults(1);
				//List user=q.list();

				@SuppressWarnings("unchecked")
				List<User_profile_pic> user=q.list();

				System.out.println("hello the size is:"+user.size());
				if(user.size()==0 || user==null)
				{
					System.out.println("first time upload");
					pass=true;

				}
				else
				{
					for(User_profile_pic u1:user)
					{
						System.out.println("your Image Formate is"+u1.getFormate());
						System.out.println("your Image SIZE  is"+u1.getData_size()+"\n\n");

						i=u1;
						String i2=i.getLink().substring(7);
						delete_file=getServletContext().getRealPath("")+File.separator+i2;

					}
				}
				session12.getTransaction().commit();

			}
			catch(Exception e)
			{

				System.out.println("Error  due to "+e);
			}



			boolean isMultipart = ServletFileUpload.isMultipartContent(request);

			System.out.println("request: "+request);

			if (!isMultipart) {
				System.out.println("File Not Uploaded");
			}
			else              {

				FileItemFactory factory1 = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(factory1);
				List<FileItem> fileItems = null;

				try {

					fileItems = upload.parseRequest(request);
					System.out.println("fileItems: "+fileItems);
				}
				catch (FileUploadException e) {
					e.printStackTrace();
				} 

				try
				{

					// List<FileItem> fileItemsList = upload.parseRequest(request);
					Iterator<FileItem> fileItemsIterator = fileItems.iterator();
					while(fileItemsIterator.hasNext()){
						FileItem fileItem = fileItemsIterator.next();
						System.out.println("FieldName="+fileItem.getFieldName());
						System.out.println("FileName="+fileItem.getName());
						System.out.println("ContentType="+fileItem.getContentType());
						System.out.println("Size in bytes="+fileItem.getSize());

						/***********************************SETTING IN IMAGE_DATA****************/

						if(fileItem.getName()!=null)
						{
							i.setData_size(fileItem.getSize());

							i.setUser_id(u.getUser_id());


							//set Date
							Date upload_date = new Date();
							i.setUpload_date(upload_date);

							//set formate
							i.setFormate(fileItem.getContentType());

							File file = new File(getServletContext().getRealPath("")+File.separator+"upload_images"+File.separator +folder+File.separator+fileItem.getName());
							System.out.println("File  Path at server="+getServletContext().getRealPath("")+File.separator+"upload_images"+File.separator +folder+File.separator);

							System.out.println("Absolute Path at server="+file.getAbsolutePath());

							REAL_PATH="HALAMB"+File.separator+"upload_images"+File.separator +folder+File.separator+fileItem.getName();
							System.out.println("THIS IS REAL PATH STORED IN DATABASE:   "+REAL_PATH);

							i.setLink(REAL_PATH);

							Session session21=factory.getCurrentSession();


							session21.beginTransaction();

							if(pass==true)
							{
								session21.save(i);
								System.out.println("save");
							}
							else if(pass==false)
							{
								session21.update(i);
							}
							session21.getTransaction().commit();




							fileItem.write(file);
							getServletContext().getRequestDispatcher("/profile_pic.jsp").forward(request, response);
						}
						else
						{
							System.out.println("FALSE ENJOYING");
						}
						out.write("File "+fileItem.getName()+ " uploaded successfully.");
						out.write("<br>");
						out.write("<a href=\"UploadDownloadFileServlet?fileName="+fileItem.getName()+"\">Download "+fileItem.getName()+"</a>");


						//*****************SAVING**********************//

					}}
				catch(Exception e){}




				// Parse the request to get file items.

			}	      

			// Process the uploaded file items



		}  

	}

}
