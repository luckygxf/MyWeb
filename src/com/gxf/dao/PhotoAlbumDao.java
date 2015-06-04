package com.gxf.dao;

import java.util.List;

import com.gxf.beans.PhotoAlbum;

/**
 * 相册数据库访问类
 * @author Administrator
 *
 */
public interface PhotoAlbumDao {

	/**
	 * 根据相册Id查询相册
	 * @param id
	 * @return
	 */
	public PhotoAlbum queryPhotoAlbum(int id);
	
	/**
	 * 查询所有的相册信息
	 * @return
	 */
	public List<PhotoAlbum> queryAllPhotoAlbum();
	
	/**
	 * 添加相册信息
	 * @param photoAlbum
	 */
	public void addPhotoAlbum(PhotoAlbum photoAlbum);
	
	/**
	 * 根据相册id删除相册
	 * @param id
	 */
	public void deletePhotoAlbum(int id);
}
