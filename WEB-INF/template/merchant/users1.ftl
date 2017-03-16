<html>
<head>
<#include '../inc/head.ftl'>
<script type="text/javascript" src="/resources/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript">
			function deleteP(id,Node){	
						$.ajax({
							   type: "DELETE",
							    url: "http://127.0.0.1:8080/umerchant/user/"+id +"/authority/"+"DELETED",
							   success: function(data){
									if(data.success){
										alert(data.message);
										 $(Node).parent().parent().remove();  
									} else{
										alert(data.message);
									}
								}
							});
				}	

			function updatePremission(Node,id,per){
				alert(id);
				id = id.replace(",","");
				$.ajax({
				 	type: "put",
				 	url: "http://127.0.0.1:8080/umerchant/user/"+id +"/authority/"+per+"/state/"+$(Node).get(0).checked,
				 	success: function(data){
					if(data.success){
						alert(data.message);
				 	} else{
						alert(data.message);
				 	}
				 	}
				 });

			}

			$(function(){
			
					$("#mTelP").blur(function(){ 
						$.ajax({
							   type: "post",
							   url: "http://127.0.0.1:8080/umerchant/phone/"+$("#mTelP").val(),
							   success: function(data){
									if(data.success){
										alert(data.message);
										alert(data.addon.id);
										alert(data.addon.name);
										$("#idP").val(data.addon.id);
										$("#unameP").val(data.addon.name);
									} else{
										alert(data.message);
									}
								}
							});
					});
					
					
					$("#pushP").click(function(){ 
						$.ajax({
							   type: "post",
							    url: "http://127.0.0.1:8080/umerchant/user/"+$("#idP").val() +"/authority/"+$("#permissionP").val(),
							   success: function(data){
									if(data.success){
										alert(data.message);
										$("#createdBy").val(data.message);
									} else {
										alert(data.message);
									}
								}
							});
					});
				});	
		
</script>

<title>员工管理</title>


</head>
<body>
公司：<input type="text" id="mName" name="mname" value="${mname!}"/><br/>
<hr/>

<form id="pushForm" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<input type="hidden" id="idP" name="id" value="${id!}" />
员工电话：<input type="text" id="mTelP" name="phone" /><br/>
员工名称：<input type="text" id="unameP" name="name"/><br/>
<input type="hidden" id="flagP" name="flag" />
 权限：<select id="permissionP" name="permissionP">
	<option value="">---请选择---</option>>
	<option value="AUDITOR">审计</option>
	<option value="MANAGER">经理</option>
	<option value="MERCHANDISER">采购员</option>
	</select>
</form>

<br/>
<button id="pushP" name="push" >授权</button>
 <br/>
<hr/>
<hr/>
 <table border="1" cellspacing="0"> 
	<tr><th>序号</th><th>员工名称</th><th>电话号码</th><th>启用</th><th>业务员</th><th>审计</th><th>管理员</th><th>操作</th></tr>
	<#if uList?? && (uList?size > 0)>
		<#list uList as u>
			<tr>
  				<td>${u_index+1!}</td>
  				<td>${u.name!}</td>
  				<td>${u.mobile!}</td>
  				<td><input name="enabled" type="checkbox" onclick="updatePremission(this,'${u.id!}','ENABLED')" <#if u.enabled ??> checked="checked"</#if> /></td>
  				<td><input name="merchandiser" type="checkbox" onclick="updatePremission(this,'${u.id!}','MERCHANDISER')" <#if u.merchandiser > checked="checked"</#if>/></td>
  				<td><input name="auditor" type="checkbox" onclick="updatePremission(this,'${u.id!}','AUDITOR')" <#if u.auditor > checked="checked"</#if>/></td>
  				<td><input name="manager" type="checkbox" onclick="updatePremission(this,'${u.id!}','MANAGER')" <#if u.manager > checked="checked"</#if>/></td>
  				<td><input  type="button" value="取消连接" onclick="deleteP('${u.id!}',this)"/> </td>
 			 </tr>
		</#list>
	</#if>
</table>

</body>
</html>