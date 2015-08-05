package com.blog.base.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.blog.base.HomeController;
import com.blog.base.entity.Category;
import com.blog.base.entity.Post;
import com.blog.base.service.CategoryService;
import com.blog.base.service.PostService;
import com.mysql.fabric.xmlrpc.base.Array;

@Controller
@RequestMapping(value="/category")
public class CategoryController {
	
	
		
		@Autowired
		private CategoryService categoryService;
		
		private Category category;

		/**
		 * Simply selects the home view to render by returning its name.
		 */
		

		

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		
		/**
		 * Simply selects the home view to render by returning its name.
		 */
		@RequestMapping(value = "/add ", method = RequestMethod.GET)
		public String getAdd(Locale locale, Model model) {
			logger.info("Welcome home! The client locale is {}.", locale);
		
			
			model.addAttribute("category",new Category());
			
			
			return "category/categoryAdd";
		}
		@RequestMapping(value="/add",method=RequestMethod.POST)
		public String postAdd(@ModelAttribute("form")Category category,Model model){
			categoryService.Save(category);
			
			
			
			
			
			return "redirect:/";
			
		}
		public Category getCategory() {
			return category;
		}
		public void setCategory(Category category) {
			this.category = category;
		}

}
