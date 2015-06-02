<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加博客分类</title>
<style type="text/css">
	.head{
		font-size: 105%;
		background: #E5EEF7;
		border-top: 1px solid #AAAAAA;
		border-bottom: 1px dashed #AAAAAA;
		font-weight: bold;
		color: #333333;
		width: auto;
		padding: 2px 12px;
		margin: 12px 0px 5px 0px;
		clear: left;
	}
	.subCollapsibleTitle {
		font-size: 100%;
		background: #E5EEF7;
		border-top: 1px solid #BBB;
		border-bottom: 1px dashed #BBB;
		font-weight: bold;
		color: #333333;
		width: auto;
		padding: 3px 12px;
		margin: 12px 0px 5px 0px;
		clear: left;
	}
	.post_block {
		margin: 15px 10px 25px 15px;
	}
	input.Button {
		float: left;
		/* padding: 3px 8px; */
		background: #6B86B3;
		border: 1px solid #333333;
		text-transform: uppercase;
		margin-right: 15px;
		color: #FFFFFF;
		font-size: 12px;
		font-weight: bold;
		width: 70px;
		text-align: center;
		cursor: pointer;
		/* cursor: hand; */
		height: 26px;
		line-height: 22px;
	}
	.Edit{
		color: #333333;
	    /*border-bottom: 1px solid #AAAAAA;*/
	    margin-bottom: 8px;
	    padding: 4px 12px;
	    background: #F5F5F5;
	}
	.block{
		margin-top: 8px;
    	display: block;
	}
	table.Listing {
		border-bottom: 3px solid #6B86B3;
		margin: 0px 0px 8px 0px;
		width: 100%;
	}
	table.Listing tr {
		color: inherit;
		background: #F5F5F5;
		padding: 4px 12px;
	}
	.Header {
	    font-weight: bold;
	    color: inherit;
	    border-bottom: 1px solid #6B86B3;
	    background: #FFFFFF;
	}
</style>
<script type="text/javascript">
	function checkAndSubmit(){
		var name=document.getElementById("name");
		var comment=document.getElementById("comment");
		
		if(!name || name==""){
			alert("请填写好Title!");
			return false;
		}
		
		form1.submit();
		alert("更新成功!");
	}
</script>
</head>
<body>
	<div class="main">
		<div class="head">
			编辑博客类型
		</div>
		<div class="Edit">
			<form action="blog/updateBlogTypeAction" method="post" name="form1">
				Title<br>
				<input type="text" style="width: 350px;" name="blogType.name" value="<s:property value="blogType.name"/>" id="name"/><br>
				Description<br>
				<textarea rows="5" cols="20" style="width: 350px;" name="blogType.comment"  id="comment"><s:property value="blogType.name"/></textarea>
				<div class="post_block">
					<input type="button" value="UPDATE" class="Button" onclick="checkAndSubmit()"/>
				</div>
				<input type="hidden" name="blogType.id" value="<s:property value="blogType.id"/>"/>
			</form>
		</div>
	</div>
</body>
</html>