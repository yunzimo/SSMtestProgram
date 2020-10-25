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
    <link href="css/plugins/select/bootstrap-select.min.css" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>员工管理<small>>添加信息</small></h5>
                </div>
                <div class="ibox-content">
                    <form method="get" action="addEmployee" class="form-horizontal">
                        <div class="row">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">姓名</label>
                                <div class="col-sm-3">
                                    <input name="ename" type="text" class="form-control input-sm">
                                </div>
                                <label class="col-sm-2 col-sm-offset-1 control-label">地址</label>
                                <div class="col-sm-3">
                                    <input name="address" type="text" class="form-control input-sm">
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <label class="col-sm-2 control-label">部门</label>
                            <div class="col-sm-3">
                                <select name="deptFk" id="dfk" class="selectpicker form-control">

                                </select>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-offset-1 control-label">入职时间</label>
                                <div class="col-sm-3">
                                    <!--时间控件的id都不能改-->
                                    <input name="hirdate" id="start" class="laydate-icon form-control layer-date">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">邮箱</label>
                                <div class="col-sm-3">
                                    <input name="email" type="text" class="form-control input-sm">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="hr-line-dashed"></div>
                        </div>

                        <div class="row">
                            <div class="form-group">
                                <div class="col-sm-3 col-sm-offset-3 text-right">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> 保存内容</button>
                                </div>
                                <div class="col-sm-3">
                                    <a href="list-employee.jsp" class="btn btn-white"><i class="fa fa-reply"></i> 返回</a>
                                </div>
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
<script src="js/plugins/sweetalert/sweetalert.min.js"></script>
<script src="js/plugins/select/bootstrap-select.min.js"></script>
<script src="js/plugins/layer/laydate/laydate.js"></script>
<script>
    $(document).ready(function() {
        // 设置按钮的样式
        $('.selectpicker').selectpicker('setStyle', 'btn-white');
        //初始化日期控件
        laydate({elem: "#start"});




        //--------------------下面是常用代码模版---------------------------------------

        //下拉列表使用ajax加载说明例子
        function loadSelect(){

            $.ajax({
                type:'post',//请求方式
                url:'showAllDept',
                dataType:'json',
                success:function (rs) {
                    $(rs).each(function(index,item){
                        var option="<option value='"+item.deptno+"'>"+item.dname+"</option>";
                        $("#dfk").append(option);
                    });


                    $('#dfk').selectpicker('refresh');
                    //$('#ps').selectpicker('render');
                }
            });
        }
        loadSelect();

        //点击按钮，消息提示框
        $("#demo1").click(function() {
            //基本消息框－留着备用
            swal({
                title: "恭喜，添加成功",
                text: "数据添加成功，为您返回列表页！"
            })
        });

        // 选择客户公司名称时自动选对应的客户方负责人
        $("#company").change(function(){
            var thisVal=$(this).val();
            //val指value属性,选中value属性＝thisVal的选项
            $('#customer').selectpicker('val',thisVal);
        });

    });
</script>
<!-- 修复日期控件长度-->
<link href="css/customer.css" rel="stylesheet">
</body>


</html>
