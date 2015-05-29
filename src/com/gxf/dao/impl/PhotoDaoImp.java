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
	public List<Photo> queryPhotoByUploadTimeAndSize(PhotoAlbum photoAlbum,Photo photo, int size) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		String sql = "select * from photo where albumId = ? and uploadTime>= ? order by uploadTime asc limit ?";
		SQLQuery sqlQuery = session.createSQLQuery(sql);
		sqlQuery.setInteger(0, photoAlbum.getId());
		sqlQuery.setDate(1, photo.getUploadTime());
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
	public Photo queryNextPhoto(PhotoAlbum photoAlbum, Photo photo) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		
//		String sql = "select * from photo where uploadTime > ? limit 1";
		String sql = "select * from photo where albumid = ? and timestampdiff(second, uploadTime, ?) < 0 limit 1";
		SQLQuery sqlQuery = session.createSQLQuery(sql);
		sqlQuery.setInteger(0, photoAlbum.getId());
		sqlQuery.setTimestamp(1, photo.getUploadTime());
		sqlQuery.addEntity(Photo.class);
		
		Photo result = null;
		List<Photo> listOfPhoto = sqlQuery.list();
		if(listOfPhoto != null && listOfPhoto.size() != 0)
			result = listOfPhoto.get(0);
		
		session.getTransaction().commit();
		session.close();
		
		return result;
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.PhotoDao#queryPrePhoto(com.gxf.beans.PhotoAlbum, com.gxf.beans.Photo)
	 */
	@Override
	public Photo queryPrePhoto(PhotoAlbum photoAlbum, Photo photo) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		
		String sql = "select * from photo where albumid = ? and timestampdiff(second, uploadTime, ?) > 0 order by uploadtime desc limit 1";
		SQLQuery sqlQuery = session.createSQLQuery(sql);
		sqlQuery.setInteger(0, photoAlbum.getId());
		sqlQuery.setTimestamp(1, photo.getUploadTime());
		sqlQuery.addEntity(Photo.class);
		
		Photo result = null;
		List<Photo> listOfPhoto = sqlQuery.list();
		if(listOfPhoto != null && listOfPhoto.size() != 0)
			result = listOfPhoto.get(0);
		
		session.getTransaction().commit();
		session.close();
		
		return result;
	}
	
	

}
