package com.gxf.util;

/**
 * ��ҳʹ��
 * @author Administrator
 *
 */
public class Pager {
	private int nowPage;						//��ǰҳ��1��ʼ
	private int pageSize;						//ÿһҳ��ʾ������ 10
	private int pageCount;						//һ���ж���ҳ
	
	public Pager(){
		pageSize = 5;							//ÿҳ��ʾ10����¼
	}
	
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		if(nowPage < 0)
			this.nowPage = 0;

		else
			this.nowPage = nowPage;
		
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
}
