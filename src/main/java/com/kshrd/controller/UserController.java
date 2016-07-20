package com.kshrd.controller;

import java.util.ArrayList;

import org.apache.jasper.tagplugins.jstl.core.Redirect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kshrd.model.User;
import com.kshrd.services.UserService;

@Controller
public class UserController {
	
	
	@Autowired
	private UserService  userService;
	
	// Function get data
	/*@RequestMapping("/get")
	@ResponseBody
	public ArrayList<User> findUser(){	
		return userService.findUsers();
	}*/

	@RequestMapping("/home")
	public String findUser(ModelMap m){
		m.addAttribute("users" , userService.findUsers());
		return "home";
	}
	
	@RequestMapping(value={"/addUser","/add"}, method = RequestMethod.GET)
	public String addUser(User user,ModelMap model){
		model.addAttribute("user" , new User());
		return "add";
	}
	
	@RequestMapping(value={"/addUser","/add"}, method = RequestMethod.POST)
	public String register(User user, ModelMap model){
		boolean b = userService.insertUser(user);
		if(b){
			return "redirect:/home";
		}
		else return "";
	
	}
	
	
	
	//Function update data
	@RequestMapping("/update")
	@ResponseBody
	public boolean updateUser(User user){
		user = new User();
		user.setId(2);
		user.setUsername("POJO");
		user.setCl_room("SR9999");
		return userService.updateUser(user);
	}
	//Function update data
		@RequestMapping("/insert")
		@ResponseBody
		public boolean insertUser(User user){
			user = new User();
			user.setId(10);
			user.setUsername("xvxdsc");
			user.setCl_room("SR99zczxc99");
			return userService.insertUser(user);
		}
	
	
}
