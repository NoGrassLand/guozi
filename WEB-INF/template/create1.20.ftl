<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<#include 'inc/head.ftl'>
<script type="text/javascript" src="/resources/js/jquery.js"></script>
<script type="text/javascript">
function checkMerchant(){	
  $.ajax({
   type: "post",
   url: "http://127.0.0.1:8080/merchant/create",
   data: $("#registerMerchant").serialize(),
   success: function(data){
		if(data.success){
			alert(data.message);
		} else {
			alert(data.message);
			location.href='http://127.0.0.1:8080';
		}
	}
});
}
</script>
<title>rigister</title>
</head>
<body>
	<form id="registerMerchant" method="post">
		<table>
			<tr>
				<td>公司名称:</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>公司电话:</td>
				<td><input type="text" name="tel" /></td>
			</tr>
			<tr>
				<td>省:</td>
				<td><input type="text" name="city" /></td>
			</tr>
			<tr>
				<td>市:</td>
				<td><input type="text" name="district" /></td>
			</tr>
			<tr>
				<td>区/县:</td>
				<td><input type="text" name="county" /></td>
			</tr>
			<tr>
				<td>地址:</td>
				<td><input type="text" name="addr" /></td>
			</tr>
			<tr>
				<td>营业执照:</td>
				<td><input type="text" name="licenseNo" /></td>
			</tr>
			<tr><td><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /></td></tr>
			<tr>
				<td rowspan="2"> <input type="button" onclick="checkMerchant()" value="公司注册" /></td>
			</tr>
		</table>
	</form>
</body>
</html>