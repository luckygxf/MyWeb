package com.gxf.beans;

import java.sql.Timestamp;

/**
 * ×ÊÔ´
 * @author Administrator
 *
 */
public class Resource {
	private int id;
	private String name;
	private String language;
	private String downloadAddress;
	private String resourceComment;
	private String path;
	private Timestamp uploadTime;
	private ResourceType resourceTpye;
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
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public Timestamp getUploadTime() {
		return uploadTime;
	}
	public void setUploadTime(Timestamp uploadTime) {
		this.uploadTime = uploadTime;
	}
	public String getDownloadAddress() {
		return downloadAddress;
	}
	public void setDownloadAddress(String downloadAddress) {
		this.downloadAddress = downloadAddress;
	}
	public String getResourceComment() {
		return resourceComment;
	}
	public void setResourceComment(String resourceComment) {
		this.resourceComment = resourceComment;
	}
	public ResourceType getResourceTpye() {
		return resourceTpye;
	}
	public void setResourceTpye(ResourceType resourceTpye) {
		this.resourceTpye = resourceTpye;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
}
