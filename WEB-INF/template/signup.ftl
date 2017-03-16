<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<#include 'inc/head.ftl'>
<script type="text/javascript" src="/resources/js/jquery.js"></script>
<script type="text/javascript">
</script>
<title>rigister</title>
</head>
<body>
${message!}
	<form id="registerUser" method="post" action="/signup">
		<table>
			<tr>
				<td>手机号:</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="credentials" /></td>
			</tr>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="user.name" /></td>
			</tr>
			<tr>
				<td>邀请码:</td>
				<td><input type="text" name="invitationCode" /></td>
			</tr>
			<tr><td><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /></td></tr>
			<tr>
				<td rowspan="2"> <input type="submit"  value="个人注册" /></td>
			</tr>
		</table>
	</form>
</body>
</html>