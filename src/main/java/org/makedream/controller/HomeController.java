package org.makedream.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping("/")
    public ModelAndView onView(ModelAndView modelAndView){
        modelAndView.setViewName("home");
        return modelAndView;
    }
}
