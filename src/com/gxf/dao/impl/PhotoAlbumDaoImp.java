package com.gxf.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.gxf.beans.PhotoAlbum;
import com.gxf.dao.PhotoAlbumDao;

/**
 * 相册数据库访问类
 * @author Administrator
 *
 */
public class PhotoAlbumDaoImp implements PhotoAlbumDao {

	private BaseDao baseDao = new BaseDao();
	
	/* (non-Javadoc)
	 * @see com.gxf.dao.PhotoAlbumDao#queryPhotoAlbum(int)
	 */
	@Override
	public PhotoAlbum queryPhotoAlbum(int id) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		
		PhotoAlbum result = (PhotoAlbum) session.get(PhotoAlbum.class, id);
		
		session.getTransaction().commit();
		session.close();
		
		return result;
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.PhotoAlbumDao#queryAllPhotoAlbum()
	 */
	@Override
	public List<PhotoAlbum> queryAllPhotoAlbum() {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		
		String hql = "from PhotoAlbum";
		Query query = session.createQuery(hql);
		List<PhotoAlbum> listOfPhotoAlbum = query.list();
		
		session.getTransaction().commit();
		session.close();
		
		return listOfPhotoAlbum;
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.PhotoAlbumDao#addPhotoAlbum(com.gxf.beans.PhotoAlbum)
	 */
	@Override
	public void addPhotoAlbum(PhotoAlbum photoAlbum) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		session.save(photoAlbum);
		
		session.getTransaction().commit();
		session.close();
	}

	/* (non-Javadoc)
	 * @see com.gxf.dao.PhotoAlbumDao#deletePhotoAlbum(int)
	 */
	@Override
	public void deletePhotoAlbum(int id) {
		Session session = baseDao.getSession();
		
		session.beginTransaction();
		PhotoAlbum temp = (PhotoAlbum) session.get(PhotoAlbum.class, id);
		session.delete(temp);
		
		session.getTransaction().commit();
		session.close();
		
	}

}
