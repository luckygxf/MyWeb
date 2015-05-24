package com.gxf.beans;

import java.util.Set;

/**
 * ²©¿Í±êÇ©
 * @author Administrator
 *
 */
public class Tag {
	private int id;
	private String content;
	private Set<Blog> blogs;
	
	public Tag(String content) {
		this.content = content;
	}
	public Tag(){
		
	}
	
	public int getId() {
		return id;
	}
	public Set<Blog> getBlogs() {
		return blogs;
	}
	public void setBlogs(Set<Blog> blogs) {
		this.blogs = blogs;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
