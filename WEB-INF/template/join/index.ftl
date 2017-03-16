<!DOCTYPE html>
<html lang="zh">
<head>
<#include '../inc/head.ftl'>
</head>
<body>
     
<input type="button" value ="申请" onclick="create();"/>
<table>
<tr><th>状态</th><th>用户代码</th><th>用户名称</th><th>用户库位码</th><th>价格策略</th><th>启用</th><th>操作</th></tr>
<#list list as row>
<tr>
<td><#if row.status == 1>已连接 <#elseif row.status == 2>申请中<#elseif row.status == 3>待连接</#if></td>
<td><#if row.supplierNo??>${row.supplierNo}<#else>-</#if></td>
<td><#if row.name??>${row.name}<#else>-</#if></td>
<td><#if row.storeNo??>${row.storeNo}<#else>-</#if></td>
<td>无</td>
<td><input type="checkbox" <#if row.able == 1>checked</#if> onclick="authority(${row.id?c})"></td>
<td><input type="button" value="建立" onclick="join(${row.id?c});"/>
<input type="button" value ="取消" onclick="cancel(${row.id?c});"/></td>
</tr>
</#list>
<table>
<script>
function authority(id){
	$.ajax({
         type: "put",
         url: "http://127.0.0.1:8080/join/"+ id + "/able/" + 1,
         dataType: "json",
         success: function(data){
             alert(data.success);        
         }
     });
}
function join(id){
	var storeNo = 2;
	$.ajax({
         type: "put",
         url: "http://127.0.0.1:8080/join/"+ id + "/storeNo/" + storeNo,
         dataType: "json",
         success: function(data){
             alert(data.success);        
         }
     });
}
function create(){
	$.ajax({
         type: "POST",
         url: "http://127.0.0.1:8080/join/",
         data: {supplierId:1210},
         dataType: "json",
         success: function(data){
             alert(data.success);        
         }
     });
}

function cancel(id){
	$.ajax({
         url: "http://127.0.0.1:8080/join/" + id ,
         type:"delete",
         dataType:"json",
         success: function(data){
             alert(data.success);     
         }
     });
}
</script>

</body>
</html>