package com.gxf.dao.impl;

import java.util.List;

import org.hibernate.Query;
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

	/* (non-Javadoc)
	 * @see com.gxf.dao.BlogTypeDao#queryAllBlogType()
	 */
	@Override
	public List<BlogType> queryAllBlogType() {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		String hql = "from BlogType";
		Query query = session.createQuery(hql);
		List<BlogType> listOfBlogType = query.list();
		
		session.getTransaction().commit();
		session.close();
		
		return listOfBlogType;
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.BlogTypeDao#queryBlogById(int)
	 */
	@Override
	public BlogType queryBlogById(int id) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		BlogType blogType = (BlogType) session.get(BlogType.class, id);
		
		session.getTransaction().commit();
		session.close();
		
		return blogType;
	}
	
	/* (non-Javadoc)
	 * @see com.gxf.dao.BlogTypeDao#updateBlogType(com.gxf.beans.BlogType)
	 */
	@Override
	public void updateBlogType(BlogType blogType) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		session.update(blogType);
		
		session.getTransaction().commit();
		session.close();		
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.BlogTypeDao#deleteBlogTypeById(int)
	 */
	@Override
	public void deleteBlogTypeById(int id) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		BlogType blogType = (BlogType) session.get(BlogType.class, id);
		session.delete(blogType);
		
		session.getTransaction().commit();
		session.close();
		
	}
}
