package com.gxf.beans;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

/**
 * 相册对应的bean
 * @author Administrator
 *
 */
public class PhotoAlbum {
	private int id;
	private String name;
	private Timestamp createTime;
	private String backgroundPhotoPath;
	private Set<Photo> photos;
	
	public PhotoAlbum(){
		//生成相册创建时间
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		String dateStr = sd.format(date);
		createTime = Timestamp.valueOf(dateStr);
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public Set<Photo> getPhotos() {
		return photos;
	}

	public void setPhotos(Set<Photo> photos) {
		this.photos = photos;
	}

	public String getBackgroundPhotoPath() {
		return backgroundPhotoPath;
	}

	public void setBackgroundPhotoPath(String backgroundPhotoPath) {
		this.backgroundPhotoPath = backgroundPhotoPath;
	}
	
}
