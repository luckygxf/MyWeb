package com.gxf.util;

/**
 * 分页使用
 * @author Administrator
 *
 */
public class Pager {
	private int nowPage;						//当前页从1开始
	private int pageSize;						//每一页显示的数量 10
	private int pageCount;						//一共有多少页
	
	public Pager(){
		pageSize = 5;							//每页显示10条记录
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
