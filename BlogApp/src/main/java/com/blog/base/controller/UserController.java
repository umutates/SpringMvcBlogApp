package com.blog.base.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.blog.base.entity.Category;
import com.blog.base.entity.Post;
import com.blog.base.entity.Role;
import com.blog.base.entity.User;
import com.blog.base.service.UserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	UserService userService;
	@RequestMapping(value = "/add ", method = RequestMethod.GET)
	public String getAdd(Locale locale, Model model) {
		
		model.addAttribute("user",new User());
		return "user/userAdd";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String postAdd(@ModelAttribute("user") User user, Model model) {
		List<Role> roleList=new ArrayList<Role>();
		Role role=new Role();
		role.setName("USER");
		roleList.add(role);
		user.setRoles(roleList);
	userService.save(user);

		return "/login";

	}
}
