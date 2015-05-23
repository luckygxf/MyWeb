package com.gxf.blog;

import java.util.List;

import com.gxf.beans.Blog;
import com.gxf.dao.BlogDao;
import com.gxf.dao.impl.BlogDaoImp;
import com.opensymphony.xwork2.ActionSupport;

public class BlogAction extends ActionSupport{
	
	//数据库访问类
	private BlogDao blogDao = new BlogDaoImp();
	private List<Blog> listOfBlog;
	
	/**
	 * 获取所有的博客
	 * @return
	 */
	public String getAllBlogs(){
		listOfBlog = blogDao.queryAllBlog();	
		
		return SUCCESS;
	}

	public List<Blog> getListOfBlog() {
		return listOfBlog;
	}

	public void setListOfBlog(List<Blog> listOfBlog) {
		this.listOfBlog = listOfBlog;
	}
	
}
