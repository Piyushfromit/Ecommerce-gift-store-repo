package com.mscgift.service;

import java.util.List;

import com.mscgift.entity.Category;


public interface CategoryService {

	public Category saveCategory( Category category);
	
	public List<Category> getAllActiveCategory();
	
	public List<Category> getAllCategory();
	
}
