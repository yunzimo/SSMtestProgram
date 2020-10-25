<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>优就业-线医疗管理系统</title>
<meta charset="UTF-8">
<link rel="icon" href="Images/logo_favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="Css/style.css" />
<script type="text/javascript" src="Js/jquery.js"></script>
<script type="text/javascript" src="Js/jquery.sorted.js"></script>
<script type="text/javascript" src="Js/bootstrap.js"></script>
<script type="text/javascript" src="Js/ckform.js"></script>
<script type="text/javascript" src="Js/common.js"></script>
<!-- 触发JS刷新-->
<script type="text/javascript">
	function changeImg() {
		var img = document.getElementById("img");
		img.src = "authImage?date=" + new Date();
		;
	}
</script>
<style type="text/css">
body {
	padding-top: 140px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
	font-family: "微软雅黑";
	background: url("Images/yy.jpg");
	background-size: 100%;
	background-repeat: no-repeat;
}

.form-signin {
	max-width: 400px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	background: rgba(255, 255, 255, 0.5);
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 10px;
	font-size: 24px;
	margin-left: 90px;
}

.form-signin input[type="text"], .form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}

#message {
	font-size: 14px;
	color: red;
	margin-left: 40px;
}

.input-block-level {
	width: 300px;
	margin-left: 40px;
}

.input-medium {
	margin-left: 40px;
}

.code_images {
	width: 115px;
	height: 35px;
	margin-top: -15px;
	margin-left: 10px;
}
</style>
</head>
<body>
	<div class="container">

		<form class="form-signin" method="post" action="checkLogin">

			<input type="hidden" name="mark" value="checkLogin">

			<h2 class="form-signin-heading">在线医疗管理系统</h2>
			<!-- 显示错误信息 -->
			<span id="message" class="message">${msg}</span><br> 
			
			<input
				type="text" name="username" class="input-block-level"
				placeholder="账号"> 
				
			<input type="password" name="password"
				class="input-block-level" placeholder="密码"> 
				
			<input
				type="text" name="verify" class="input-medium" placeholder="验证码">&nbsp;
				<img
					id="img" class="code_images" src="authImage"
					onclick="javascript:changeImg()" />

			<!--  
				验证码功能参考：
				https://www.cnblogs.com/jianlun/articles/5553452.html
			-->
			<p style="text-align: center;">
				<button class="btn btn-large btn-primary" style="width: 150px;"
					type="submit">登录</button>
			</p>
		</form>

	</div>
</body>
</html>