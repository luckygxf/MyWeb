package com.gxf.photo;

import java.io.File;
import java.util.List;

import com.gxf.util.Util;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ��Ƭ��Ӧ��action 
 * @author Administrator
 *
 */
public class PhotoAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<String> listOfPhotoName;								//��Ƭ���ּ���		
	private static Util util = new Util();
	
	/**
	 * ��ȡ���е����
	 * @return
	 */
	public String getAllPhotos(){
		//��ȡ���·��
		String photoPath = util.getCurrentProjectPath() + File.separator + "MyWeb" + File.separator + "photos";
		System.out.println("photoPath = " + photoPath);
//		File photoFile = new File(photoPath);
//		File photoFiles[] = photoFile.listFiles();
//		//��������ַŵ�File������
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
