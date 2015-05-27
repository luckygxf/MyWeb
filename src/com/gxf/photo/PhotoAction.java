package com.gxf.photo;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.gxf.beans.PhotoAlbum;
import com.gxf.dao.PhotoAlbumDao;
import com.gxf.dao.impl.PhotoAlbumDaoImp;
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
	
	
	/**
	 * ��ȡ���е����
	 * @return
	 */
	public String getAllPhotos(){
		//�����ݿ��л�ȡ�����Ϣ
		this.listOfPhotoAlbum = photoAlbumDao.queryAllPhotoAlbum();
		
		
		return SUCCESS;
	}
	
	/**
	 * ��ѯ��Ƭ�б�
	 * @return
	 */
	public String queryPhotoList(){
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
	
	
		


}
