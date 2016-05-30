package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller  
@RequestMapping(value="/hello")
public class Hello {  
    @RequestMapping(value="/helloWorld")  
    public String HelloWorld(Model model){  
        model.addAttribute("message","Hello !!!");
        System.out.println("111111");
        return "HelloWorld";  
    }  
      
}
