package com.mscgift.service;

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

}
