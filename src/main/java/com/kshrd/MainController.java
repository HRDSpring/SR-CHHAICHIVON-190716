package com.kshrd;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping(value={"/home","/index","/",""})
	public String homePage()
	{
		return "home";
	}
	@RequestMapping("/admin")
	public String adminPage()
	{
		return "admin/admin";
	}
	
	@RequestMapping(value={"/admin/login","/admin/"})
	public String loginPage()
	{
		return "admin/login";
	}
	
	@RequestMapping(value={"/admin/user/user","/admin/user"})
	public String userPage()
	{
		return "admin/user/user";
	}
	
}
