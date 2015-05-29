package com.gxf.dao;

import java.util.List;

import com.gxf.beans.Photo;
import com.gxf.beans.PhotoAlbum;

/**
 * 相片数据库访问类
 * @author Administrator
 *
 */
public interface PhotoDao {
	
	
	
	/**
	 * 向数据库中添加数据
	 * @param photo
	 */
	public void addPhoto(Photo photo);
	
	/**
	 * 根据id查询相片信息
	 * @param id
	 * @return
	 */
	public Photo queryPhotoById(int id);
	
	/**
	 * 从指定行开始查询
	 * @param startIndex
	 * @param size
	 * @return
	 */
	public List<Photo> queryPhotoByUploadTimeAndSize(PhotoAlbum photoAlbum, Photo photo, int size);
	
	/**
	 * 查询照片总数
	 * @return
	 */
	public int queryPhotoCount();
	
	/**
	 * 查询下一张图片
	 * @param photoId
	 * @return
	 */
	public Photo queryNextPhoto(PhotoAlbum photoAlbum, Photo photo);
	
}
