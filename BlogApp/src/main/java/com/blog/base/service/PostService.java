package com.blog.base.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
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
			String postText = postList.get(i).getPostText();

			postList.get(i).setPostText(postText);

		}
		return postList;
	}

	public List<Post> findByCategory(Category category) {
		List<Post> postList = new ArrayList<Post>();
	
	postList= postRepository.findByCategory(category);

		return postList;

	}

	public void editPost(Long id,Post postChange) {
		Post post =postRepository.findOne(id);
		if (post != null) {
		
		post.setCategory(postChange.getCategory());
		post.setPostText(postChange.getPostText());
		post.setName(postChange.getName());
		
		postRepository.save(post);}

	}

	public Page<Post> getPostsByPage(int pageNumber){
		   PageRequest request =
		            new PageRequest(pageNumber - 1, 3);
		   Page<Post> postList=postRepository.findAll(request);
		  
		   for (int i = 0; i < postList.getContent().size(); i++) {
				String postText = postList.getContent().get(i).getPostText();

				postList.getContent().get(i).setPostText(postText);

			}
		  
		   return postList;     
	}

}
