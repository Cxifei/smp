package com.rimi.smp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 搜索页面
 *
 * @author always_on_the_way
 * @date 2018-12-18
 */
@Controller
public class SearchController {

    @RequestMapping("/searchPage")
    public ModelAndView searchPage(){
        ModelAndView view = new ModelAndView();
        view.setViewName("searchPage");
        return view;
    }

}
