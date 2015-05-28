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
 * ��Ƭ��Ӧ��action 
 * @author Administrator
 *
 */
public class PhotoAction extends ActionSupport {
	
	/**
	 * ���кţ��������л��ͷ����л�
	 */
	private static final long serialVersionUID = 1L;

	//��Ḹ�ļ���
	private final String PHOTO_DIRECTION = "photos";
	//�����Ϣ
	private List<PhotoAlbum> listOfPhotoAlbum = new ArrayList<PhotoAlbum>();
	
	private PhotoAlbum photoAlbum;
	
	//���ݿ������
	private PhotoAlbumDao photoAlbumDao = new PhotoAlbumDaoImp();
	
	private int photoAlbumId;
	private Pager pager;
	private Photo curPhoto;
	
	/**
	 * ��ȡ���е����
	 * @return
	 */
	public String getAllPhotoAlbum(){
		//�����ݿ��л�ȡ�����Ϣ
		this.listOfPhotoAlbum = photoAlbumDao.queryAllPhotoAlbum();
		
		
		return SUCCESS;
	}
	
	/**
	 * ��ѯ��Ƭ�б�
	 * @return
	 */
	public String queryPhotoList(){
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbumId);
		return SUCCESS;
	}
	
	/**
	 * ��ѯ��Ƭ��ϸ��Ϣ
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
