package com.blog.base.entity;


import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity(name = "Category")

public class Category {
	@Id
	@GeneratedValue
	private Long id;

	@Column(name = "CATEGORY_NAME", length = 255, nullable = true, unique = true)
    private String name;

	@OneToMany(mappedBy="category")
	private List<Post> post;
	
	@Transient
	private int categoryTotal;

	public int getCategoryTotal() {
		return categoryTotal;
	}

	public void setCategoryTotal(int categoryTotal) {
		this.categoryTotal = categoryTotal;
	}

	public Long getId() {
		return id;
	}

	public List<Post> getPost() {
		return post;
	}

	public void setPost(List<Post> post) {
		this.post = post;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}