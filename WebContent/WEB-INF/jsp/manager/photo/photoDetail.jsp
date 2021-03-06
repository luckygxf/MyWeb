<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
	
	.photo .pleft{
		width:720px;
		min-height:660px;
		float:left;
	}
	
	.photo .pright{
		width:70px;
		height:500px;
		float:right;
	}
	
	#pinfo{
		border:1px solid #eee;
		margin:10px;
		height:50px;
		text-align:left;
		text-indent: 10px;
	}
	
	.photo .pright .pr_top{
		background:url(/MyWeb/image/moveUp.png);
		width:55px;
		height:14px;
		margin-left:7px;
		display: block;
		border:1px solid #bbb;
	}
	.photo .pright .pr_bot{
		background:url(/MyWeb/image/moveDown.png);
		width:55px;
		height:14px;
		margin-left:7px;
		display: block;
		border:1px solid #bbb;
	}
	#scrollImg{
		min-height:390px;
	}
</style>
<link href="/MyWeb/bootstrap-3.3.4-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
	function getNextImage(photoId, photoAlbumId){
		location.href="photo/queryPhotoNextActionForManager?curPhoto.id=" + photoId + "&photoAlbum.id=" + photoAlbumId;
	}
	
	function getPreImage(photoId, photoAlbumId){
		location.href="photo/queryPhotoPreActionForManager?curPhoto.id=" + photoId + "&photoAlbum.id=" + photoAlbumId;
	}
</script>
</head>
<body>
	<div class="photo">
		<!-- head -->
		<div class="div_ph">
			<p>
				<a href="photo/photoActionForManager">我的相册</a>>>
				<a href="photo/queryPhotoListActionForManager?photoAlbumId=<s:property value="photoAlbum.id"/>"><s:property value="photoAlbum.name"/></a>>>
				<span class="span_to"><s:property value="curPhoto.name"/></span>
			</p>
		</div>
		<div class="pleft">
			<img alt="<s:property value="photoAlbum.name"/>" src="<s:property value="photoAlbum.path"/><s:property value="curPhoto.name"/>"
				style="width: 600px; height: 400px"
			>
			<div id="pinfo"><s:property value="curPhoto.comment"/></div>
		</div>
		<div class="pright">
			<div class="pr_top" onclick="getPreImage(<s:property value="curPhoto.id"/>, <s:property value="photoAlbum.id"/>)"></div>
			<div id="scrollImg">
				<s:iterator value="listOfScrollPhoto" id="photo">
					<p class="pc"
						<s:if test="#photo.id==curPhoto.id">
							style="border: 1px solid red;"
						</s:if>
					>
						<a href="photo/queryCurPhotoPreActionForManager?curPhoto.id=<s:property value="#photo.id"/>&photoAlbum.id=<s:property value="photoAlbum.id"/>">
							<img alt="<s:property value="#photo.name"/>" src="<s:property value="photoAlbum.path"/><s:property value="#photo.name"/>"
									style="width: 67px; height: 60px;"
							>
							
						</a>
					</p>
				</s:iterator>
			</div>
			
			<div class="pr_bot" onclick="getNextImage(<s:property value="curPhoto.id"/>, <s:property value="photoAlbum.id"/>)"></div>
		</div>
	</div>
</body>
</html>