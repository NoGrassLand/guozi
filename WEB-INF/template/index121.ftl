<!DOCTYPE html>
<html lang="zh">
<head>
<#include 'inc/head.ftl'>
</head>
<body>
<#if SPRING_SECURITY_LAST_EXCEPTION??>
	<div>Login Failed: ${(SPRING_SECURITY_LAST_EXCEPTION.message)!}</div>
</#if>
<form action="/login" method="post" enctype="application/x-www-form-urlencoded">
	<div>Target<input type="text" name="target" value="/home/1200" /></div>
	<div>手机号<input type="text" name="username" /></div>
	<div>密码<input type="password" name="password" /></div>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<#if tracking??>
		<input type="hidden" name="tracking" value="${tracking}" />
	</#if>
	<div><input type="submit" value="登录" /> <input type="button" value="注册" onclick="javascript:window.location.href='http://127.0.0.1:8080/signup';"/></div></div>

</form>
</body>
</html>