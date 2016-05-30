package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 进行管理后台框架界面的类
 * 
 * @author jerry_chc
 * @Email: 
 * @version 1.0v
 * @mod  Ekko 2016-05-29
 */
@Controller
@RequestMapping("/")
public class BackgroundController {
	@RequestMapping(value = "login", method = RequestMethod.GET, produces = "text/html; charset=utf-8")
	public String login(HttpServletRequest request){
		request.removeAttribute("error");
		return "login";
	}
}
