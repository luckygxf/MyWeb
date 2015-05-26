package com.gxf.beans;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.gxf.util.Util;

/**
 * 博客评论
 * @author Administrator
 *
 */
public class Comment {
	private int id;
	private String personName;
	private String personEmail;
	private String content;
	private Blog blog;
	private Timestamp publishTime;
	private Util util = new Util();
	
	public Comment(){
		//评论时间为当前系统时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		String curDateStr = df.format(date);
		publishTime = Timestamp.valueOf(curDateStr);
	}
	
	public Timestamp getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Timestamp publishTime) {
		this.publishTime = publishTime;
	}
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPersonName() {
		return personName;
	}
	public void setPersonName(String personName) {
		this.personName = personName;
	}
	public String getPersonEmail() {
		return personEmail;
	}
	public void setPersonEmail(String personEmail) {
		this.personEmail = personEmail;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
