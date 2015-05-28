package com.gxf.dao;

import java.util.List;

import com.gxf.beans.Photo;
import com.gxf.beans.PhotoAlbum;

/**
 * ��Ƭ���ݿ������
 * @author Administrator
 *
 */
public interface PhotoDao {
	
	
	
	/**
	 * �����ݿ����������
	 * @param photo
	 */
	public void addPhoto(Photo photo);
	
	/**
	 * ����id��ѯ��Ƭ��Ϣ
	 * @param id
	 * @return
	 */
	public Photo queryPhotoById(int id);
	
	/**
	 * ��ָ���п�ʼ��ѯ
	 * @param startIndex
	 * @param size
	 * @return
	 */
	public List<Photo> queryPhotoByStartIndexAndSize(PhotoAlbum photoAlbum, int startIndex, int size);
	
	/**
	 * ��ѯ��Ƭ����
	 * @return
	 */
	public int queryPhotoCount();
	
	/**
	 * ��ѯ��һ��ͼƬ
	 * @param photoId
	 * @return
	 */
	public Photo queryNextPhoto(int photoId);
	
}
