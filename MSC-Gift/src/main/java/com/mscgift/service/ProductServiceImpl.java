package com.mscgift.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mscgift.entity.Category;
import com.mscgift.entity.Product;
import com.mscgift.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {

	@Value("${file.upload.path}")
    private String uploadPath;
	
	@Autowired
	ProductRepository productRepository;
	
	@Override
	public Product saveProduct(Product product, MultipartFile[] imageFiles) throws IOException {
	        
		List<String> imageNames = saveImages(imageFiles);

		for(int i=0; i<imageNames.size(); i++) {
			if(i==0) {
				product.setImageOne(imageNames.get(0));
			}
			if(i==1) {
				product.setImageOne(imageNames.get(1));
			}
			if(i==2) {
				product.setImageOne(imageNames.get(2));
			}
			if(i==3) {
				product.setImageOne(imageNames.get(3));
			}
		}
        
        // Save the product to the database
        Product savedProduct = productRepository.save(product);

        return savedProduct;
	}
	
	
	@Override
	public Product updateProduct(Product product, MultipartFile[] imageFiles) throws IOException {
	        
		List<String> imageNames = saveImages(imageFiles);

		for(int i=0; i<imageNames.size(); i++) {
			if(i==0) {
				product.setImageOne(imageNames.get(0));
			}
			if(i==1) {
				product.setImageOne(imageNames.get(1));
			}
			if(i==2) {
				product.setImageOne(imageNames.get(2));
			}
			if(i==3) {
				product.setImageOne(imageNames.get(3));
			}
		}
        
        // Save the product to the database
        Product savedProduct = productRepository.save(product);

        return savedProduct;
	}
	
	
	
	
	private List<String> saveImages(MultipartFile[] imageFiles) throws IOException {
	    
		List<String> imageNames = new ArrayList<>();

	    for (MultipartFile imageFile : imageFiles) {
	        if (!imageFile.isEmpty()) {
	            
	        	String originalFilename = imageFile.getOriginalFilename();
	            String extension = originalFilename.substring(originalFilename.lastIndexOf("."));

	            // Generate a unique 10-character alphanumeric file name
	            String uniqueFileName = generateUniqueFileName();

	            // Create the full path for saving the image
	            Path imagePath = Path.of(uploadPath, uniqueFileName + extension);

	            // Save the image file
	            Files.write(imagePath, imageFile.getBytes());

	            // Add the unique image name to the list
	            imageNames.add(uniqueFileName + extension);
	        } else {
	            // Handle empty image file appropriately
	            // You can skip this or add error handling
	        }
	    }

	    return imageNames;
	}
	
    private String generateUniqueFileName() {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder uniqueName = new StringBuilder(10);
        Random random = new Random();

        for (int i = 0; i < 10; i++) {
            uniqueName.append(characters.charAt(random.nextInt(characters.length())));
        }

        return uniqueName.toString();
    }

    
    
	@Override
	public List<Product> getAllProduct() {
		
        List<Product> allProduct = productRepository.findAll();
		
		return allProduct;
	}
   





	
    
}
