<%--
  Created by IntelliJ IDEA.
  User: SDH
  Date: 2020/4/25
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Loding font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,700" rel="stylesheet">

    <!-- Custom Styles -->
    <link rel="stylesheet" type="text/css" href="./css/styles.css">

    <title>Login</title>
</head>
<body>

<!-- Backgrounds -->

<div id="login-bg" class="container-fluid">

    <div class="bg-img"></div>
    <div class="bg-color"></div>
</div>

<!-- End Backgrounds -->

<div class="container" id="login">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="login">

                <h2>基于用户的协同过滤推荐算法系统</h2>
                <h1>登录</h1>

                <!-- 登录表单 -->
                <form action="/LoginServlet">
                    <div class="form-group">
                        <input type="用户名" class="form-control" id="username" aria-describedby="usernameHelp" placeholder="Enter username">

                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="Password" placeholder="Password">
                    </div>

                    <br>
                    <button type="submit" class="btn btn-lg btn-block btn-success">登录</button>
                </form>
                <!-- 表单结束 -->

            </div>github源码地址 <a href="https://github.com/Nikotesla-s/movieRecommendSystem" target="_blank" title="Nikotesla-s">时德虎</a>
        </div>
    </div>
</div>


</body>
</html>
