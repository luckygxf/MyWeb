package com.gxf.dao.impl;

import org.hibernate.Session;

import com.gxf.beans.BlogType;
import com.gxf.dao.BlogTypeDao;

public class BlogTypeDaoImp implements BlogTypeDao {
	
	private BaseDao baseDao = new BaseDao();
	
	/* (non-Javadoc)
	 * @see com.gxf.dao.BlogTypeDao#addBlogType(com.gxf.beans.BlogType)
	 */
	@Override
	public void addBlogType(BlogType blogType) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		session.save(blogType);
		
		session.getTransaction().commit();
		
		session.close();		
	}

}
