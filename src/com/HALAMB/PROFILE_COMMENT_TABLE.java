package com.HALAMB;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class PROFILE_COMMENT_TABLE  {
	private int C_id;
    private int user_id;
	private int commenter_id;
	public int getCommenter_id() {
		return commenter_id;
	}
	public void setCommenter_id(int commenter_id) {
		this.commenter_id = commenter_id;
	}
	private String comment;
	private Date comment_date;
	private int likes;
	
	@Id 
	@GeneratedValue
	public int getC_id() {
		return C_id;
	}
	public void setC_id(int c_id) {
		C_id = c_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	@Temporal(TemporalType.DATE)
	public Date getComment_date() {
		return comment_date;
	}
	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	

}
