package com.blog.base.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.blog.base.entity.Category;
import com.blog.base.entity.Post;
import com.blog.base.service.CategoryService;
import com.blog.base.service.PostService;

@Controller
@RequestMapping(value="/index")
public class IndexController {
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	@Autowired
	private PostService postService;
	@Autowired
	private CategoryService categoryService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		List<Post> postlist=new ArrayList<Post>();
		postlist=postService.FindAll();
		List<Category> categorylist=new ArrayList<Category>();
		categorylist=categoryService.FindAll();
		
			model.addAttribute("postList",postlist);
			model.addAttribute("categoryList",categorylist);
		logger.info("-----------------------------uzunluk  "+categorylist.size());
		return "index";
	}

}
