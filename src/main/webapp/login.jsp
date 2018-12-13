<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up Login</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="cotn_principal">
    <div class="cont_centrar">
        <div class="cont_login">
            <div class="cont_info_log_sign_up">
                <div class="col_md_login">
                    <div class="cont_ba_opcitiy">
                        <h2>登录</h2>
                        <p>如果您已经有一个我们的账号</p>
                        <button class="btn_login" onClick="cambiar_login()">登录</button>
                    </div>
                </div>
                <div class="col_md_sign_up">
                    <div class="cont_ba_opcitiy">
                        <h2>注册</h2>
                        <p>如果您还没有我们的账号</p>
                        <button class="btn_sign_up" onClick="cambiar_sign_up()">注册</button>
                    </div>
                </div>
            </div>
            <div class="cont_back_info">
                <div class="cont_img_back_grey"><img src="images/po.jpg" alt=""/></div>
            </div>
            <div class="cont_forms">
                <div class="cont_img_back_"><img src="images/po.jpg" alt="图片加载中....."/></div>
                <form action="/login" method="post">
                    <div class="cont_form_login"><a href="#" onClick="ocultar_login_sign_up()"><i
                            class="material-icons">&#xE5C4;</i></a>
                        <h2 style="margin-top: 55px">登录</h2>
                        <input type="text" placeholder="邮箱" name="email"/>
                        <input type="password" placeholder="密码" name="password"/>
                        <div><input type="text" name="code" id="code" width="102px" placeholder="验证码"/>
                            <img src="/ValidateCode" id="image" width="83px" height="50px"/></div>
                        <div><a href="#" onclick="run()">换一张</a></div>
                        <button class="btn_login" type="submit" onClick="cambiar_login()">登录</button>
                    </div>
                </form>
                <div class="cont_form_sign_up"><a href="#" onClick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>

                    <h2>注册</h2>
                    <input type="text" placeholder="邮箱"/>
                    <input type="text" placeholder="昵称"/>
                    <input type="password" placeholder="密码"/>
                    <input type="password" placeholder="确认密码"/>
                    <button class="btn_sign_up" onClick="cambiar_sign_up()">注册</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="js/login.js"></script>
<div style="text-align:center;">
</div>
</body>
</html>
