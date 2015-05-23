package com.gxf.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gxf.beans.Blog;
import com.gxf.dao.BlogDao;

public class BlogDaoImp implements BlogDao {
	
	private BaseDao baseDao = new BaseDao();

	/* (non-Javadoc)
	 * @see com.gxf.dao.BlogDao#addBlog(com.gxf.beans.Blog)
	 */
	@Override
	public void addBlog(Blog blog) {
		Session session = baseDao.getSession();
		//开启事务 
		session.beginTransaction();
		
		//保存博客
		session.save(blog);
		
		//提交事务和关闭session
		session.getTransaction().commit();
		session.close();
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.BlogDao#queryAllBlog()
	 */
	@Override
	public List<Blog> queryAllBlog() {
		List<Blog> listOfBlog = new ArrayList<Blog>();
		Session session = baseDao.getSession();
		session.beginTransaction();
		
		String hql = "from Blog";
		Query query = session.createQuery(hql);
		
		listOfBlog = query.list();
		
		session.getTransaction().commit();
		session.close();
		
		return listOfBlog;
	}

}
