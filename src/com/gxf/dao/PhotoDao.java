package com.gxf.dao;

import com.gxf.beans.Photo;

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
}
