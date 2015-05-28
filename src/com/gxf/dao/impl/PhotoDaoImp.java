package com.gxf.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.gxf.beans.Photo;
import com.gxf.beans.PhotoAlbum;
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

	/* (non-Javadoc)
	 * @see com.gxf.dao.PhotoDao#queryPhotoById(int)
	 */
	@Override
	public Photo queryPhotoById(int id) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		Photo result = (Photo) session.get(Photo.class, id);
		
		
		session.getTransaction().commit();
		session.close();
		
		return result;
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.PhotoDao#queryPhotoByStartIndexAndSize(int, int)
	 */
	@Override
	public List<Photo> queryPhotoByStartIndexAndSize(PhotoAlbum photoAlbum, int startIndex, int size) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		String sql = "select * from photo where albumId = ? limit ?, ?";
		SQLQuery sqlQuery = session.createSQLQuery(sql);
		sqlQuery.setInteger(0, photoAlbum.getId());
		sqlQuery.setInteger(1, startIndex);
		sqlQuery.setInteger(2, size);
		
		sqlQuery.addEntity(Photo.class);
		
		List<Photo> listOfPhoto = sqlQuery.list();
		
		session.getTransaction().commit();
		session.close();
		
		return listOfPhoto;		
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.PhotoDao#queryPhotoCount()
	 */
	@Override
	public int queryPhotoCount() {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		String hql = "select count(*) from photo";
		Query query = session.createQuery(hql);
		int result = (Integer) query.uniqueResult();
		
		session.getTransaction().commit();
		session.close();
		
		return result;
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.PhotoDao#queryNextPhoto(com.gxf.beans.Photo)
	 */
	@Override
	public Photo queryNextPhoto(int photoId) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		
		String sql = "select * from photo where id >= ? limit 1";
		SQLQuery sqlQuery = session.createSQLQuery(sql);
		sqlQuery.setInteger(0, photoId);
		sqlQuery.addEntity(Photo.class);
		
		Photo result = (Photo) sqlQuery.list().get(0);
		
		session.getTransaction().commit();
		session.close();
		
		return result;
	}
	
	

}
