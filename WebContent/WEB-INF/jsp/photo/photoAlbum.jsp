<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri ="/struts-tags" prefix ="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
	.photo{
		min-height:300px;
		padding:10px 30px;
		margin:10px;
	    background:#e1e0cc;
	}
	
	.photo .div_ph{
		padding:5px;
	}	
	.photo .span_to{
		color:#888;
	}
	
	.photo_bg { 
	    width: 180px; 
	    height: 150px;
	    left: 4px;
	    top: 4px;
	    border:1px solid #ccc;
	    background:#fff;
	}	
	img{
		width: 180px;
		height: 150px;
	}
</style>
<title>我的相册</title>
</head>
<body>
	
	<div class="photo">
		<div class="div_ph">
			<span class="span_to">共有<s:property value="listOfPhotoAlbum.size()"/>个相册</span>
		</div>		
		<s:iterator value="listOfPhotoAlbum" id="photoAlbum"> 
			<div class="ph_dl">
				<dd>
					<p class="photo_bg">
						<a href="photo/queryPhotoListAction?photoAlbumId=<s:property value="#photoAlbum.id"/>">
							<img alt="显示相片" src="<s:property value="#photoAlbum.backgroundPhotoPath"/>">
						</a>
					</p>
				</dd>
				<dd class="ph_info">
					<a href="#"><s:property value="#photoAlbum.name"/></a>
				</dd>
				<dd>共有<s:property value="#photoAlbum.photos.size()"/>张图片 | 
					<s:property value="#photoAlbum.createTime"/>
				</dd>
			</div>
			
		</s:iterator>
	</div>
</body>
</html>