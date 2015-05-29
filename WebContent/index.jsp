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
		#footer{
		  clear:both;
		  margin:10px 0 0 50;
		  padding:10px 0 0 0;
		  border-top:2px solid #f30;
		  text-align:center;
		  font-size: 10px;
		}
		#footer p{
			margin-top:5px;
		}
		#footer a{
			color:#000000;
			text-decoration:none;
		}
		#footer a:hover{ 
			color:#ff00cc;
			text-decoration:underline;
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
					<li><a href="photo/photoAction" target="pageContent">相册 </a>| </li>
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
			<p>
				<a href="#">友情链接</a>|
				<a href="#">关于我们</a>|
				<a href="#">给我留言</a>|
				<a href="#">站点地图</a>
			</p>			
			<p>
				本站部分文章、资源来自互联网，版权归原作者及网站所有，如果侵犯了您的权利，请及时致信告知我站
			</p>
			<p>
				版权声明：凡文章来源注明为本站的文章、图片、视频等信息，请在转载时保留本站链接
			</p>
			<p>
				©2015 官先森个人网站,All Rights Reserved.
			</p>
		</div>
	</div>
</body>
</html>