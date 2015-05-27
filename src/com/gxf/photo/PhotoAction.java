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
 * 照片对应的action 
 * @author Administrator
 *
 */
public class PhotoAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//相册父文件夹
	private final String PHOTO_DIRECTION = "photos";
	//相册信息
	private List<PhotoAlbumInfo> listOfPhotoAlbumInfo = new ArrayList<PhotoAlbumInfo>();
	
	
	/**
	 * 获取所有的相册
	 * @return
	 */
	public String getAllPhotos(){
		//获取相册路径						
		//1.获取当前项目路径
		//2.获取相册路径
		ActionContext ac = ActionContext.getContext();
		ServletContext sc = (ServletContext) ac.get(ServletActionContext.SERVLET_CONTEXT);
	
		String curProjectPath = sc.getRealPath("/");		
		String photoPath = curProjectPath +  PHOTO_DIRECTION;
		
		File photoFile = new File(photoPath);
		File photoFiles[] = photoFile.listFiles();
		//将相册名字放到File数组中
		for(int i = 0; i < photoFiles.length; i++)
		{
			//获取相册信息
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
