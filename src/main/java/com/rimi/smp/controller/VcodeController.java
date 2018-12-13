package com.rimi.smp.controller;

import com.rimi.smp.util.VcodeUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 惜-梦
 * @description 获取验证码
 * @date 2018-12-13 09:37
 */

@Controller
public class VcodeController {

    @RequestMapping(value = "/ValidateCode" ,method = RequestMethod.GET)
    public void validataCode(HttpServletResponse response , HttpServletRequest request) throws IOException {

        //获取生成的验证码图片
        VcodeUtil.VCode(request,response);
        return;

    }


}
