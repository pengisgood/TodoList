package org.makedream.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {

    @RequestMapping("/hello")
    public ModelAndView sayHello(ModelAndView modelAndView){
        modelAndView.setViewName("hello");
        modelAndView.addObject("userName", "Max Peng");
        return modelAndView;
    }
}
