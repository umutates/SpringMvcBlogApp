package com.blog.base;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.blog.base.entity.Category;
import com.blog.base.entity.Post;
import com.blog.base.service.CategoryService;
import com.blog.base.service.PostService;
import com.mysql.fabric.xmlrpc.base.Array;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/")
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
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

		List<Post> postlist = new ArrayList<Post>();
		postlist = postService.FindAll();
		List<Category> categorylist = new ArrayList<Category>();
		categorylist = categoryService.FindAll();
		

		model.addAttribute("postList", postlist);
		model.addAttribute("categoryList", categorylist);
		logger.info("-----------------------------uzunluk  " + categorylist.size());
		return "home";
	}

	@RequestMapping(value = "/findByCategory/{id}", method = RequestMethod.GET)
	public String categoryList(@PathVariable Long id, Model model) {

		List<Post> postlist = new ArrayList<Post>();
		Category category = new Category();
		category.setId(id);
		postlist = postService.findByCategory(category);
		logger.info("------------------" + postlist.size());
		List<Category> categorylist = new ArrayList<Category>();
		categorylist = categoryService.FindAll();
		int size = postlist.size();
		model.addAttribute("size", size);
		model.addAttribute("postList", postlist);
		model.addAttribute("categoryList", categorylist);
		return "home";
	}

	@RequestMapping(value = "/findOneById/{id}", method = RequestMethod.GET)
	public String postOne(@PathVariable Long id, Model model) {

		List<Post> postlist = new ArrayList<Post>();

		postlist.add(postService.findOneById(id));
		logger.info("------------------" + postlist.size());
		List<Category> categorylist = new ArrayList();
		categorylist = categoryService.FindAll();

		model.addAttribute("postList", postlist);
		model.addAttribute("categoryList", categorylist);
		return "post/postview";
	}

}
