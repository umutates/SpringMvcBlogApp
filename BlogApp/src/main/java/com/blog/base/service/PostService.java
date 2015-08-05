package com.blog.base.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.base.entity.Category;
import com.blog.base.entity.Post;
import com.blog.base.repository.PostRepository;

@Service
public class PostService {
	@Autowired
	private PostRepository postRepository;
	@Autowired
	private CategoryService categoryService;
	
	

	public Post Save(Post post) {

		return postRepository.save(post);
	}

	public void Delete(Post post) {

		postRepository.delete(post);
	}

	public void DeleteAll() {
		postRepository.deleteAll();
	}

	public Post findOneById(Long id) {
		return postRepository.findOne(id);
	}

	public List<Post> FindAll() {
		List<Post> postList = new ArrayList<Post>();

		postList = postRepository.findAll();
		for (int i = 0; i < postList.size(); i++) {
			String postText = postList.get(i).getPostText().substring(0, 2);

			postList.get(i).setPostText(postText);

		}
		return postList;
	}

	public List<Post> findByCategory(Category category) {
		List<Post> postList = new ArrayList<Post>();
		postList = postRepository.findByCategory(category);

		return postList;

	}
	

}
