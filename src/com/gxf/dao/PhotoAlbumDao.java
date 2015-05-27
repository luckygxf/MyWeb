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
}
