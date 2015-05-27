package com.gxf.beans;

/**
 * 相片对应的bean
 * @author Administrator
 *
 */
public class Photo {
	private int id;
	private String name;
	private String comment;
	private PhotoAlbum photoAlbum;
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
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public PhotoAlbum getPhotoAlbum() {
		return photoAlbum;
	}
	public void setPhotoAlbum(PhotoAlbum photoAlbum) {
		this.photoAlbum = photoAlbum;
	}
	
}
