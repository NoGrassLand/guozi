<!DOCTYPE html>
<html lang="zh">
<head>
<#include 'inc/head.ftl'>
</head>
<body>
	<div>User: ${(login.user.name)!}</div>
	<div>Account: ${(login.name)!}</div>
	<div>提示: ${exception.message!}</div>
</body>
</html>