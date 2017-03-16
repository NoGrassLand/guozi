<!DOCTYPE html>
<html lang="zh">
<head>
<#include 'inc/head.ftl'>
</head>
<body>
	<div>User: ${(login.user.name)!}</div>
	<div>Account: ${(login.name)!}</div>
	<div>Merchant: ${(login.merchantId)!}</div>
	<#list login.authorities as i>
	<div>Role ${i}</div>
	</#list>
</body>
</html>