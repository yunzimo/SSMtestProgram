<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<base href="<%=this.getServletContext().getContextPath() %>/register/">
    <title>门诊查询</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../Css/style.css" />
    <script type="text/javascript" src="../Js/jquery.js"></script>
    <script type="text/javascript" src="../Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="../Js/bootstrap.js"></script>
    <script type="text/javascript" src="../Js/ckform.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
    <script type="text/javascript">
	 $(function () {
		$('#newNav').click(function(){
				window.location.href="../toRegisterAdd";
		 });
    });
	
    	function checkall(){
			var alls=document.getElementsByName("check");
			var ch=document.getElementById("checkall");
			if(ch.checked){
				for(var i=0;i<alls.length;i++){
					alls[i].checked=true;	
				}	
			}else{
				for(var i=0;i<alls.length;i++){
					alls[i].checked=false;	
				}	
			}
		}
		function delAll(){
			var alls=document.getElementsByName("check");
			var ids=new Array();
			for(var i=0;i<alls.length;i++){
				if(alls[i].checked){
					ids.push(alls[i].value);
				}		
			}
			if(ids.length>0){
				if(confirm("确认操作?")){
					alert("成功!");
				}
			}else{
				alert("请选中要操作的项");
			}
		}
		
		function withdraw(rid){
			if(!confirm("确定退号？")){
				return false;
			}
			window.location.href = "../registerDel?rid="+rid;
			
		}
		
		
    </script>
</head>
<body>

<form action="../findRegister" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">病历号：</td>
        <td><input type="text" name="rid" value=""/></td>
		
        <td width="10%" class="tableleft">主治医生：</td>
		<td><select name="did">
			<option value="-1">请选择</option>
			<c:forEach items="${doctorList}" var="doctor">
				<option value="${doctor.did }">${doctor.name }</option>
			</c:forEach>
		</select>
		
        <td width="10%" class="tableleft">科室：</td>
		<td>
			<select name="department">
				<option value="-1">请选择</option>
				<option value="0" >急诊科</option>
				<option value="1" >儿科</option>
				<option value="2" >妇科</option>
				<option value="3" >皮肤科</option>
				<option value="4" >内分泌科</option>
				<option value="5" >牙科</option>
			</select>
		</td>
    </tr>
    <tr>
		
        <td width="10%" class="tableleft">挂号时间：</td>
		
		  <td colspan="5">
			<input type="date" name="register_date_start"/>&nbsp;至&nbsp;<input type="date" name="register_date_end"/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="submit" class="btn btn-primary" type="button">查询</button> 
            <button type="submit" class="btn btn-primary" type="button">清空</button> 
			
        </td>
    </tr>
</table>
</form>
   
<table class="table table-bordered table-hover definewidth m10" >
   <thead>
    <tr>
    	<th><input type="checkbox" id="checkall" onChange="checkall();"></th>
        <th>病例号</th>
        <th>病人姓名</th>
        <th>主治医生</th>
        <th>挂号时间</th>
        <th>挂号科室</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    </thead>
    	<c:forEach items="${pageInfo.list}" var="register">
		     <tr >
	         	<td style="vertical-align:middle;"><input type="checkbox" name="check" value="1"></td>
	            <td style="vertical-align:middle;">${register.rid }</td>
	            <td style="vertical-align:middle;">${register.name }</td>
	            <td style="vertical-align:middle;">${register.doctor.name }</td>

	            <td style="vertical-align:middle;">
					<spring:eval expression="register.registerDate"/></td>
	            <td style="vertical-align:middle;">
	            	<c:if test="${register.department ==0 }">急诊</c:if>
	            	<c:if test="${register.department ==1 }">儿科</c:if>
	            	<c:if test="${register.department ==2 }">妇科</c:if>
	            	<c:if test="${register.department ==3 }">皮肤科</c:if>
	            	<c:if test="${register.department ==4 }">内分泌科</c:if>
	            	<c:if test="${register.department ==5 }">牙科</c:if>
	            </td>
	            <td style="vertical-align:middle;">
					<c:if test="${register.status ==0   }">已退号</c:if>
	            	<c:if test="${register.status ==1   }">挂号</c:if>
	            	<c:if test="${register.status ==2   }">已住院</c:if>
	            	<c:if test="${register.status ==3   }">已出院</c:if>
	            	<c:if test="${register.status ==4   }">已结算</c:if>
	            </td>
	            <td style="vertical-align:middle;">
	            <a href="../toRegisterLook?rid=${register.rid}">详情>>></a>&nbsp;&nbsp;&nbsp;
	            
	            <c:if test="${register.status ==1 }">
	                <a href="../toRegisterEdit?rid=${register.rid }">更改</a>&nbsp;&nbsp;&nbsp;
	            	<a href="javascript:void(0)" onclick="withdraw(${register.rid})">退号</a>
	            	
	            </c:if>
	            <c:if test="${register.status ==2 }">
	            	<a href="../toRegisterEdit?rid=${register.rid }">更改</a>&nbsp;&nbsp;&nbsp;
	            </c:if>
	            </td>
	        </tr>
        </c:forEach>
  </table>
  
  <table class="table table-bordered table-hover definewidth m10" >
  	<tr><th colspan="5">  
  		<div class="inline pull-right page">
	          <a href="../toRegisterIndex?current_page=1" >首页</a>
	          <a href="../toRegisterIndex?current_page=${pageInfo.prePage}">上一页</a>
	          <a href="../toRegisterIndex?current_page=${pageInfo.nextPage}" >下一页</a>
	          <a href="../toRegisterIndex?current_page=${pageInfo.lastPage}" >尾页</a>
			  &nbsp;&nbsp;&nbsp;
			     共<span class='current'>${pageInfo.total }</span>条记录<span class='current'> ${pageInfo.pageNum }/${pageInfo.pages } </span>页
		  </div>
			  
			 <div><button type="button" class="btn btn-success" id="newNav">门诊挂号</button>&nbsp;&nbsp;&nbsp;
			 
		</div>
		 
		 </th></tr>
  </table>
  
</body>
</html>
