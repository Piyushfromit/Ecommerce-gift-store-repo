package com.mscgift.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mscgift.entity.Category;




@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer>{
	
	
	List<Category> findByIsEnabled(Boolean t);
	

}
