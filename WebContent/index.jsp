<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>官先森的个人网站</title>
<!-- css样式 -->
	<style type="text/css">
		body{
			text-align: center;

		}
		#main{
			width: 1000px;
			margin: 0 auto;
		}
		li{
			list-style: none;
			display: inline;
		}
		#logo{
			height: 180px;
		}
		#nav{
			background-color: #47ace0;
			background-image: url(image/nav.jpg);
			text-align: center;
		}
		#header{
			background-color: #47ace0;
		}
		#content{
			width: 1000px;
			height: 550px;
			background-color: #28719b;
		}
		#footer{
			width: 1000px;
			background-color: #358f8c;
		}
		a:link { 
			text-decoration: none; 
		} 
		a:visited { 
			color:#00FF00; 
			text-decoration: none; 
		} 
		a:hover { 
			color:#000000; 
			text-decoration: none; 
		} 
		a:active { 
			color:#FFFFFF; 
			text-decoration: none; 
		} 
	</style>
</head>
<body>
	<div id="main">
		<!-- 导航和logo -->
		<div id = "header">
			<div id="logo" style="background-image:url(image/topImage.jpg);height: 200">
			</div>
			<div id="nav">
				<ul>
					<li><a href="main/mainAction" target="pageContent">首页 </a>| </li>
					<li><a href="blog/blogAction" target="pageContent">博客 </a>| </li>
					<li><a href="picture/pictureAction" target="pageContent">相册 </a>| </li>
					<li><a href="resource/resourceAction" target="pageContent">资源</a> | </li>
					<li><a href="book/bookAction" target="pageContent">书库 </a>| </li>
					<li><a href="collection/collectionAction" target="pageContent">收藏 </a>| </li>
					<li><a href="travel/travelAction" target="pageContent">旅行</a> | </li>
					<li><a href="message/messageAction" target="pageContent">留言</a> | </li>
					<li><a href="about/aboutAction" target="pageContent">关于我</a> </li>
				</ul>
			</div>			
		</div>
		<!-- 主要内容 -->
		<div id = "content">
			<iframe name="pageContent"  style="width: 1000px; height: 530px; border: none;">
			
			</iframe>
		</div>
		<!-- 页面底部 -->
		<div id = "footer">
			footer
		</div>
	</div>
</body>
</html>