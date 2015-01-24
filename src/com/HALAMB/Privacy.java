package com.HALAMB;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



@Entity
public class Privacy {

	private int p_id;
	private int user_id;
	private int friend_request_access;
	private int friends_list_access;
	private int upload_access;
	private int contact_access;
	private int wall_access;
	public int getWall_access() {
		return wall_access;
	}
	public void setWall_access(int wall_access) {
		this.wall_access = wall_access;
	}
	@Id
	@GeneratedValue
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getFriend_request_access() {
		return friend_request_access;
	}
	public void setFriend_request_access(int friend_request_access) {
		this.friend_request_access = friend_request_access;
	}
	public int getFriends_list_access() {
		return friends_list_access;
	}
	public void setFriends_list_access(int friends_list_access) {
		this.friends_list_access = friends_list_access;
	}
	public int getUpload_access() {
		return upload_access;
	}
	public void setUpload_access(int upload_access) {
		this.upload_access = upload_access;
	}
	public int getContact_access() {
		return contact_access;
	}
	public void setContact_access(int contact_access) {
		this.contact_access = contact_access;
	}
	
	
	
}
