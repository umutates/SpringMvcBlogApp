package com.blog.base;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.blog.base.entity.Category;
import com.blog.base.entity.Post;
import com.blog.base.service.CategoryService;
import com.blog.base.service.PostService;
import com.blog.base.service.SearchService;
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

	@Autowired
	private SearchService searchService;

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
		return "redirect:/pages/1";
	}
	
	@RequestMapping(value = "/pages/{pageNumber}", method = RequestMethod.GET)
	public String getRunbookPage(@PathVariable Integer pageNumber, Model model) {
	    Page<Post> page = postService.getPostsByPage(pageNumber);
	    int current = page.getNumber() + 1;
	    int begin = Math.max(1, current - 5);
	    int end = Math.min(begin + 5, page.getTotalPages());
	    List<Category> categorylist = new ArrayList<Category>();
		categorylist = categoryService.FindAll();
        model.addAttribute("categoryList",categorylist);
	    model.addAttribute("postList",page.getContent());
	    model.addAttribute("page", page);
	    model.addAttribute("beginIndex", begin);
	    model.addAttribute("endIndex", end);
	    model.addAttribute("currentIndex", current);

	    return "home";
	}

	@RequestMapping(value = "/findByCategory/{id}", method = RequestMethod.GET)
	public String categoryList(@PathVariable Long id, Model model) {

		List<Post> postlist = new ArrayList<Post>();
		Category category = new Category();
		category.setId(id);
		postlist=postService.findByCategory(category);
	    List<Category> categorylist = new ArrayList<Category>();
		categorylist = categoryService.FindAll();
        model.addAttribute("categoryList",categorylist);
    	model.addAttribute("postList", postlist);		
    	return "home";
	}

	@RequestMapping(value = "/Search", method = RequestMethod.POST	)
	public String searchList(@RequestParam("searchContext")String searchContext, Model model) {

		List<Post> postlist = new ArrayList<Post>();
        postlist=searchService.Search(searchContext);
        logger.info("---------------->"+searchContext);
		logger.info("------------------" + postlist.size());
		List<Category> categorylist = new ArrayList<Category>();
		categorylist = categoryService.FindAll();
		int size = postlist.size();
		model.addAttribute("postList", postlist);
		model.addAttribute("categoryList", categorylist);
		return "home";
	}

	@RequestMapping(value = "/findOneById/{id}", method = RequestMethod.GET)
	public String postOne(@PathVariable Long id, Model model) {

		List<Post> postlist = new ArrayList<Post>();

		postlist.add(postService.findOneById(id));
		logger.info(
				""+ postlist.size());
		List<Category> categorylist = new ArrayList();
		categorylist = categoryService.FindAll();

		model.addAttribute("postList", postlist);
		model.addAttribute("categoryList", categorylist);
		return "post/postview";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(
		@RequestParam(value = "error", required = false) String error,
		@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}

}
