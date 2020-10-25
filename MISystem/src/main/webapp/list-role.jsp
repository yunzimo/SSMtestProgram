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
    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="css/plugins/select/bootstrap-select.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/plugins/zTreeStyle/zTreeStyle.css" />
</head>

<body class="gray-bg">
	<div class="wrapper2 wrapper-content2 animated fadeInRight">
	       <div class="row">
	    		<div class="col-sm-5">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>添加角色</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">角色名称：</label>

                                <div class="col-sm-8">
                                    <input type="text" name="rolename" id="rn" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">角色描述：</label>

                                <div class="col-sm-8">
                                    <input type="text" name="roledis" id="rd" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">角色权限：</label>

                                <div class="col-sm-8">
<%--                                     <ul>--%>
<%--                                        <li>注销员工</li>--%>
<%--                                        <li>添加员工</li>--%>
<%--                                        <li>报销审批</li>--%>
<%--                                        <li>--%>
<%--                                           <ul>--%>
<%--                                               <li>请假审批</li>--%>
<%--                                               <li>请假申请</li>--%>
<%--                                           </ul>--%>
<%--                                        </li>--%>
<%--                                     --%>
<%--                                     </ul>--%>
                                <div class="ibox-content">
                                    <div class="zTreeDemoBackground left" style="font-size: 16px">
                                        <ul id="treeDemo" class="ztree"></ul>
                                    </div>
                                </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">是否启用：</label>
                                <div class="col-sm-8">
                                    <div class="switch">
<%--			                            <div class="onoffswitch">--%>
<%--			                                <input type="checkbox" checked class="onoffswitch-checkbox" id="status">--%>
<%--			                                <label class="onoffswitch-label" for="status">--%>
<%--			                                    <span class="onoffswitch-inner"></span>--%>
<%--			                                    <span class="onoffswitch-switch"></span>--%>
<%--			                                </label>--%>
<%--			                            </div>--%>
                                            <div >
                                                <input type="radio" value="1" class="status">启用
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" value="0" class="status">禁用
                                            </div>
			                        </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-8">
                                    <button class="btn btn-sm btn-white" id="myButton" type="button"><i class="fa fa-save"></i> 保存</button>
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
                        <h5>角色列表 <small>点击修改信息将显示在左边表单</small></h5>
                    </div>
                    <div class="ibox-content">
                        <div class="hr-line-dashed2"></div>
                        <div class="row">
                            <div class="table-responsive">
                            <table class="table table-striped list-table">
                                <thead>
                                    <tr>
                                        <th>选择</th>
                                        <th>角色名称</th>
                                        <th>角色描述：</th>
                                        <th>是否启用</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
<%--                                    <tr>--%>
<%--                                        <td><input  type="checkbox" checked=""></td>--%>
<%--										<td>财务</td>--%>
<%--										<td>财务</td>--%>
<%--										<td>--%>
<%--											是--%>
<%--										</td>--%>
<%--                                        <td>--%>
<%--	                                    <a href="update-role.jsp"><i class="glyphicon glyphicon-edit  text-navy"></i></a>--%>
<%--	                                    <a href="javascript:void(0)" class="btndel"><i class="glyphicon glyphicon-remove text-navy"></i></a>--%>
<%--                                        </td>--%>
<%--                                    </tr>--%>
                                    <c:forEach items="${pageInfo.list}" var="role">
                                        <tr>
                                            <td><input  type="checkbox" checked=""></td>
                                            <td>${role.rolename}</td>
                                            <td>${role.roledis}</td>
                                            <c:if test="${role.status==1}">
                                                <td>是</td>
                                            </c:if>
                                            <c:if test="${role.status==0}">
                                                <td>否</td>
                                            </c:if>
                                            <td>
                                                <a href='update-role.jsp?roleid=${role.roleid}'><i class="glyphicon glyphicon-edit  text-navy"></i></a>
                                                <a href="javascript:void(0)" class="btndel"><i class="glyphicon glyphicon-remove text-navy"></i></a>
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
<%--								<div class="btn-group">--%>

<%--								    <span>共有50页,当前是第3页</span>--%>
<%--	                                <a href=''>首页</a>--%>
<%--	                                <a href=''>上一页</a>--%>
<%--	                                <a href=''>下一页</a>--%>
<%--	                                <a href=''>尾页</a>--%>
<%--	                            </div>--%>
                                <div class="btn-group">
                                    <span>共有${pageInfo.pages}页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前是第${pageInfo.pageNum}页</span>
                                    <a href='${pageContext.request.contextPath}/showRoleInfo?pageNum=1'>首页</a>
                                    <a href='${pageContext.request.contextPath}/showRoleInfo?pageNum=${pageInfo.prePage}'>上一页</a>
                                    <a href='${pageContext.request.contextPath}/showRoleInfo?pageNum=${pageInfo.nextPage}'>下一页</a>
                                    <a href='${pageContext.request.contextPath}/showRoleInfo?pageNum=${pageInfo.pages}'>尾页</a>
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
    <!-- all (core  excheck  exedit) -->
    <script src="js/plugins/ztree/jquery.ztree.all-3.5.min.js"></script>
   <script type="application/javascript">
       $(function(){
           var setting = {
               check: {
                   enable: true
               },
               async: {
                   enable: true,
                   url: "showTreeInfo",
                   autoParam: ["id", "name"]
               }
           };
           $.fn.zTree.init($("#treeDemo"), setting);
           $("#myButton").click(function(){
               //alert("=========");
               //获取整棵树
               var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
               //获取树上被勾选的节点(对象)（数组）
               var nodes = treeObj.getCheckedNodes(true);
               if(nodes.length==0){
                   alert("请勾选当前角色的权限内容");
                   return;
               }else{
                   //获取我们的id的集合然后传递给后台 int[]
                   var ids = [];
                   for(var i=0;i<nodes.length;i++){
                       // nodes[i] 节点对象
                       ids[i]=nodes[i].id;
                   }
                   var rolename= $("#rn").val();
                   var roledis = $("#rd").val();
                   var status = $(".status").val();
                   //alert("开始转发");
                   <%--var link="${pageContext.request.contextPath}/addRole?ids="+ids+"&rolename="+rolename+"&roledis="+roledis+"&status="+status;--%>
                   <%--alert(link);--%>
                   <%--window.location.href=link;--%>

                   // ajax异步提交数据请求
                   $.ajax({
                       type:'post',
                       async:true,
                       url:'addRole?ids='+ids+'&rolename='+rolename+'&roledis='+roledis+'&status='+status,
                       dataType:'json',
                       success:function(rs){
                           if(rs.flag){
                               //swal("删除成功！", "您已经永久删除了这条信息", "success");
                               console.log(rs.flag);
                               alert("添加成功");
                               window.location.href="${pageContext.request.contextPath}/showRoleInfo?pageNum=1";
                           }else{
                               alert("添加失败");
                           }
                       }
                   });

               }
           });
       });

	// $(document).ready(function() {
	// 	// 设置按钮的样式
	// 	$('.selectpicker').selectpicker('setStyle', 'btn-white').selectpicker('setStyle', 'btn-sm');
    //
	// 	//点击删除
	// 	$('.btndel').click(function () {
	// 	    swal({
	// 	        title: "您确定要改修该角色状态吗？",
	// 	        text: "改修后将将，请谨慎操作！",
	// 	        type: "warning",
	// 	        showCancelButton: true,
	// 	        confirmButtonColor: "#DD6B55",
	// 	        confirmButtonText: "删除",
	// 	        closeOnConfirm: false
	// 	    }, function () {//此函数是点击删除执行的函数
	// 	    		//这里写ajax代码
	// 	    		// 以下是成功的提示框，请在ajax回调函数中执行
	// 		    swal("删除成功！", "您已经永久删除了这条信息。", "success");
	// 	    });
	// 	});
    //
	// });
    </script>

</body>


</html>
    
