package com.gxf.beans;

import java.util.Set;

/**
 * ≤©øÕ¿‡–Õ
 * @author Administrator
 *
 */
public class BlogType {
	private int id;
	private String name;
	private Set<Blog> blogs;
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
	public Set<Blog> getBlogs() {
		return blogs;
	}
	public void setBlogs(Set<Blog> blogs) {
		this.blogs = blogs;
	}
	
	
	
}
