package com.gxf.blog;

import java.util.ArrayList;
import java.util.List;

import com.gxf.beans.Blog;
import com.gxf.dao.BlogDao;
import com.gxf.dao.impl.BlogDaoImp;
import com.gxf.util.Pager;
import com.opensymphony.xwork2.ActionSupport;

public class BlogAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//数据库访问类
	private BlogDao blogDao = new BlogDaoImp();
	private List<Blog> listOfBlog;
	private Pager pager;
	private Blog blog;
	private List<String> tags = new ArrayList<String>();	

	

	/**
	 * 获取所有的博客
	 * @return
	 */
	public String queryBlogs(){
		if(pager == null)
			pager = new Pager();
		
		if(listOfBlog == null)
			listOfBlog = blogDao.queryBlog(pager);	
		
		
		return SUCCESS;
	}
	
	/**
	 * 查询博客内容
	 * @return
	 */
	public String queryBlogDetail(){
		int blogId = blog.getId();
		blog = blogDao.queryBlogById(blogId);
		
		//处理标签
		String arrayOfTag[] = blog.getTags().split(" ");
		for(int i = 0; i < arrayOfTag.length; i++)
			tags.add(arrayOfTag[i]);
				
		return SUCCESS;
	}
	

	public List<Blog> getListOfBlog() {
		return listOfBlog;
	}

	public void setListOfBlog(List<Blog> listOfBlog) {
		this.listOfBlog = listOfBlog;
	}



	public Pager getPager() {
		return pager;
	}



	public void setPager(Pager pager) {
		this.pager = pager;
	}
	public Blog getBlog() {
		return blog;
	}

	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	
	public List<String> getTags() {
		return tags;
	}

	public void setTags(List<String> tags) {
		this.tags = tags;
	}
}
