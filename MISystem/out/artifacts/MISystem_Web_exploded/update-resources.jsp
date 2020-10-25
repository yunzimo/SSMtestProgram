<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="css/plugins/select/bootstrap-select.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/plugins/zTreeStyle/zTreeStyle.css" />

</head>

<body class="gray-bg">
	<div class="wrapper2 wrapper-content2 animated fadeInRight">
		<div class="row">
			
			<div class="col-sm">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>修改资源信息</h5>
					</div>
					<div class="ibox-content">
						<form class="form-horizontal" action="updateSource" method="post">

							<input name="id" id="sid" type="hidden">

							<div class="form-group">
								<label class="col-sm-4 control-label">菜单资源名称：</label>

								<div class="col-sm-3">
									<input type="text" name="name" id="sname" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label">父菜单：</label>

								<div class="col-sm-3">
									<select name="pid" id="sp" class="selectpicker form-control  ">

									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label">菜单资源路径：</label>

								<div class="col-sm-3">
									<input type="text" name="url" id="surl" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label">备注：</label>
								<div class="col-sm-3">
									<textarea class="form-control" name="remark" id="sremark"></textarea>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-4">
									<button class="btn btn-sm btn-white" type="submit">
										<i class="fa fa-save"></i> 保存
									</button>
									<button class="btn btn-sm btn-white" type="submit">
										<i class="fa fa-undo"></i> 重置
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>

	</div>
	<script src="js/jquery.min.js?v=2.1.4"></script>
	<script src="js/bootstrap.min.js?v=3.3.6"></script>
	<script src="js/plugins/select/bootstrap-select.min.js"></script>
	<script src="js/plugins/sweetalert/sweetalert.min.js"></script>
	<script src="js/plugins/ztree/jquery.ztree.core.min.js"></script>
	<script src="js/plugins/ztree/jquery.ztree.exedit.js"></script>
	
	<script type="text/javascript">
		$(function(){
			$.ajax({
				type:'GET',
				url:'getOneInfo',
				data:{"id":${param.id}},
				dataType:'json',
				success:function(rs){
					var one = rs.one;
					$("#sname").val(one.name);
					$("#surl").val(one.url);
					$("#sremark").val(one.remark);
					$("#sid").val(one.id);
					//拼接option时，谁先添加谁在前面显示
					$("#sp").append("<option value='"+one.parent.id+"'>"+one.parent.name+"</option>");
					var more = rs.more;
					$(more).each(function(index,item){
						if(item.id!=one.id){
							var option="<option value='"+item.id+"'>"+item.name+"</option>";
							$("#sp").append(option);
						}
					});
					$('#sp').selectpicker('refresh');
					$('#sp').selectpicker('render');
				}
			});
		});
	</script>
</body>


</html>
