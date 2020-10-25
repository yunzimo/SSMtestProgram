<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<base href="<%=this.getServletContext().getContextPath() %>/hospitalization/">
    <title>入院办理</title>
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
				window.location.href="add.jsp";
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
    </script>
</head>
<body>

<form action="index.html" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">病例号：</td>
        <td><input type="text" name="pname" value=""/></td>
		
        <td width="10%" class="tableleft">主治医生：</td>
        <td><input type="text" name="pname" value=""/></td>
		
        <td width="10%" class="tableleft">科室：</td>
        <td><input type="text" name="pname" value=""/></td>
    </tr>
    <tr>
		
        <td width="10%" class="tableleft">住院时间：</td>
		
		  <td colspan="5">
			<input type="text" name="pname" value=""/>&nbsp;至&nbsp;<input type="text" name="pname" value=""/>
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
        <th>病历号</th>
        <th>姓名</th>
        <th>床位号</th>
        <th>联系电话</th>
        <th>押金</th>
        <th>主治医生</th>
        <th>入院时间</th>
        <th>科室</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    </thead>
    	<c:forEach items="${hospitalizationList }" var="hos">
	     <tr >
         	<td style="vertical-align:middle;"><input type="checkbox" name="check" value="1"></td>
            <td style="vertical-align:middle;">${hos.rno }</td>
            <td style="vertical-align:middle;">${hos.register.name }</td>
            <td style="vertical-align:middle;">${hos.bed_no }</td>
            <td style="vertical-align:middle;">${hos.register.phone }</td>
            <td style="vertical-align:middle;">${hos.deposit }</td>
            <td style="vertical-align:middle;">${hos.register.doctor.name }</td>
            <td style="vertical-align:middle;">${hos.in_date }</td>
            <td style="vertical-align:middle;">
            	<c:if test="${hos.register.department ==0 }">急诊</c:if>
            	<c:if test="${hos.register.department ==1 }">儿科</c:if>
            	<c:if test="${hos.register.department ==2 }">妇科</c:if>
            	<c:if test="${hos.register.department ==3 }">皮肤科</c:if>
            	<c:if test="${hos.register.department ==4 }">内分泌科</c:if>
            	<c:if test="${hos.register.department ==5 }">牙科</c:if>
            </td>
            <td style="vertical-align:middle;">
            	<c:if test="${hos.register.status ==0 }">挂号</c:if>
            	<c:if test="${hos.register.status ==1 }">退号</c:if>
            	<c:if test="${hos.register.status ==2 }">已住院</c:if>
            	<c:if test="${hos.register.status ==3 }">已出院</c:if>
            	<c:if test="${hos.register.status ==4 }">已结算</c:if>
            </td>
            <td style="vertical-align:middle;">
            	<a href="look.html">详情>></a>&nbsp;&nbsp;&nbsp;
            	<c:if test="${hos.register.status == 2 }">
					<a href="edit.html">更改</a>&nbsp;&nbsp;&nbsp;
					<a href="../hos?mark=findHospitalizationByHid&hid=${hos.hid }">缴纳押金</a>&nbsp;&nbsp;&nbsp;	
            	</c:if>
				<c:if test="${hos.register.status == 4 }">
					<a href="edit.html">更改</a>&nbsp;&nbsp;&nbsp;
            	</c:if>
			</td>
         </tr>
	     </c:forEach>
  </table>
  
  <table class="table table-bordered table-hover definewidth m10" >
  	<tr><th colspan="5">  
  		 <div class="inline pull-right page">
	          <a href="../hos?mark=findHospitalizationList&current_page=1" >首页</a> 
	          <a href="../hos?mark=findHospitalizationList&current_page=${pageUtils.pre_page }">上一页</a>     
	          <a href="../hos?mark=findHospitalizationList&current_page=${pageUtils.next_page }" >下一页</a> 
	          <a href="../hos?mark=findHospitalizationList&current_page=${pageUtils.count_pages }" >尾页</a>
			  &nbsp;&nbsp;&nbsp;
			     共<span class='current'>${pageUtils.count_rows }</span>条记录<span class='current'> ${pageUtils.current_page }/${pageUtils.count_pages } </span>页
		  </div>
		  
		 <div><button type="button" class="btn btn-success" id="newNav">添加住院信息</button>&nbsp;&nbsp;&nbsp;
		 </div>
		 
		 </th></tr>
  </table>
  
</body>
</html>
