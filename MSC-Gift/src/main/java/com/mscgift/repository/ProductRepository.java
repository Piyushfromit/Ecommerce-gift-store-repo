package com.mscgift.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mscgift.entity.Product;


@Repository
public interface ProductRepository  extends JpaRepository<Product , Integer>{
	
	
	
	
	
	

}
