package com.blog.base.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.base.entity.Category;
import com.blog.base.entity.Post;
import com.blog.base.repository.CategoryRepository;
import com.blog.base.repository.PostRepository;

@Service
public class CategoryService {

	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private PostRepository postRepository;

	public Category Save(Category category) {

		List<Category> categoryList = new ArrayList<Category>();
		categoryList = categoryRepository.findAll();
		List<String> catListString = new ArrayList();
		for (int i = 0; i < categoryList.size(); i++) {
			catListString.add(categoryList.get(i).getName());
		}
		if (catListString.contains(category.getName())) {
			return null;
		}

		return categoryRepository.save(category);
	}

	public void Delete(Long category) {

		categoryRepository.delete(category);
		;
	}

	public void deleteAll() {
		categoryRepository.deleteAll();

	}

	public List<Category> FindAll() {

		
	        List<Category> categoryList = new ArrayList<Category>();
	        categoryList = categoryRepository.findAll();
	        for (Category category : categoryList) {
	            category.setCategoryTotal(postRepository.findByCategory(category).size());
	        }
	        return categoryList;
	    

	}

	public CategoryRepository getCategoryRepository() {
		return categoryRepository;
	}

	public void setCategoryRepository(CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}

}
