<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加博客</title>
<script type="text/javascript">
	function checkAndSubmit(){
		
	}
</script>
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
</style>
</head>
<body>
	<div class="main">
		<div class="head">
			添加日志 
		</div>
		<div class="content">
			<form action="#">
				<b>标题</b>
				<input type="text" maxlength="200" style="width: 99%;"><br>
				<b>内容</b><br>
				<textarea rows="20" cols="165"></textarea><br>
				<div class="head">
					<span >分类</span><br>				
				</div>
				<div class="head">
					<span >标签(多个关键字之间用","分隔，)</span><br>				
				</div>
				<input type="text" maxlength="100" style="width: 99%;"/><br>
				<div class="post_block">
					<input type="button" value="发布" onclick="checkAndSubmit()" class="Button"/>
				</div>
			</form>
		</div>
	</div>
</body>
</html>