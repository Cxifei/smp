package com.rimi.smp.controller;

import com.rimi.smp.pojo.User;
import com.rimi.smp.service.ILoginService;
import com.rimi.smp.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author 惜-梦
 * @description
 * @date 2018-12-12 17:52
 */
@Controller
public class LoginController {

    @Autowired
    private ILoginService loginService;

    @Autowired
    private IUserService userService;

    @ResponseBody
    @RequestMapping(value="/login" , method = RequestMethod.POST)
    public ModelAndView login(String email , String password , String code ,HttpServletRequest request){
        boolean b = loginService.login(email, password, code, request);
        if (b){
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setViewName("/index");
            User user = userService.getUserByEmail(email);
            modelAndView.addObject("user",user);
            return modelAndView;
        }
        return new ModelAndView("/login");
    }

}
