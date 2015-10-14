package com.blog.base.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.blog.base.entity.Category;
import com.blog.base.entity.Post;


public interface PostRepository extends JpaRepository<Post, Long>{
	
	List<Post> findByPostTextContains(String searchContext);

	List<Post> findByCategory(Category category);

}
