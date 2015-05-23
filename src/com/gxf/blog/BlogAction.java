package com.gxf.blog;

import java.util.List;

import com.gxf.beans.Blog;
import com.gxf.dao.BlogDao;
import com.gxf.dao.impl.BlogDaoImp;
import com.gxf.util.Pager;
import com.opensymphony.xwork2.ActionSupport;

public class BlogAction extends ActionSupport{
	
	//���ݿ������
	private BlogDao blogDao = new BlogDaoImp();
	private List<Blog> listOfBlog;
	private Pager pager;
	
	/**
	 * ��ȡ���еĲ���
	 * @return
	 */
	public String queryBlogs(){
		if(pager == null)
			pager = new Pager();
		
		if(listOfBlog == null)
			listOfBlog = blogDao.queryBlog(pager);	
		
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
	
}
