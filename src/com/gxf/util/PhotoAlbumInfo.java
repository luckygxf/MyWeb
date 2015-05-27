package com.gxf.util;

/**
 * 用于封装相册信息
 * @author Administrator
 *
 */
public class PhotoAlbumInfo {
	//相册背景图片路径、相册相片数量
	private String backImagePath;				//相册背景图片路径
	private int amountOfPhoto;					//相册相片数量
	private String name;						//相册名字
	
	public String getBackImagePath() {
		return backImagePath;
	}
	public void setBackImagePath(String backImagePath) {
		this.backImagePath = backImagePath;
	}
	public int getAmountOfPhoto() {
		return amountOfPhoto;
	}
	public void setAmountOfPhoto(int amountOfPhoto) {
		this.amountOfPhoto = amountOfPhoto;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
