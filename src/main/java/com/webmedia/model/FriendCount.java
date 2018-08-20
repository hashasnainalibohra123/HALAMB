


	package com.webmedia.model;

	import java.util.Date;

	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.Id;
	import javax.persistence.Temporal;
	import javax.persistence.TemporalType;

	@Entity
	public class FriendCount {
		private int f_id;
	    private int user_id;
	    private int friend_id;
		public int getFriend_id() {
			return friend_id;
		}
		public void setFriend_id(int friend_id) {
			this.friend_id = friend_id;
		}
		private Date request_date;
		@Id
		@GeneratedValue
		public int getF_id() {
			return f_id;
		}
		public void setF_id(int f_id) {
			this.f_id = f_id;
		}
		public int getUser_id() {
			return user_id;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		
		@Temporal(TemporalType.DATE)
		public Date getRequest_date() {
			return request_date;
		}
		public void setRequest_date(Date request_date) {
			this.request_date = request_date;
		}
	
		
		

	}


