package com.rimi.smp.controller;

import com.rimi.smp.pojo.User;
import com.rimi.smp.service.IRegisterService;
import com.rimi.smp.service.IUserService;
import com.rimi.smp.util.Constant;
import com.rimi.smp.util.MailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author 惜-梦
 * @description 注册
 * @date 2018-12-14 17:38
 */
@Controller
public class RegisterController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IRegisterService registerService;
    @RequestMapping("/register")
    public ModelAndView regist(String email , String username, String password, String idcode, HttpServletRequest request,HttpServletResponse response) throws IOException {

        boolean b = registerService.register(email, username, password,request);

        if (!b){
            response.sendRedirect("/login.jsp");
            return null;

        }

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:index");
        User user  = (User) request.getSession().getAttribute(Constant.SEESSION_USER_INFO);
        modelAndView.addObject(Constant.SEESSION_USER_INFO,user);

        System.out.println(idcode);
        return modelAndView;

    }

    @ResponseBody
    @RequestMapping(value = "/checkUserName")
    public String  checkUserName(String username , HttpServletRequest request){

        if(userService.findUserByUserName(username)!= null ){
            request.getSession().setAttribute("usernameMsg", "用户名已存在！");
            return "error";
        }

        return "success";
    }

    @ResponseBody
    @RequestMapping(value = "/checkECode")
    public String checkIdCode(String idcode , HttpServletRequest request){
        String data = null;
        if(!request.getSession().getAttribute("idcode").equals(idcode)){

            request.getSession().setAttribute("s_reg", "验证码错误！");
            data = "error";
            return data;

        }

        return "success";
    }

    /**
     *  邮箱验证码 异步请求处理
     */
    @ResponseBody
    @RequestMapping(value = "/mail",method = RequestMethod.GET)
    public String AjaxSendIdCode(String mail, HttpServletResponse response, HttpServletRequest request) {
        response.setCharacterEncoding("utf-8");
        int idcode = (int) (Math.random()*100000);
        String text = Integer.toString(idcode);

        System.out.println(text);

        request.getSession().setAttribute("idcode", text);
        new MailUtil().sendMail(mail, text);
        return "succeed";
    }


}
