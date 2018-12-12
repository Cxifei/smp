package com.rimi.smp.interceptor;

import com.rimi.smp.util.Constant;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author 惜-梦
 * @description 登录拦截器
 * @date 2018-12-12 18:18
 */

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public  boolean preHandle(HttpServletRequest request , HttpServletResponse response , Object handle) throws IOException {

        //判断用户是否登录
        HttpSession session = request.getSession();

        Object userinfo = session.getAttribute(Constant.SEESSION_USER_INFO);

        if (userinfo == null){

            //重定向
            response.sendRedirect("/");

            return  false;
        }
        return true;


    }

}
