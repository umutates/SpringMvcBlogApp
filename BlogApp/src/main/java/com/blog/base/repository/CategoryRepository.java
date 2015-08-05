package com.blog.base.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.blog.base.entity.Category;
import com.blog.base.entity.Post;

public interface CategoryRepository extends JpaRepository<Category, Long>{

	

}
