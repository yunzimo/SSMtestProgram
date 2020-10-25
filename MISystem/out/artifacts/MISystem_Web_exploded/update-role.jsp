<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>办公系统 - 基础表格</title>
    <meta name="keywords" content="办公系统">
    <meta name="description" content="办公系统">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link rel="stylesheet" href="css/plugins/zTreeStyle/zTreeStyle.css" />
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">
        <div >
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>编辑角色</h5>
                </div>
                <div class="ibox-content">

                    <input type="hidden" id="rdd" value="${param.roleid}">

                    <div class="form-group">
                        <label class="col-sm-3 control-label">角色名称：</label>

                        <div class="col-sm-8">
                            <input type="text" id="rn" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">角色描述：</label>

                        <div class="col-sm-8">
                            <input type="text" id="rd" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">角色权限：</label>

                        <div class="col-sm-8">
                            <%-- <ul>
                                <li>check1</li>
                                <li>check1</li>
                                <li>check1</li>
                                <li>
                                   <ul>
                                       <li>check2</li>
                                       <li>check2</li>
                                   </ul>
                                </li>

                             </ul>--%>
                            <div class="zTreeDemoBackground left" style="font-size: 16px">
                                <ul id="treeDemo" class="ztree"></ul>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">是否启用：</label>
                        <div class="col-sm-8">
                            <div class="switch">
                                <div >
                                    <input type="radio" value="1" id="use" class="status">启用
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" value="0" id="nouse" class="status">禁用
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-8">
                            <button class="btn btn-sm btn-white" id="myButton"><i class="fa fa-save"></i> 保存</button>
                            <button class="btn btn-sm btn-white" type="submit"><i class="fa fa-undo"></i> 重置</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>




<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/bootstrap.min.js?v=3.3.6"></script>
<script src="js/plugins/sweetalert/sweetalert.min.js"></script>
<script src="js/plugins/ztree/jquery.ztree.all-3.5.min.js"></script>
<script type="application/javascript">
    $(function(){
        $.ajax({
            type:'GET',
            url:'getOneRoleInfo',
            data:{"roleid":$("#rdd").val()},
            dataType:'json',
            success:function(rs){
                console.info(rs);
                $("#rn").val(rs.role.rolename);
                $("#rd").val(rs.role.roledis);
                if(rs.role.status==0){
                    $("#nouse").attr("checked","checked");
                }else{
                    $("#use").attr("checked","checked");
                }
                //和ztree展示相关的内容都需要去使用setting 设置
                var setting = {
                    check: {
                        enable: true
                    },
                    async: {
                        enable: true,
                        url: "showTreeInfo",
                        autoParam: ["id", "name"]
                    },
                    callback: {
                        //异步加载完成，显示我们的tree之前自动回调这个函数
                        onAsyncSuccess: function zTreeOnAsyncSuccess(event, treeId, treeNode, msg) {
                            //设定符合角色的资源勾选
                            var treeObj = $.fn.zTree.getZTreeObj("treeDemo");

                            $(rs.sources).each(function(index,item){
                                //任何获取符合条件的父节点
                                var node = treeObj.getNodeByParam("id",item.id, null);
                                //勾选我们获取的节点对象
                                treeObj.checkNode(node, true, true);
                                treeObj.selectNode(node);
                            });
                        }
                    }
                };
                $.fn.zTree.init($("#treeDemo"), setting);
            }
        });
        $("#myButton").click(function(){

            //获取整棵树
            var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
            //获取树上被勾选的节点(对象)（数组）
            var nodes = treeObj.getCheckedNodes(true);
            if(nodes.length==0){
                alert("请勾选当前角色的权限内容");
                return;
            }else{
                //获取我们的id的集合然后传递给后台 int[]
                var ids = new Array();
                for(var i=0;i<nodes.length;i++){
                    // nodes[i] 节点对象
                    ids[i]=nodes[i].id;
                }

                var rolename= $("#rn").val();
                var roledis = $("#rd").val();
                var status = $(".status").val();
                var roleid = $("#rdd").val();
                // 如果我们使用的 button标签的化，表单会自动提交 忽略js中提交方式。
                var url="${pageContext.request.contextPath}/addRole?ids="+ids+"&rolename="+rolename+"&roledis="+roledis+"&status="+status+"&roleid="+roleid;
                window.location.href=url;
            }
        });
    });

</script>

</body>


</html>