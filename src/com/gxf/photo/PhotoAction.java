package com.gxf.photo;

import java.io.File;
import java.util.List;

import com.gxf.util.Util;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 照片对应的action 
 * @author Administrator
 *
 */
public class PhotoAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<String> listOfPhotoName;								//照片名字集合		
	private static Util util = new Util();
	
	/**
	 * 获取所有的相册
	 * @return
	 */
	public String getAllPhotos(){
		//获取相册路径
		String photoPath = util.getCurrentProjectPath() + File.separator + "MyWeb" + File.separator + "photos";
		System.out.println("photoPath = " + photoPath);
//		File photoFile = new File(photoPath);
//		File photoFiles[] = photoFile.listFiles();
//		//将相册名字放到File数组中
//		for(int i = 0; i < photoFiles.length; i++)
//			listOfPhotoName.add(photoFiles[i].getName());
		
		
		return SUCCESS;
	}

	public List<String> getListOfPhotoName() {
		return listOfPhotoName;
	}

	public void setListOfPhotoName(List<String> listOfPhotoName) {
		this.listOfPhotoName = listOfPhotoName;
	}
		
	public static void main(String args[]){
//		System.out.println(new Util().getCurrentProjectPath());
		System.out.println(util.getCurrentProjectPath());
	}
}
