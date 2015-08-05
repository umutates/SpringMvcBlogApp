/**
 * 
 */
package com.blog.base.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.blog.base.HomeController;
import com.blog.base.entity.Category;
import com.blog.base.entity.Post;
import com.blog.base.service.CategoryService;
import com.blog.base.service.PostService;

/**
 * @author umutates
 *
 */
@Controller
@RequestMapping(value = "/post")
public class PostController {

	@Autowired
	private PostService postService;
	@Autowired
	private CategoryService categoryService;

	private Post post;

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/add ", method = RequestMethod.GET)
	public String getAdd(Locale locale, Model model) {
		List<Category> cList = new ArrayList<Category>();

		List<Category> categoryList = categoryService.FindAll();

		Map<String, String> categoryMap = new HashMap<String, String>();
		if (categoryList != null && !categoryList.isEmpty()) {
			for (Category category : categoryList) {
				if (category != null) {
					categoryMap.put(category.getName(), category.getId().toString());
				}
			}
		}

		Set<Map.Entry<String, String>> categories;
		categories = categoryMap.entrySet();
		model.addAttribute("categories", categories);

		logger.info("Welcome home! The client locale is {}.", locale);
		model.addAttribute("post", new Post());
		return "post/postAdd";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String postAdd(@ModelAttribute("form") Post post, Model model) {
		postService.Save(post);

		return "redirect:/post/postList";

	}

	@RequestMapping(value = "/deleteAll", method = RequestMethod.GET)
	public String postDeleteAll(@ModelAttribute("form") Post post, Model model) {

		postService.DeleteAll();
		categoryService.deleteAll();
		return "redirect:/post/postList";

	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String getDelete(Model model) {
		return "post/postDelete";
	}

	@RequestMapping(value = "/delete/{postId}", method = RequestMethod.GET)
	public String DeleteOne(@PathVariable Long postId) {
		Post post = postService.findOneById(postId);
		postService.Delete(post);
		return "redirect:/post/postList";
	}

	@RequestMapping(value = "/postList", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		List<Post> postlist = new ArrayList<Post>();
		postlist = postService.FindAll();
		logger.info("" + postlist.size());
		List<Category> categorylist = new ArrayList();
		categorylist = categoryService.FindAll();

		model.addAttribute("postList", postlist);
		model.addAttribute("categoryList", categorylist);

		return "post/postList";
	}

	@RequestMapping(value = "/findOneById/{id}", method = RequestMethod.GET)
	public String getEdit(@PathVariable Long id, Model model) {
		List<Category> cList = new ArrayList<Category>();

		List<Category> categoryList = categoryService.FindAll();

		Map<String, String> categoryMap = new HashMap<String, String>();
		if (categoryList != null && !categoryList.isEmpty()) {
			for (Category category : categoryList) {
				if (category != null) {
					categoryMap.put(category.getName(), category.getId().toString());
				}
			}
		}

		Set<Map.Entry<String, String>> categories;
		categories = categoryMap.entrySet();
		model.addAttribute("categories", categories);

		Post post = new Post();
		post = postService.findOneById(id);

		model.addAttribute("post", post);

		return "post/postEdit";
	}

	@RequestMapping(value = "/edit/{postId}", method = RequestMethod.POST)
	public String postEdit(@PathVariable Long postId, @ModelAttribute("form") Post post) {
		Post postChange = postService.findOneById(postId);
		logger.info("aaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+postChange.getName());
		if (!postChange.equals(null)) {
			postService.Delete(postChange);
			
			postChange = post;
			postService.Save(postChange);
		}

		return "redirect:/post/postList";
	}

}
