package com.webmedia.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Favorate_video_List {
	private int favorate_vieod_id;
	private int f_id;
	private int user_id;
	private int Image_Id;
	@Id
	@GeneratedValue
	public int getFavorate_vieod_id() {
		return favorate_vieod_id;
	}
	public void setFavorate_vieod_id(int favorate_vieod_id) {
		this.favorate_vieod_id = favorate_vieod_id;
	}
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
	
	public int getImage_Id() {
		return Image_Id;
	}
	public void setImage_Id(int image_Id) {
		Image_Id = image_Id;
	}

}
