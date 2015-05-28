<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>相片详细信息</title>
<style type="text/css">
	.photo{
		padding:10px 10px;
		margin:10px;
	}
	
	.photo .div_ph{
		padding:5px;
	}	
	.photo .span_to{
		color:#888;
	}
	
	.photo .pic_dl{
		float:left;
		margin:15px 10px;
	}	
	.photo .ph_dl img{
		width:170px;
		height:500px;
		margin:5px;
	}
	.page{
		text-align: center;
	}
	.clear{
		clear:both;
	}
</style>
</head>
<body>
	<div class="content">
		<!-- head -->
		<div class="div_ph">
			<p>
				<a href="photo/photoAction">我的相册</a>>>
				<s:property value="photoAlbum.name"/>
				<a href="#"><s:property value="photoAlbum.name"/></a>>>
				<span class="span_to"><s:property value="photoAlbum.photos.size()"/>张相片 | 创建于 <s:property value="photoAlbum.createTime"/></span>
			</p>
		</div>
	</div>
</body>
</html>