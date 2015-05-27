package com.gxf.dao.impl;

import org.hibernate.Session;

import com.gxf.beans.Photo;
import com.gxf.dao.PhotoDao;

/**
 * 相片数据库访问类
 * @author Administrator
 *
 */
public class PhotoDaoImp implements PhotoDao {

	private BaseDao baseDao = new BaseDao();
	
	/* (non-Javadoc)
	 * @see com.gxf.dao.PhotoDao#addPhoto(com.gxf.beans.Photo)
	 */
	@Override
	public void addPhoto(Photo photo) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		
		session.save(photo);
		
		session.getTransaction().commit();
		session.close();
	}

}
