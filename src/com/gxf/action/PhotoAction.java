package com.gxf.action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.gxf.beans.Photo;
import com.gxf.beans.PhotoAlbum;
import com.gxf.dao.PhotoAlbumDao;
import com.gxf.dao.PhotoDao;
import com.gxf.dao.impl.PhotoAlbumDaoImp;
import com.gxf.dao.impl.PhotoDaoImp;
import com.gxf.util.Pager;
import com.gxf.util.PhotoNameFilter;
import com.gxf.util.Util;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 照片对应的action 
 * @author Administrator
 *
 */
public class PhotoAction extends ActionSupport implements ServletRequestAware{
	
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
	private PhotoDao photoDao = new PhotoDaoImp();
	
	private int photoAlbumId;
	private Pager pager;
	private Photo curPhoto;
	//滚动条显示的图片
	private List<Photo> listOfScrollPhoto;
	private Util util = new Util();
	private HttpServletRequest request;
	
	//上传文件
	private File upload;
	private String uploadFileName;
	private String uploadContentType;
	private Photo uploadPhoto;
	
	
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
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		curPhoto = photoDao.queryPhotoById(curPhoto.getId());
		//查询滑动窗口的列表
		listOfScrollPhoto = photoDao.queryPhotoByUploadTimeAndSize(photoAlbum, curPhoto, 5);
		
		return SUCCESS;		
	}
	
	/**
	 * 查询下一张相片
	 * @return
	 */
	public String queryPhotoNext(){
		//查询相册信息
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		//查询下一张
		curPhoto = photoDao.queryPhotoById(curPhoto.getId());
		Photo nextPhoto = photoDao.queryNextPhoto(photoAlbum, curPhoto);
		//如果不是最后一张
		if(null != nextPhoto)
			curPhoto = nextPhoto;
			
		//查询滑动窗口的列表
		listOfScrollPhoto = photoDao.queryPhotoByUploadTimeAndSize(photoAlbum, curPhoto, 5);
		if(listOfScrollPhoto == null){
			listOfScrollPhoto = new ArrayList<Photo>();
			listOfScrollPhoto.add(curPhoto);
		}
		
		
		return SUCCESS;
	}
	
	/**
	 * 查询上一张相片
	 * @return
	 */
	public String queryPhotoPre(){
		//查询相册信息
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		//查询上一张
		curPhoto = photoDao.queryPhotoById(curPhoto.getId());
		Photo prePhoto = photoDao.queryPrePhoto(photoAlbum, curPhoto);
		//如果不是第一张
		if(null != prePhoto)
			curPhoto = prePhoto;
			
		//查询滑动窗口的列表
		listOfScrollPhoto = photoDao.queryPhotoByUploadTimeAndSize(photoAlbum, curPhoto, 5);
		if(listOfScrollPhoto == null){
			listOfScrollPhoto = new ArrayList<Photo>();
			listOfScrollPhoto.add(curPhoto);
		}
		
		
		return SUCCESS;
	}
	
	/**
	 * 查询指定相片
	 * @return
	 */
	public String queryCurPhoto(){
		//查询相册信息
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		//查询上一张
		curPhoto = photoDao.queryPhotoById(curPhoto.getId());
			
		//查询滑动窗口的列表
		listOfScrollPhoto = photoDao.queryPhotoByUploadTimeAndSize(photoAlbum, curPhoto, 5);
		if(listOfScrollPhoto == null){
			listOfScrollPhoto = new ArrayList<Photo>();
			listOfScrollPhoto.add(curPhoto);
		}
		
		
		return SUCCESS;
	}
	
	/**
	 * 跳转到创建相册
	 * @return
	 */
	public String toCreatePhotoAlbum(){
		return SUCCESS;
	}
	
	/**
	 * 创建相册
	 * @return
	 */
	public String createPhotoAlbum(){
		//设置好相册信息
		photoAlbum.setCreateTime(util.getCurrentTimestamp());
		String photoAlbumPath = "/" + Util.PROJECT_NAME + "/" + Util.PHOTO_DIRECTION + "/" + photoAlbum.getName();
		photoAlbum.setPath(photoAlbumPath);
		
		//创建相册文件夹
		String projectPathInserver = request.getSession().getServletContext().getRealPath("/");
		
		File photoAlbumDicFile = new File(projectPathInserver + Util.PHOTO_DIRECTION + File.separator + photoAlbum.getName());
		photoAlbumDicFile.mkdir();
		
		//添加到数据库
		photoAlbumDao.addPhotoAlbum(photoAlbum);
		
		
		return SUCCESS;
	}
	
	/**
	 * 删除相册
	 * @return
	 */
	public String deletePhotoAlbum(){
		//1.从数据库中删除相册信息
		//2.删除相册文件夹
		
		//从数据库中删除相册信息
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		photoAlbumDao.deletePhotoAlbum(photoAlbum.getId());
		//删除相册文件夹
		String projectPathInserver = request.getSession().getServletContext().getRealPath("/");
		//System.out.println("projectPathInserver = " + projectPathInserver + Util.PHOTO_DIRECTION + File.separator + photoAlbum.getName());
		File photoAlbumDicFile = new File(projectPathInserver + Util.PHOTO_DIRECTION + File.separator + photoAlbum.getName());
		util.deleteFile(photoAlbumDicFile);
		
		//从数据库中获取相册信息
		this.listOfPhotoAlbum = photoAlbumDao.queryAllPhotoAlbum();
		
		return SUCCESS;
	}
	
	/**
	 * 上传相片
	 * @return
	 */
	public String uploadPhoto(){
		//查询相册信息
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		
		//1.写入相片信息到数据库
		//2.将相片写到文件夹中
		
		//将相片信息写入到数据库中
		uploadPhoto.setUploadTime(util.getCurrentTimestamp());
		
		return SUCCESS;
	}
	
	/**
	 * 跳转到上传页面
	 * @return
	 */
	public String toUploadPhoto(){
		//查询出相册信息
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		
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

	public List<Photo> getListOfScrollPhoto() {
		return listOfScrollPhoto;
	}

	public void setListOfScrollPhoto(List<Photo> listOfScrollPhoto) {
		this.listOfScrollPhoto = listOfScrollPhoto;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public Photo getUploadPhoto() {
		return uploadPhoto;
	}

	public void setUploadPhoto(Photo uploadPhoto) {
		this.uploadPhoto = uploadPhoto;
	}

//	public int getScrollStartIndex() {
//		return scrollStartIndex;
//	}
//
//	public void setScrollStartIndex(int scrollStartIndex) {
//		this.scrollStartIndex = scrollStartIndex;
//	}		


}
