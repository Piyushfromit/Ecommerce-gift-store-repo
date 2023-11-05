package com.mscgift.service;


import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.mscgift.entity.Product;

public interface ProductService {
	
	public Product saveProduct( Product product, MultipartFile[] imageFiles)throws IOException;
	
	public List<Product> getAllProduct();
	
	
	

}
