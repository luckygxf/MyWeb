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
 * ��Ƭ��Ӧ��action 
 * @author Administrator
 *
 */
public class PhotoAction extends ActionSupport implements ServletRequestAware{
	
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
	private PhotoDao photoDao = new PhotoDaoImp();
	
	private int photoAlbumId;
	private Pager pager;
	private Photo curPhoto;
	//��������ʾ��ͼƬ
	private List<Photo> listOfScrollPhoto;
	private Util util = new Util();
	private HttpServletRequest request;
	
	//�ϴ��ļ�
	private File upload;
	private String uploadFileName;
	private String uploadContentType;
	private Photo uploadPhoto;
	
	
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
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		curPhoto = photoDao.queryPhotoById(curPhoto.getId());
		//��ѯ�������ڵ��б�
		listOfScrollPhoto = photoDao.queryPhotoByUploadTimeAndSize(photoAlbum, curPhoto, 5);
		
		return SUCCESS;		
	}
	
	/**
	 * ��ѯ��һ����Ƭ
	 * @return
	 */
	public String queryPhotoNext(){
		//��ѯ�����Ϣ
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		//��ѯ��һ��
		curPhoto = photoDao.queryPhotoById(curPhoto.getId());
		Photo nextPhoto = photoDao.queryNextPhoto(photoAlbum, curPhoto);
		//����������һ��
		if(null != nextPhoto)
			curPhoto = nextPhoto;
			
		//��ѯ�������ڵ��б�
		listOfScrollPhoto = photoDao.queryPhotoByUploadTimeAndSize(photoAlbum, curPhoto, 5);
		if(listOfScrollPhoto == null){
			listOfScrollPhoto = new ArrayList<Photo>();
			listOfScrollPhoto.add(curPhoto);
		}
		
		
		return SUCCESS;
	}
	
	/**
	 * ��ѯ��һ����Ƭ
	 * @return
	 */
	public String queryPhotoPre(){
		//��ѯ�����Ϣ
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		//��ѯ��һ��
		curPhoto = photoDao.queryPhotoById(curPhoto.getId());
		Photo prePhoto = photoDao.queryPrePhoto(photoAlbum, curPhoto);
		//������ǵ�һ��
		if(null != prePhoto)
			curPhoto = prePhoto;
			
		//��ѯ�������ڵ��б�
		listOfScrollPhoto = photoDao.queryPhotoByUploadTimeAndSize(photoAlbum, curPhoto, 5);
		if(listOfScrollPhoto == null){
			listOfScrollPhoto = new ArrayList<Photo>();
			listOfScrollPhoto.add(curPhoto);
		}
		
		
		return SUCCESS;
	}
	
	/**
	 * ��ѯָ����Ƭ
	 * @return
	 */
	public String queryCurPhoto(){
		//��ѯ�����Ϣ
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		//��ѯ��һ��
		curPhoto = photoDao.queryPhotoById(curPhoto.getId());
			
		//��ѯ�������ڵ��б�
		listOfScrollPhoto = photoDao.queryPhotoByUploadTimeAndSize(photoAlbum, curPhoto, 5);
		if(listOfScrollPhoto == null){
			listOfScrollPhoto = new ArrayList<Photo>();
			listOfScrollPhoto.add(curPhoto);
		}
		
		
		return SUCCESS;
	}
	
	/**
	 * ��ת���������
	 * @return
	 */
	public String toCreatePhotoAlbum(){
		return SUCCESS;
	}
	
	/**
	 * �������
	 * @return
	 */
	public String createPhotoAlbum(){
		//���ú������Ϣ
		photoAlbum.setCreateTime(util.getCurrentTimestamp());
		String photoAlbumPath = "/" + Util.PROJECT_NAME + "/" + Util.PHOTO_DIRECTION + "/" + photoAlbum.getName();
		photoAlbum.setPath(photoAlbumPath);
		
		//��������ļ���
		String projectPathInserver = request.getSession().getServletContext().getRealPath("/");
		
		File photoAlbumDicFile = new File(projectPathInserver + Util.PHOTO_DIRECTION + File.separator + photoAlbum.getName());
		photoAlbumDicFile.mkdir();
		
		//��ӵ����ݿ�
		photoAlbumDao.addPhotoAlbum(photoAlbum);
		
		
		return SUCCESS;
	}
	
	/**
	 * ɾ�����
	 * @return
	 */
	public String deletePhotoAlbum(){
		//1.�����ݿ���ɾ�������Ϣ
		//2.ɾ������ļ���
		
		//�����ݿ���ɾ�������Ϣ
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		photoAlbumDao.deletePhotoAlbum(photoAlbum.getId());
		//ɾ������ļ���
		String projectPathInserver = request.getSession().getServletContext().getRealPath("/");
		//System.out.println("projectPathInserver = " + projectPathInserver + Util.PHOTO_DIRECTION + File.separator + photoAlbum.getName());
		File photoAlbumDicFile = new File(projectPathInserver + Util.PHOTO_DIRECTION + File.separator + photoAlbum.getName());
		util.deleteFile(photoAlbumDicFile);
		
		//�����ݿ��л�ȡ�����Ϣ
		this.listOfPhotoAlbum = photoAlbumDao.queryAllPhotoAlbum();
		
		return SUCCESS;
	}
	
	/**
	 * �ϴ���Ƭ
	 * @return
	 */
	public String uploadPhoto(){
		//��ѯ�����Ϣ
		photoAlbum = photoAlbumDao.queryPhotoAlbum(photoAlbum.getId());
		
		//1.д����Ƭ��Ϣ�����ݿ�
		//2.����Ƭд���ļ�����
		
		//����Ƭ��Ϣд�뵽���ݿ���
		uploadPhoto.setUploadTime(util.getCurrentTimestamp());
		
		return SUCCESS;
	}
	
	/**
	 * ��ת���ϴ�ҳ��
	 * @return
	 */
	public String toUploadPhoto(){
		//��ѯ�������Ϣ
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
