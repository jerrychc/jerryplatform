<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath }/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath }/css/login.css"/>
<title>登录</title>
</head>
<body>
	<div id="loginbox" style="padding-top: 10%;">
		<form id="loginform" name="loginform" class="form-vertical"
			action="${pageContext.servletContext.contextPath }/login.shtml"
			method="post">
			
			<div id="login">
				<h2><img src="${pageContext.servletContext.contextPath }/img/logo_left.png" alt="Logo" align="left">
					后台管理系统登录
					<img src="${pageContext.servletContext.contextPath }/img/logo_left.png" alt="Logo" align="right">
				</h2>
				<div class="user">帐 号：<input type="text" name="username" class="text" /></div>
				<div class="pass">密 码：<input type="password" name="password" class="text" /></div>
				<div class="button">
					<input type="button" onclick="checkUserForm();" class="submit"/>
				</div>
				<div class="other">忘记密码？</div>
			</div>
		</form>
	</div>
	
	<script type="text/javascript">
		function checkUserForm() {
			document.loginform.submit();
		}
	</script>
</body>
</html>