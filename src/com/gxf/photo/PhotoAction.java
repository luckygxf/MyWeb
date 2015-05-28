package com.gxf.photo;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.gxf.beans.Photo;
import com.gxf.beans.PhotoAlbum;
import com.gxf.dao.PhotoAlbumDao;
import com.gxf.dao.impl.PhotoAlbumDaoImp;
import com.gxf.util.Pager;
import com.gxf.util.PhotoNameFilter;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 照片对应的action 
 * @author Administrator
 *
 */
public class PhotoAction extends ActionSupport {
	
	/**
	 * 序列号，用于序列化和反序列化
	 */
	private static final long serialVersionUID = 1L;

	//相册父文件夹
	private final String PHOTO_DIRECTION = "photos";
	//相册信息
	private List<PhotoAlbum> listOfPhotoAlbum = new ArrayList<PhotoAlbum>();
	
	private PhotoAlbum photoAlbum;
	
	//数据库访问类
	private PhotoAlbumDao photoAlbumDao = new PhotoAlbumDaoImp();
	
	private int photoAlbumId;
	private Pager pager;
	private Photo curPhoto;
	
	/**
	 * 获取所有的相册
	 * @return
	 */
	public String getAllPhotoAlbum(){
		//从数据库中获取相册信息
		this.listOfPhotoAlbum = photoAlbumDao.queryAllPhotoAlbum();
		
		
		return SUCCESS;
	}
	
	/**
	 * 查询相片列表
	 * @return
	 */
	public String queryPhotoList(){
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbumId);
		return SUCCESS;
	}
	
	/**
	 * 查询相片详细信息
	 * @return
	 */
	public String queryPhotoDeatil(){
		
		return SUCCESS;		
	}
	
	public List<PhotoAlbum> getListOfPhotoAlbum() {
		return listOfPhotoAlbum;
	}

	public void setListOfPhotoAlbum(List<PhotoAlbum> listOfPhotoAlbum) {
		this.listOfPhotoAlbum = listOfPhotoAlbum;
	}

	public PhotoAlbum getPhotoAlbum() {
		return photoAlbum;
	}

	public void setPhotoAlbum(PhotoAlbum photoAlbum) {
		this.photoAlbum = photoAlbum;
	}

	public int getPhotoAlbumId() {
		return photoAlbumId;
	}

	public void setPhotoAlbumId(int photoAlbumId) {
		this.photoAlbumId = photoAlbumId;
	}

	public Pager getPager() {
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}

	public Photo getCurPhoto() {
		return curPhoto;
	}

	public void setCurPhoto(Photo curPhoto) {
		this.curPhoto = curPhoto;
	}		


}
