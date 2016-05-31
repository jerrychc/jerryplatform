package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.util.Common;

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
	
	@RequestMapping(value = "login", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	public String login(String username, String password, HttpServletRequest request){
		if (Common.isEmpty(username) || Common.isEmpty(password)) {
			request.setAttribute("error", "用户名或密码不能为空！");
			return "/login";
		}
		System.out.println("------"+username);
		// 想要得到 SecurityUtils.getSubject()　的对象．．访问地址必须跟ｓｈｉｒｏ的拦截地址内．不然后会报空指针
		Subject user = SecurityUtils.getSubject();
		System.out.println("------"+user.getPrincipal());
		return "login";
	}
}
