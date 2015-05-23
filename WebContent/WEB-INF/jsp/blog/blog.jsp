<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri ="/struts-tags" prefix ="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
	#sidebar{
		width:200px;
		float:left;
		margin-left:10px;
		margin-top:10px;
		min-height:300px;
		border-right:1px solid;
	
	}
	#blogs{
		width: 740px;
		float: right;
		margin-right: 10px;
		margin-top: 10px;
		
	}
	h1{
		 height:40px;
		 line-height:40px;
		 font-size:14px; 
		 text-indent:10px;
		 color:#eee;
	}
	li{
		list-style: none;
	}
	#page{
		text-align: right;
	}
</style>
<title>我的博客</title>
</head>
<body>
	<div>
		<div id="sidebar">
			<h1>日期</h1>
			<div id="calendar">
			
			</div>
			<h1>分类</h1>
			<div id="blogType">
			
			</div>
			<h1>标签</h1>
			<div id="tags">
			</div>
		</div>
		<div id="blogs">
		<!-- 博客列表 -->
			<div id="artist">
				<ul>
				<s:iterator value="listOfBlog" id="val">
					<li>
						<h3><a href="#"><s:property value="#val.title"/></a></h3>
						<span><s:property value="#val.publishTime"/></span>
						<span>阅读(<s:property value="#val.readCount"/>)</span>
						<span>评论(0)</span>
					</li>
				</s:iterator>
				</ul>
			</div>
			<div id="page">
				<a href="blog/blogAction?pager.nowPage=0">首页</a>
				<a href="blog/blogAction?pager.nowPage=<s:property value="%{pager.nowPage-1}"/>">上一页</a>
				<a href="blog/blogAction?pager.nowPage=<s:property value="%{pager.nowPage+1}"/>">下一页</a>
				<a href="blog/blogAction?pager.nowPage=<s:property value="%{pager.pageCount - 1}"/>">尾页</a>
				  共有<s:property value="pager.pageCount"/>页
			</div>
		</div>
	</div>
</body>
</html>