<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="idCard">
		<div class="tabs">
			<%@ page
				import="com.webmedia.model.USER_INFO,com.HALAMB.User_insert_hibernate,com.webmedia.model.IMAGE_DATA, java.util.ArrayList,
 java.io.IOException,
 javax.imageio.ImageIO,java.util.Calendar,
 java.io.File,com.webmedia.model.User_profile_pic"%>
			<%
				String user = request.getParameter("friend_id");
				try {
					Thread.sleep(5000);
				} catch (Exception e) {
				}
				if (user.equals("abc")) {
			%>
			<font color="red"><strong>User ADSexists</strong></font>
			<%
				} else {
			%>
			<font color="green"><strong>User ss available</strong></font>
			<%
				}
			%>
			<%
				HttpSession session_T = request.getSession(false);
				String profile_id = (String) session_T.getAttribute("profile_id");
				String flag1 = (String) session_T.getAttribute("flag");

				User_insert_hibernate h;
				IMAGE_DATA i;
				USER_INFO u;
				User_profile_pic U_pic;

				String session1, session2;

				String folder;
				String friend_id = request.getParameter("friend_id");
				// Creates two calendars instances

				if (session_T == null) {

					getServletContext().getRequestDispatcher("/login.html").forward(request, response);
					destroy();

				} else {

					session1 = (String) session_T.getAttribute("email");
					session2 = (String) session_T.getAttribute("password");
					if (session1 == null && session2 == null) {
						getServletContext().getRequestDispatcher("/login.html").forward(request, response);
					}
					String queryString = "";
						queryString = "from USER_INFO where email='" + session1 + "'";

					h = new User_insert_hibernate();
					System.out.println("HELLLLLLO");
					u = h.UserLogin(queryString);
					System.out.println(u);
					Date d1 = new Date();
					Date d2 = u.getSignupdate();
					System.out.println("SignUpDate ="+u.getAge());
					// Set the date for both of the calendar instance
					U_pic = h.Getting_Object_pro("from User_profile_pic where user_id='" + u.getUser_id() + "'");
			%>

			<div class="tabs">

				<div id="tabAboutMe" class="tab">

					<%
						if (flag1 != null || !flag1.equals("")) {
								if (flag1.equals("false")) {
					%><div class="profile-actions">
						<a id="profile-edit" class="button iconBtn edit first" href="#">
							&nbsp;&nbsp;&nbsp; </a><a class="button iconBtn settings last"
							href="#"> &nbsp;&nbsp;&nbsp; </a>
					</div>
					<%
						}

							}
					%>

					<div class="column_left">
						<div id="profilePic">
							<img src=\ <%=U_pic.getLink()%> width="242" height="242"
								align="left" style="margin-right: 20px" />
							<div id="profilePicEdit">
								<a href="profile_pic.jsp">Change your profile thumb</a>
							</div>
						</div>
						<div id="tabVote"></div>


					</div>

					<div class="infos">
						<div class="column0" style="">
							<p>
								<strong>Signed up:</strong>
								<%=u.getSignupdate()%>
								(<%=(int) ((d1.getTime() - d2.getTime()) / (1000 * 60 * 60 * 24))%>
								days ago)
							</p>
							<p>
								<strong>Last activity:</strong> today
							</p>
							<p>
								<strong>Profile hits:</strong> 0
							</p>
							<p id="profile_info_sex">
								<strong>Gender:</strong><span><%=u.getSex()%></span>
							</p>
							<p id="profile_info_age">
								<strong>Age:</strong><span><%=u.getAge()%> years old</span>
							</p>
							<p id="profile_info_country">
								<strong>Country:</strong><span><%=u.getCountry()%></span>
							</p>
							<p id="profile_info_region">
								<strong>Region:</strong><span><%=u.getRegion()%></span>
							</p>
							<p id="profile_info_city">
								<strong>City:</strong><span><%=u.getCity()%></span>
							</p>
							<p id="profile_info_languages" style="display: none;">
								<strong>Languages:</strong><span></span>
							</p>
							<p id="profile_info_seeking" style="display: none;">
								<strong>Seeking:</strong><span></span>
							</p>
							<p id="profile_info_relationship" style="display: none;">
								<strong>Relationship:</strong><span></span>
							</p>
							<p id="profile_info_kids" style="display: none;">
								<strong>Kids:</strong><span></span>
							</p>
							<p id="profile_info_education" style="display: none;">
								<strong>Education:</strong><span></span>
							</p>
							<p id="profile_info_religion" style="display: none;">
								<strong>Religion:</strong><span></span>
							</p>
							<p id="profile_info_smocking" style="display: none;">
								<strong>Smoking:</strong><span></span>
							</p>
							<p id="profile_info_drinking" style="display: none;">
								<strong>Drinking:</strong><span></span>
							</p>
							<p id="profile_info_webcam" style="display: none;">
								<strong>Webcam:</strong><span></span>
							</p>
						</div>

						<div class="column1">
							<p id="profile_info_ethnicity" style="display: none;">
								<strong>Ethnicity:</strong><span></span>
							</p>
							<p id="profile_info_body" style="display: none;">
								<strong>Body:</strong><span></span>
							</p>
							<p id="profile_info_height" style="display: none;">
								<strong>Height:</strong><span></span>
							</p>
							<p id="profile_info_weight" style="display: none;">
								<strong>Weight:</strong><span></span>
							</p>
							<p id="profile_info_hair_length" style="display: none;">
								<strong>Hair length:</strong><span></span>
							</p>
							<p id="profile_info_hair_color" style="display: none;">
								<strong>Hair color:</strong><span></span>
							</p>
							<p id="profile_info_eyes_color" style="display: none;">
								<strong>Eyes color:</strong><span></span>
							</p>
							<p id="profile_info_website" style="display: none;">
								<strong>Website:</strong><span></span>
							</p>
							<p id="profile_info_infos_text" style="display: none;">
								<strong>Contact:</strong><span></span>
							</p>
							<p id="profile_info_tags" style="display: none;">
								<strong>Interests:</strong> <span> </span>
							</p>


						</div>

						<%
							if (u.getAboutme() != null) {
						%>
						<p id="profile_info_sex">
							<strong>About Me:</strong><span id="abt"><%=u.getAboutme()%></span>
						</p>
						<%
							} else {
						%>
						<p id="profile_info_sex">
							<strong>About Me:</strong><span><div id="abt"></div></span>
						</p>
						<%
							}
								if (flag1 != null || !flag1.equals("")) {
									if (flag1.equals("false")) {
						%>
						<p class="aboutme missing">
							<span class="value"></span> <span class="tip"> <strong>Tip:</strong>
								<span>Click on this box to write something about profile
									here. </span><br />
							</span> <span class="edit"> <textarea id="profile_aboutme"
									rows="6"></textarea> <br> <input type="button"
								value="Save" id="myBtn" onclick="displayDate();" />
							</span>
						</p>
						<%
							}
								}
						%>
					</div>

				</div>
			</div>

			<%
				}
			%>
		</div>
	</div>
</body>
</html>