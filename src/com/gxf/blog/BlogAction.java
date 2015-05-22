package com.gxf.blog;

import com.opensymphony.xwork2.ActionSupport;

public class BlogAction extends ActionSupport{
	
	/**
	 * 获取所有的博客
	 * @return
	 */
	public String getAllBlogs(){
		return SUCCESS;
	}
}
