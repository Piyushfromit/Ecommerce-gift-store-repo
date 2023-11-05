package com.mscgift.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mscgift.entity.Category;
import com.mscgift.repository.CategoryRepository;



@Service
public class CategoryServiceImpl  implements CategoryService {

	@Autowired
	private CategoryRepository categoryRepository;
	
	
	@Override
	public Category saveCategory(Category category) {
		Category savedcategory = categoryRepository.save(category);
		return savedcategory;
	}


	@Override
	public List<Category> getAllActiveCategory() {
		
		List<Category> allActiveCategory = categoryRepository.findByIsEnabled(true);
		
		return allActiveCategory;
	}


	@Override
	public List<Category> getAllCategory() {
		
		List<Category> allCategory = categoryRepository.findAll();
		
		return allCategory;
	}

}
