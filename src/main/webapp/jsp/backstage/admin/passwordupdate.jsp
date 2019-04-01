<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="<%=basePath%>jsp/backstage/index.jsp">首页</a></li>
        <li><a href="#">修改密码</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>修改密码</span></div>
    <form action="doUpdatePassword">
        <input name="userId" type="hidden" value="1"/>
        <ul class="forminfo">
            <li><label>*旧密码</label><input name="oldPass" type="password" class="dfinput"/></li>
            <li><label>*新密码</label><input name="newPass" type="password" class="dfinput"/></li>
            <li><label>*确认密码</label><input name="rePass" type="password" class="dfinput"/></li>
            <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认修改"/></li>
        </ul>
    </form>

</div>
</body>
</html>
