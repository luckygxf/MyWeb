<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加博客</title>

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
	table {
		display: table;
		border-collapse: separate;
		border-spacing: 2px;
		border-color: gray;
	}
	table#Editor_Edit_APOptions_Advancedpanel1_cklCategories {
		color: #333333;
		/* border-bottom: 1px solid #AAAAAA; */
		margin-bottom: 8px;
		padding: 4px 12px;
		background: #F5F5F5;
	}
	input, textarea, keygen, select, button {
		margin: 0em;
		font: -webkit-small-control;
		color: initial;
		letter-spacing: normal;
		word-spacing: normal;
		text-transform: none;
		text-indent: 0px;
		text-shadow: none;
		display: inline-block;
		text-align: start;
	}
</style>
<script type="text/javascript">
	function checkAndSubmit(){
		var title=document.getElementById("title");
		var content=document.getElementById("content");
		
		if(!title || title==""){
			alert("请填写博客标题!");
			return false;
		}
		if(!content || content==""){
			alert("请填写博客内容");
			return false;
		}
		
		form1.submit();
		alert("更新博客成功!");
	}
</script>
</head>
<body>
	<div class="main">
		<div class="head">
			添加博客 
		</div>
		<div class="content">
			<form action="blog/updateBlogAction?blog.id=<s:property value="blog.id"/>" method="post" name="form1">
				<b>标题</b>
				<input type="text" maxlength="200" style="width: 99%;" name="blog.title" id="title" value="<s:property value="blog.title"/>"><br>
				<b>内容</b><br>
				<textarea rows="20" cols="200" name="blog.content" id="content"><s:property value="blog.content"/></textarea><br>
				<div class="head">
					<span >分类</span><br>					
				</div>
				<div>
					<table id="Editor_Edit_APOptions_Advancedpanel1_cklCategories" style="width: 95%;">
						<s:iterator value="listOfBlogType" id="blogType" status="st">
							<s:if test="%{#st.count%5}==0"><tr></s:if>
							<td><input type="radio" name="blog.blogType.id" value="<s:property value="#blogType.id"/>"
								<s:if test="#blogType.name==blog.blogType.name">checked=true</s:if>/>
							<s:property value="#blogType.name"/>
							</td>							
							<s:if test="#st.count%5==0"></tr></s:if>
						</s:iterator>		
					</table>
				</div>
				<div class="head">
					<span >标签(多个关键字之间用","分隔，)</span><br>				
				</div>
				<input type="text" maxlength="100" style="width: 99%;" name="tagStr"
					value="<s:iterator value="blog.tags" id="tag" status="st"><s:if test="#st.Last"><s:property value="#tag.content"/></s:if><s:else><s:property value="#tag.content"/>,</s:else></s:iterator>" /><br>
				<div class="post_block">
					<input type="button" value="更新" onclick="checkAndSubmit()" class="Button"/>
				</div>
			</form>
		</div>
	</div>
</body>
</html>