<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=this.getServletContext().getContextPath()%>/register/">
<title>挂号</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="../Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="../Css/style.css" />
<script type="text/javascript" src="../Js/jquery.js"></script>
<script type="text/javascript" src="../Js/jquery.sorted.js"></script>
<script type="text/javascript" src="../Js/bootstrap.js"></script>
<script type="text/javascript" src="../Js/ckform.js"></script>
<script type="text/javascript" src="../Js/common.js"></script>
<script type="text/javascript" src="../Js/ckeditor/ckeditor.js"></script>


<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
<script type="text/javascript">
	$(function() {
		$('#backid').click(function() {
			window.history.back(-1);
		});
	});
</script>
</head>
<body>
	<form action="../addRegister" method="post" class="definewidth m20">
		<input name="mark" value="addRegister" type="hidden">
		<table class="table table-bordered table-hover definewidth m10">
			<tr>
				<td width="10%" class="tableleft">姓名</td>
				<td><input type="text" name="name" value="" /></td>
			</tr>

			<tr>
				<td width="10%" class="tableleft">身份证号</td>
				<td><input type="text" name="idcard" value="" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">社保号</td>
				<td><input type="text" name="sinumber" value="" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">挂号费</td>
				<td><input type="text" name="registermoney" value="" />元</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">联系电话</td>
				<td><input type="text" name="phone" value="" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">是否自费</td>
				<td><input type="radio" name="ispay" value="1" checked />否&nbsp;&nbsp;&nbsp;
					<input type="radio" name="ispay" value="0" />是</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">性别</td>
				<td><input type="radio" name="sex" value="0" checked />男&nbsp;&nbsp;&nbsp;
					<input type="radio" name="sex" value="1" />女</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">年龄</td>
				<td><input type="text" name="age" value="" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">初复诊</td>
				<td><input type="radio" name="consultation" value="0" checked />初诊&nbsp;&nbsp;&nbsp;
					<input type="radio" name="consultation" value="1" />复诊</td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">所挂科室</td>
				<td><select name="department">
						<option value="0">急诊科</option>
						<option value="1">儿科</option>
						<option value="2">妇科</option>
						<option value="3">皮肤科</option>
						<option value="4">内分泌科</option>
						<option value="5">牙科</option>
				</select></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">指定医生</td>
				<td><select name="did">
						<c:forEach items="${doctorList}" var="doctor">
							<option value="${doctor.did }">${doctor.name }</option>
						</c:forEach>
				</select>
			</tr>
			<tr>
				<td width="10%" class="tableleft">备注</td>
				<td><textarea name="remark"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<center>
						<button type="submit" class="btn btn-primary">保存</button>
						&nbsp;&nbsp;
						<button type="button" class="btn btn-success" name="backid"
							id="backid">返回列表</button>
					</center>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>