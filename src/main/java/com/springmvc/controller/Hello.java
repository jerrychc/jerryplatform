package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller  
@RequestMapping
public class Hello {  
    @RequestMapping(value="/helloWorld")  
    public String HelloWorld(Model model){  
        model.addAttribute("message","Hello !!!");
        return "HelloWorld";  
    }  
      
}
