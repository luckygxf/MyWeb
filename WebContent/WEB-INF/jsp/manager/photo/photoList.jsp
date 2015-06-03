<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>相册展示</title>
</head>
<body>
	<div class="content">
		<div class="photo">
			<!-- head -->
			<div class="div_ph">
				<p>
					<a href="photo/photoAction">我的相册>></a>
					<s:property value="photoAlbum.name"/>>>
				</p>
				<p>
					<span class="span_to"><s:property value="photoAlbum.photos.size()"/>张相片 | 创建于 <s:property value="photoAlbum.createTime"/></span>
					<input type="button" value="上传图片"/>
				</p>
			</div>
			<!-- content -->
			
				<s:iterator value="photoAlbum.photos" id="photo">
				<dl class="pic_dl">
					<dt>
						<a href="photo/queryPhotoDetailActionForManager?curPhoto.id=<s:property value="#photo.id"/>
											&photoAlbum.id=<s:property value="photoAlbum.id"/>">
							<img alt="<s:property value="#photo.name"/>" src="<s:property value="photoAlbum.path"/><s:property value="#photo.name"/>"
								style="width: 180px; height: 140px; text-align: center;" 
							>						
						</a>
					</dt>
					<dt>
						<s:property value="#photo.name"/>
					</dt>
				</dl>
				</s:iterator>		
		</div>
		<div class="clear"></div>
		<div class="page">
			<a href="#">首页</a>
			<a href="#">上一页</a>
			<a href="#">下一页</a>
			<a href="#">尾页</a>
			共有页
		</div>
	</div>
</body>
</html>