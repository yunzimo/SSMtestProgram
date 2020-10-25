<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>优就业-线医疗管理系统</title>
    <link rel="icon" href="Images/logo_favicon.ico" type="image/x-icon"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/main-min.css" rel="stylesheet" type="text/css"/>
</head>
<body>


<div class="content">
    <div class="dl-main-nav">
        <div class="dl-inform">
            <div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div>
        </div>
        <ul id="J_Nav" class="nav-list ks-clear" style="float:left">
            <li style=" color:#fff; font-size:20px; margin-top:10px; margin-left:20px;font-weight: bold;">优就业-在线医疗管理系统
            </li>
        </ul>
        <div style="float:right; color:#fff;margin-top: 11px;margin-right: 20px;font-weight: bold;">欢迎您，
            <span class="dl-log-user">${users.name }</span>
            <a href="loginOut" title="退出系统" class="dl-log-quit">[退出]</a></div>
    </div>

    <ul id="J_NavContent" class="dl-tab-conten">
    </ul>
</div>
<script type="text/javascript" src="assets/js/jquery-1.6.js"></script>
<script type="text/javascript" src="assets/js/bui.js"></script>
<script type="text/javascript" src="assets/js/common/main-min.js"></script>
<script type="text/javascript" src="assets/js/config-min.js"></script>


<script>
    var json = null;
    /* 获取动态资源 */
    $.ajax({
        url: "getAllResInfo",
        type: "post",
        dataType: "json",
        async: false,
        success: function (obj) {
            json = obj;
        }
    });
    BUI.use('common/main', function () {
        var config = [
            {
                id: '1', menu: [

                    {
                        text: '业务办理', items:json
                            // [   //菜单资源
                            //     {id: '2', text: '挂号信息管理', href: 'findRegister'},
                            //     {id: '5', text: '住院办理', href: 'hospital/index.html'},
                            //     {id: '8', text: '住院结算', href: 'hospital/account.html'},
                            //     {id: '7', text: '在院发药', href: 'hospital/dispensing.html'},
                            //     {id: '4', text: '药品管理', href: 'medicine/index.html'},
                            //     {id: '16', text: '检查收费项目登记', href: 'hospital/charge2.html'},
                            //     {id: '6', text: '收费项目管理', href: 'hospital/charge.html'}
                            // ]
                    }

                ]
            }

        ];
        new PageUtil.MainPage({
            modulesConfig: config
        });
    });
</script>
</body>
</html>