
// 表单验证   邮箱验证

function checkEmail() {
    var email = document.getElementById('email').value;
    var s_email = document.getElementById('s_email');

    //邮箱验证  正则表达式
    var reg=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;

    if (email == ''){
      s_email.innerHTML = "<font color = 'red'>邮箱为必填项</font>";
      return false;
    } else if(reg.test(email) == false){
        s_email.innerHTML = "<font color = 'red'>填写格式不正确</font>";
        return false;
    }else{
        s_email.innerHTML = "";
        return true;
    }
}

//密码验证
function checkPWD(){
  var password = document.getElementById("password").value;
  var s_pwd = document.getElementById("s_pwd");

  if (password == ""){
      s_pwd.innerHTML = "<font color='red'>密码为必填项</font>";
      return false;
  }else if(password.length < 6 ){
    s_pwd.innerHTML = "<font color='red'>密码为6-16个字符</font>";
    return false;
  }else if(password.length > 16 ){
      s_pwd.innerHTML = "<font color='red'>密码为6-16个字符</font>";
      return false;
  } else{
    s_pwd.innerHTML = "";
      return true;
  }
}

//验证码验证

function checkCode() {

  var code = document.getElementById("code").value;
  var s_code = document.getElementById("s_code");

  if (code == ''){
    s_code.innerHTML = "<font color='red'>验证码为必填项</font>";
    return false;
  }else{
    s_code.innerHTML = "";
    return true;
  }
}

/* 注册的表单验证*/

function checkMail(){
    var email = document.getElementById('mail').value;
    var s_email = document.getElementById('s_mail');

    //邮箱验证  正则表达式
    var reg=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;

    if (email == ''){
        s_email.innerHTML = "<font color = 'red'>邮箱为必填项</font>";
        return false;
    } else if(reg.test(email) == false){
        s_email.innerHTML = "<font color = 'red'>填写格式不正确</font>";
        return false;
    }else{
        s_email.innerHTML = "";
        return true;
    }
}

//验证用户名
function checkName() {
    var username = document.getElementById('userName').value;
    var s_name = document.getElementById('usernameMsg');

    var reg = /^[a-zA-Z0-9_@.]{2,6}$/;
    if (username == ""){
        s_name.innerHTML = "<font color='red'>昵称不能为空</font>";
        return false;
    }else if (reg.test(username) == false){
        s_name.innerHTML = "<font color='red'>请输入2-6个字符，可使用_ . @符号</font>";
       /* alert(1);*/
        return false;
    } else{
        s_name.innerHTML = "";
        return true;
    }


}


function checkPassword(){
    var password = document.getElementById('pwd').value;

    var s_p = document.getElementById('s_p');


    if (password == "" ){
        s_p.innerHTML = "<font color='red'>密码为必填项</font>";

        return false;
    }else if(password.length < 6 ){
        s_p.innerHTML = "<font color='red'>密码为6-16个字符</font>";
        return false;
    }else if(password.length > 16 ){
        s_p.innerHTML = "<font color='red'>密码为6-16个字符</font>";
        return false;

    } else{
        s_p.innerHTML = "";
        return true;
    }

}

/**
 * 确认密码
 * @returns {boolean}
 */
function checkRPassword(){
    var password = document.getElementById('pwd').value;
    var rpassword = document.getElementById('rpwd').value;
    var s_rpwd = document.getElementById('s_rpwd');

    if (rpassword != password) {
        s_rpwd.innerHTML = "<font color = 'red'>密码不一致</font>"
        return false;
    }else{
        s_rpwd.innerHTML = "";
    }
}



//验证邮箱验证码
/*function checkReg(){
    var reg = document.getElementById('idcode').value;
    var s_reg = document.getElementById('s_reg');

    if (reg == ""){
        s_reg.innerHTML = "<font color='red'>验证码为必填项</font>";
        return false;
    } else{
        s_reg.innerHTML = "";
        return true;
    }

}*/


// 验证所有

function checkAll(){
  if (checkEmail()&&checkPWD()&&checkCode()){
    return true;
  } else{
    return false;
  }

}



function checkAllRegister(){/*checkMail()&&*//*&&checkReg()*//*checkName()&&*/
    if (checkPassword()&&checkRPassword()){
        return true;
    }
    return true;
}



function cambiar_login() {
  document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_login";  
document.querySelector('.cont_form_login').style.display = "block";
document.querySelector('.cont_form_sign_up').style.opacity = "0";               

setTimeout(function(){  document.querySelector('.cont_form_login').style.opacity = "1"; },400);  
  
setTimeout(function(){    
document.querySelector('.cont_form_sign_up').style.display = "none";
},200);  
  }

function cambiar_sign_up(at) {
  document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_sign_up";
  document.querySelector('.cont_form_sign_up').style.display = "block";
document.querySelector('.cont_form_login').style.opacity = "0";
  
setTimeout(function(){  document.querySelector('.cont_form_sign_up').style.opacity = "1";
},100);  

setTimeout(function(){   document.querySelector('.cont_form_login').style.display = "none";
},400);  


}    



function ocultar_login_sign_up() {

document.querySelector('.cont_forms').className = "cont_forms";  
document.querySelector('.cont_form_sign_up').style.opacity = "0";               
document.querySelector('.cont_form_login').style.opacity = "0"; 

setTimeout(function(){
document.querySelector('.cont_form_sign_up').style.display = "none";
document.querySelector('.cont_form_login').style.display = "none";
},500);  
  
  }