<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String basePath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html" charset="utf-8">
<title>左边跟随鼠标滑动导航仿淘宝UED - 懒人建站</title>
<meta name="keywords" content="滑动导航" />
<meta name="description" content="左边跟随鼠标滑动导航仿淘宝UED" />
<style>
/*样式表文件来自 懒人css http://lrcss.lrjz100.com */
/*---------重置---------*/
html {
	font-size: 100%;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	*overflow: auto;
	_overflow-x: hidden;
}

body {
	margin: 0;
}

p, ul, ol, form, dl, h1, h2, h3, h4, h5, h6 {
	margin-top: 0;
	margin-bottom: 0;
}

dl, dd {
	margin-left: 0;
}

ul, ol {
	padding-left: 0;
	*margin-left: 0;
	list-style-type: none;
}

ul li {
	*zoom: 1;
	*vertical-align: bottom;
}

em, var, cite, i {
	font-style: normal;
}

small {
	font-size: inherit;
}

s, a {
	text-decoration: none;
}

:focus {
	outline: none;
}

blockquote, q {
	quotes: none;
	margin: 0;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
	empty-cells: show; /*table-layout:fixed;*/
}

img, iframe {
	border: none;
}

img {
	vertical-align: top;
	-ms-interpolation-mode: bicubic; /*ie7防止图片缩小失真的*/
}
/*---------竖向菜单（非必需）---------*/
.bl-vernav li {
	border-bottom: 1px solid #ddd;
	margin-bottom: -1px;
	padding-top: 1px;
}

.bl-vernav a {
	display: block;
	height: 20px;
	line-height: 20px;
	padding: 10px 16px;
}

.bl-vernav a:hover {
	background: #F8F8F8;
	text-decoration: none;
}
/*.bl-vernav .cur a{ background:#428BCA; color:#fff;}*/
.bl-vernav-ord {
	border: 1px solid #ddd;
}

.vernav-level li li {
	border-left: none;
	border-right: none;
}

.vernav-level li li a {
	padding-left: 40px;
}

.vernav-level .cur .one {
	background: #F8F8F8;
}

.vernav-level li .cur a {
	background: #F8F8F8;
}

/*diy*/
.bl-vernav-warp {
	position: relative;
}

.bl-vernav-warp .auxline {
	position: absolute;
	left: -6px;
	top: 0;
	z-index: 1;
	line-height: 0;
	font-size: 0;
	border-left: #FF5F3E solid 7px;
	background-color: #F8F8F8;
}

.bl-vernav {
	position: relative;
	z-index: 2;
}

.bl-vernav a:hover {
	background-color: transparent;
}

/*下面这两端是演示用的和整个功能没有必然关系 ，你可以使用你自己的 字体字号颜色设置*/
.demobox {
	width: 460px;
	font-size: 14px;
	color: #333;
	font-family: 'Hiragino Sans GB', 'Microsoft Yahei',
		"WenQuanYi Micro Hei", SimSun, Tahoma, Arial, Helvetica, STHeiti;
}

a {
	color: #333;
	text-decoration: none;
}
</style>
<script type="text/javascript">
	function exitSystem(){
		window.parent.location.href="<%=basePath %>/manager/loginOutAction";
	}
</script>
</head>

<body style="padding: 5px;">
	<div class="demobox">
		<div class="bl-vernav-warp">
			<div class="auxline"></div>
			<ul class="bl-vernav vernav-level">
				<li><a href="#" class="one">导航菜单</a></li>
				<li class="cur"><a href="#" class="one" >博客管理</a>
					<ul>
						<li><a href="<%=basePath %>/blog/beforeAddBlogTypeAction" class="one" target="mainFrame">添加分类</a></li>	
	                    <li><a href="<%=basePath %>/blog/beforeAddBlogAction" class="one" target="mainFrame">添加博客</a></li>
	                    <li><a href="<%=basePath %>/blog/blogListAction" class="one" target="mainFrame">查询博客</a></li>	                   
                	</ul>
				</li>
				<li><a href="#" class="one">相片管理</a>
					<ul>
						<li><a href="<%=basePath %>/photo/toCreatePhotoAlbumAction" class="one" target="mainFrame">创建相册</a></li>
						<li><a href="<%=basePath %>/photo/photoActionForManager" class="one" target="mainFrame">上传相片</a></li>
                	</ul>
				</li>
				<li><a href="#"	class="one">资源管理</a></li>
				<li><a href="<%=basePath %>/manager/getClientInfoAction" class="one" target="mainFrame">客户端信息</a></li>
				<li><a href="javascript:exitSystem()"	class="one">退出系统</a></li>
			</ul>
		</div>
	</div>
	<script type="text/javascript"
		src="/MyWeb/Jquery/jquery-1.11.3.min.js"></script>
	<script>
		$(function() {
			var verNav = $(".bl-vernav"), line = verNav.siblings(".auxline")
			verNavFisrt = verNav.children("li:first-child"), curY = verNav
					.children("li.cur").position().top;

			line.height(verNavFisrt.outerHeight() - 1).width(
					verNavFisrt.outerWidth());//设置辅助线初始化高度和宽度，也可以直接用css设置好，这里就不用js计算了 

			verNav.find("li").mouseenter(function() {
				var thisY = $(this).position().top;
				line.stop(true, true).animate({
					top : thisY
				}, 200);
				return false
			}).end().mouseleave(function() {
				line.stop(true, true).animate({
					top : curY
				}, 300)
			}).trigger("mouseleave");
		});
	</script>
</body>
</html>
