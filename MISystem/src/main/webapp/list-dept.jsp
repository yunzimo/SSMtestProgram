<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <!DOCTYPE html>
<html>
<!-- Mirrored from www.gzsxt.cn/theme/hplus/table_basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:01 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>办公系统 - 基础表格</title>
    <meta name="keywords" content="办公系统">
    <meta name="description" content="办公系统">

    <link rel="shortcut icon" href="favicon.ico"> 
    	<link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    	<link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="css/plugins/select/bootstrap-select.min.css" rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper2 wrapper-content2 animated fadeInRight">
	    <div class="row">
	    		<div class="col-sm-5">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>添加部门</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" action="addDept" method="post">
<%--                            <div class="form-group">--%>
<%--                                <label class="col-sm-3 control-label">部门编号：</label>--%>

<%--                                <div class="col-sm-8">--%>
<%--                                    <input type="hidden" name="deptno" class="form-control">--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">部门名称：</label>

                                <div class="col-sm-8">
                                    <input type="text" name="dname" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">区域：</label>

                                <div class="col-sm-8">
                                    <input type="text" name="local" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-8">
                                    <button class="btn btn-sm btn-white" type="submit"><i class="fa fa-save"></i> 保存</button>
                                    <button class="btn btn-sm btn-white" type="reset"><i class="fa fa-undo"></i> 重置</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
	    		<div class="col-sm-7">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>部门列表 <small>点击修改信息将显示在左边表单</small></h5>
                    </div>
                    <div class="ibox-content">                    	
                        <div class="hr-line-dashed2"></div>
                        <div class="row">
                            <div class="table-responsive">
                            <table class="table table-striped list-table">
                                <thead>
                                    <tr>		
                                        <th>选择</th>
                                        <th>部门编号</th>
                                        <th>部门名称</th>
                                        <th>区域</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
<%--                                    <tr>--%>
<%--                                        <td><input  type="checkbox" checked=""></td>--%>
<%--										<td>10</td>--%>
<%--										<td>会计部</td>--%>
<%--										<td>广州	</td>--%>
<%--                                        <td>--%>
<%--	                                     <a href="update-dept.jsp"><i class="glyphicon glyphicon-edit  text-navy"></i></a>--%>
<%--	                                     <a href="javascript:void(0)" class="btndel"><i class="glyphicon glyphicon-remove  text-navy"></i></a>--%>
<%--                                        </td>--%>
<%--                                    </tr>--%>
                                    <c:forEach items="${pageInfo.list}" var="dept">
                                        <tr>
                                            <td><input  type="checkbox" checked=""></td>
                                            <td>${dept.deptno}</td>
                                            <td>${dept.dname}<td>
                                            <td>${dept.local}</td>
                                            <td>
                                                <a href="update-dept.jsp"><i class="glyphicon glyphicon-edit  text-navy"></i></a>
                                                <a href="javascript:void(0)" class="btndel"><i class="glyphicon glyphicon-remove  text-navy"></i></a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
	                        	<div class="col-sm-5">
	                        		<button class="btn btn-sm btn-primary" type="button"><i class="fa fa-check-square-o"></i> 全选</button>
	                        		<button class="btn btn-sm btn-primary" type="button"><i class="fa fa-square-o"></i> 反选</button>
	                        		<button class="btn btn-sm btn-primary" type="button"><i class="fa fa-times-circle-o"></i> 删除</button>
	                    
	                        	</div>
							<div class="col-sm-7 text-right">
                                <div class="btn-group">
                                    <span>共有${pageInfo.pages}页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前是第${pageInfo.pageNum}页</span>
                                    <a href='${pageContext.request.contextPath}/showDeptInfo?pageNum=1'>首页</a>
                                    <a href='${pageContext.request.contextPath}/showDeptInfo?pageNum=${pageInfo.prePage}'>上一页</a>
                                    <a href='${pageContext.request.contextPath}/showDeptInfo?pageNum=${pageInfo.nextPage}'>下一页</a>
                                    <a href='${pageContext.request.contextPath}/showDeptInfo?pageNum=${pageInfo.pages}'>尾页</a>
                                </div>
							</div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            
	    	</div>
	
	</div>       
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
     <script src="js/plugins/select/bootstrap-select.min.js"></script>
    <script src="js/plugins/sweetalert/sweetalert.min.js"></script>

   <script>
	$(document).ready(function() {
		// 设置按钮的样式
		$('.selectpicker').selectpicker('setStyle', 'btn-white').selectpicker('setStyle', 'btn-sm');
		
		//点击删除
		$('.btndel').click(function () {
		    swal({
		        title: "您确定要删除这条信息吗",
		        text: "删除后将无法恢复，请谨慎操作！",
		        type: "warning",
		        showCancelButton: true,
		        confirmButtonColor: "#DD6B55",
		        confirmButtonText: "删除",
		        closeOnConfirm: false
		    }, function () {//此函数是点击删除执行的函数
		    		//这里写ajax代码
		    		// 以下是成功的提示框，请在ajax回调函数中执行
			    swal("删除成功！", "您已经永久删除了这条信息。", "success");
		    });
		});
		
		
		$("#demo1").click(function() {
			//基本消息框－留着备用
			swal({
				title: "欢迎使用SweetAlert",
				text: "Sweet Alert 是一个替代传统的 JavaScript Alert 的漂亮提示效果。"
			})
		});
	});
    </script>  
</body>


</html>
    
