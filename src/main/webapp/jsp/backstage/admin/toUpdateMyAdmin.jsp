<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="<%=basePath%>jsp/backstage/css/style.css" rel="stylesheet" type="text/css" />
    <script language="<%=basePath%>jsp/backstage/js/jquery.js"></script>
    <script>
        //用于弹出窗口，将服务器返回的数据提交，本处用于账户提交后的状态
        function alert_myMessage(){
            var message="";
            if(message!=""){
                alert(message);
            }
        }

        $(document).ready(function(){
            //用于弹出窗口，将服务器返回的数据提交，本处用于账户提交后的状态
            alert_myMessage();
        });

    </script>
</head>
<body>
<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">修改基本信息</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>修改基本信息</span></div>
    <form action="http://120.78.138.95:8080/lcvc_ebuy/admin/admin/doUpdateMyAdmin">
        <ul class="forminfo">
            <li><label>*账户名</label><input name="username" type="text" class="dfinput" value="user"/></li>
            <li><label>*网名</label><input name="screenName" type="text" class="dfinput" value="阿斯顿发1"/></li>
            <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认修改"/></li>
        </ul>
    </form>

</div>
</body>

</body>
</html>
