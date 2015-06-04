package com.gxf.dao;

import java.util.List;

import com.gxf.beans.PhotoAlbum;

/**
 * ������ݿ������
 * @author Administrator
 *
 */
public interface PhotoAlbumDao {

	/**
	 * �������Id��ѯ���
	 * @param id
	 * @return
	 */
	public PhotoAlbum queryPhotoAlbum(int id);
	
	/**
	 * ��ѯ���е������Ϣ
	 * @return
	 */
	public List<PhotoAlbum> queryAllPhotoAlbum();
	
	/**
	 * ��������Ϣ
	 * @param photoAlbum
	 */
	public void addPhotoAlbum(PhotoAlbum photoAlbum);
	
	/**
	 * �������idɾ�����
	 * @param id
	 */
	public void deletePhotoAlbum(int id);
}
