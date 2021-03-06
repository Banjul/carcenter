<%--
  Created by IntelliJ IDEA.
  User: joy12
  Date: 2017/12/3
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/const.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>注册</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">

    <link href="${path}/static/css/jcy.css" rel="stylesheet">

    <style>
        .form-control{
            width: 30%;
        }
    </style>
</head>
<body>
    <div class="offset-50 container container-center">
        <div class="col-sm-12 col-md-12 page-title">登录</div>
        <div class="offset-30 col-sm-12 col-md-12 form-group container-flex-horizontal-center">
            <input class="form-control" id="phone" type="tel" placeholder="手机号">
        </div>
        <div class="col-sm-12 col-md-12 form-group container-flex-horizontal-center">
            <input class="form-control" id="password" type="password" placeholder="密码">
        </div>
        <div class="offset-15 col-sm-12 col-md-12 form-group container-flex-horizontal-center">
            <button class="btn-md-my btn-usual" style="width: 15%" onclick="register()">确认</button>
        </div>
        <div class="col-sm-12 col-md-12 offset-30 font-warning" style="display: none">请完善信息</div>
    </div>

</body>
</html>
<script type="text/javascript">
    function register() {
        var phone = $("#phone").val();
        var password = $("#password").val();
        if (phone!=null && password!=null){
            $.ajax({
                method: 'POST',
                url: '${path}/customer/login',
                data: {
                    phone: phone,
                    password:password
                },
                dataType: "json",
                success: function (data) {
                    if (data.success==true){
                        window.location.href="${path}/index"
                    } else {
                        alert(data.error);
                    }
                }
            });
        } else{
            $(".font-warning").show();
        }
    }
</script>
