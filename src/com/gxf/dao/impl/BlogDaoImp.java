package com.gxf.dao.impl;

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
		//�������� 
		session.beginTransaction();
		
		//���沩��
		session.save(blog);
		
		//�ύ����͹ر�session
		session.getTransaction().commit();
		session.close();
	}

}
