package com.gxf.photo;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.gxf.util.PhotoAlbumInfo;
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
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//��Ḹ�ļ���
	private final String PHOTO_DIRECTION = "photos";
	//�����Ϣ
	private List<PhotoAlbumInfo> listOfPhotoAlbumInfo = new ArrayList<PhotoAlbumInfo>();
	
	
	/**
	 * ��ȡ���е����
	 * @return
	 */
	public String getAllPhotos(){
		//��ȡ���·��						
		//1.��ȡ��ǰ��Ŀ·��
		//2.��ȡ���·��
		ActionContext ac = ActionContext.getContext();
		ServletContext sc = (ServletContext) ac.get(ServletActionContext.SERVLET_CONTEXT);
	
		String curProjectPath = sc.getRealPath("/");		
		String photoPath = curProjectPath +  PHOTO_DIRECTION;
		
		File photoFile = new File(photoPath);
		File photoFiles[] = photoFile.listFiles();
		//��������ַŵ�File������
		for(int i = 0; i < photoFiles.length; i++)
		{
			//��ȡ�����Ϣ
			File photos[] = photoFiles[i].listFiles(new PhotoNameFilter());
			PhotoAlbumInfo photoAlbumInfo = new PhotoAlbumInfo();
			photoAlbumInfo.setBackImagePath("/MyWeb/photos/" + photoFiles[i].getName() + "/" + photos[0].getName());
			photoAlbumInfo.setAmountOfPhoto(photos.length);
			photoAlbumInfo.setName(photoFiles[i].getName());
			
			listOfPhotoAlbumInfo.add(photoAlbumInfo);
		}
		
		
		return SUCCESS;
	}
	public List<PhotoAlbumInfo> getListOfPhotoAlbumInfo() {
		return listOfPhotoAlbumInfo;
	}

	public void setListOfPhotoAlbumInfo(List<PhotoAlbumInfo> listOfPhotoAlbumInfo) {
		this.listOfPhotoAlbumInfo = listOfPhotoAlbumInfo;
	}
		


}
