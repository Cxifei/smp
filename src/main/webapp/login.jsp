<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up Login</title>
    <link rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript">
        $(function(){
            $("#userName").on("blur",function(){
                //验证用户名  长度的为2-6个字符
                var reg = /^[a-zA-Z0-9_@.]{2,6}$/;

                var username = $("#userName").val();

                if (!reg.test(username)){
                    // $("#usernameMsg").attr("style","display:block;");//显示div
                    // $("#usernameMsg").val("长度为2-6个字符");
                    // setTimeout(function(){
                    //     $("#usernameMsg").attr("style","display:none;")
                    //     $("#usernameMsg").val("");
                    // },3000);
                    $("#usernameMsg1").hide();
                    $("#usernameMsg2").show(1000);
                    return;
                }

                $.ajax({
                    url:"/checkUserName",/*sendUserName.action*/
                    type:"GET",
                    data:"username="+$("#userName").val(),
                    timeout:5000,
                    success:function(data){
                        if(data == "error"){
                            //$("#usernameMsg").css("display","inline");
                            $("#usernameMsg2").hide();
                            $("#usernameMsg1").show(1000);

                        }else{
                            $("#usernameMsg1").hide();

                        }
                    },
                    error:function(){

                    }
                })
            });


            $("#idcode").blur(function(){
                $.ajax({
                    url:"/checkECode",/*sendUserName.action*/
                    type:"GET",

                    data:"idcode="+$("#idcode").val(),
                    timeout:5000,
                    success:function(data){
                        if(data == "error"){
                            //$("#usernameMsg").css("display","inline");
                            $("#s_reg").show(1000);
                        }else{
                            $("#s_reg").hide();

                        }
                    },
                    error:function(){

                    }
                })
            });

            $("#sendidcode").click(function(){
                if($("#mail").val() == ""){
                    $("#sendidcode").attr("disabled","true");
                    $("#sendidcode").val("邮箱地址未填");
                    setTimeout(function(){
                        $("#sendidcode").removeAttr("disabled");
                        $("#sendidcode").val("发送验证码");
                    },2000);

                    return;
                }
                var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
                if(!myreg.test($("#mail").val())){
                    $("#sendidcode").attr("disabled","true");
                    $("#sendidcode").val("邮箱格式错误");
                    setTimeout(function(){
                        $("#sendidcode").removeAttr("disabled");
                        $("#sendidcode").val("发送验证码");
                    },1000);
                    return;
                }


                 $("#sendidcode").attr("disabled","true");
                    $("#sendidcode").attr("value","正在发送");

                setTimeout(function(){
                    $("#sendidcode").removeAttr("disabled");
                    $("#sendidcode").val("发送验证码");
                },10000);


                $.ajax({
                    url:"/mail",
                    type:"GET",
                    //发送数据的第一种格式，字符串...
                    data:"mail="+$("#mail").val(),
                    timeout:30000,
                    success:function(data){
                        /*alert(data)*/
                        $("#sendidcode").attr("value","验证码已发送");
                    },
                    error:function(){

                    }
                });
            });
        });

    </script>


    <style type="text/css">

        .warning {
            color: red;
            width:200px;
            height:30px;
            display: none;
        }

    </style>
</head>

<body>

<div class="cotn_principal">
    <div class="cont_centrar">
        <div class="cont_login">
            <div class="cont_info_log_sign_up">
                <div class="col_md_login" style="margin-top: 100px">
                    <div class="cont_ba_opcitiy">
                        <h2>登录</h2>
                        <p>如果您已经有一个我们的账号</p>
                        <button class="btn_login" onClick="cambiar_login()">登录</button>
                    </div>
                </div>
                <div class="col_md_sign_up">
                    <div class="cont_ba_opcitiy" style="margin-top: 160px">
                        <h2>注册</h2>
                        <p>如果您还没有我们的账号</p>
                        <button class="btn_sign_up" onClick="cambiar_sign_up()" style="width: 200px">注册</button>
                    </div>
                </div>
            </div>
            <div class="cont_back_info" style="height: 550px">
                <div class="cont_img_back_grey">
                    <img src="images/login.jpg" alt="加载中..."/>
                </div>
            </div>
            <div class="cont_forms" style="height: 550px" >
                <div class="cont_img_back_"><img src="images/login.jpg" alt="图片加载中..."/></div>
                <form action="/login" method="post" onsubmit=" return checkAll()">
                    <div class="cont_form_login"><a href="#" onClick="ocultar_login_sign_up()"><i
                            class="material-icons">&#xE5C4;</i></a>
                        <h2 style="margin-top: 55px">登录</h2>
                        <input type="text" placeholder="邮箱" name="email" id="email" onblur="checkEmail()" style="margin-top: 40px"/> <br/>
                        <span id="s_email"></span>
                        <input type="password" placeholder="密码" name="password" id="password" onblur="checkPWD()" style="margin-top: 38px"/> <br/>
                        <span id="s_pwd"></span>
                        <div style="margin-top: 18px">
                            <input type="text" style="padding-left: 5px; padding-right: 5px; padding-bottom: 2px;height: 37px;padding-top: 8px;"
                                   name="code" id="code" width="102px" placeholder="验证码" onblur="checkCode()"/>
                            <a href="#" > <img src="/ValidateCode" id="image" width="92px" height="50px" onclick="run()"> </a><br/>
                        </div>
                        <div style="margin-left: 10px">
                            <span id="s_code" style="margin-right: 25px"></span>
                        </div>
                        <button class="btn_login" type="submit" onClick="cambiar_login()">登录</button>
                    </div>
                </form>

                <form action="/register" method="post" onsubmit="return checkAllRegister() ">
                    <div class="cont_form_sign_up"><a href="#" onClick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>

                        <h2>注册</h2>

                        <input type="text" placeholder="邮箱" required="required" name="email" id="mail" <%--onblur="checkMail()"--%> />
                        <span><input type="button" value="发送验证码" id="sendidcode"/></span> <br/>
                        <span id="s_mail"></span>

                        <input type="text" placeholder="昵称"  required="required" name="username" id="userName" <%--onblur="checkName()"--%>/><br/>

                            <span class="warning" id="usernameMsg1">用户名已存在</span>
                            <span class="warning" id="usernameMsg2">长度为2-6个字符</span>


                        <input type="password" placeholder="密码"  required="required" name="password" id="pwd" onblur="checkPassword()" /><br/>
                        <span id="s_p" ></span>

                        <input type="password" placeholder="确认密码"  required="required" name="rpassword" id="rpwd" onblur="checkRPassword()"/><br/>
                        <span id="s_rpwd" ></span>

                        <input type="text" placeholder="邮箱验证码"  required="required"  name="idcode" id="idcode" onblur="checkReg()" /><br/>

                        <span class="warning" id="s_reg">验证码错误</span><br/>

                        <button class="btn_sign_up" type="submit" >注册</button>
                        <button class="btn_sign_up" type="reset" >重置</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="js/login.js"></script>
<div style="text-align:center;">
</div>
</body>
</html>
