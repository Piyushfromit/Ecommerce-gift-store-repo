package com.mscgift.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.mscgift.entity.Category;
import com.mscgift.entity.Product;
import com.mscgift.entity.Users;
import com.mscgift.service.CategoryService;
import com.mscgift.service.ProductService;
import com.mscgift.service.UsersService;

import jakarta.servlet.http.HttpSession;



@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	public UsersService usersService;
	
	@Autowired
	public CategoryService categoryService;
	
	
	@Autowired
	public ProductService productService;
	
	
	@GetMapping("/home")
	public String adminDashboard() {
		return "admin/index";
	}
	
	
	@GetMapping("/viewcategory")
	public String viewAllCategory( final HttpSession session, final Model model) {
		
		return "admin/viewcategory";
	}
	
	@PostMapping("/addcategory")
    public String addCategory(@ModelAttribute final Category category) {
		categoryService.saveCategory(category);
		System.out.println("category Added");
        return "admin/viewcategory"; 
    }
	
	
	@GetMapping("/viewproduct")
	public String viewAllProduct( final HttpSession session, final Model model) {
		List<Category> allActiveCategory = categoryService.getAllActiveCategory() ;
		model.addAttribute("allActiveCategory", allActiveCategory);
		model.addAttribute("message", "message by piyush");
		for (Category category : allActiveCategory) {
		    System.out.println(category);
		}
		
		final HashMap<Integer, String> allcat = new HashMap<Integer, String>();
        for (final Category courses : allActiveCategory) {
        	 allcat.put(courses.getId(), courses.getCategoryname());
        	 System.out.println(courses.getId()+"=="+ courses.getCategoryname());
        }
        model.addAttribute("allcat", (Object)allcat);
        
		return "admin/viewproduct";
	}
	@PostMapping("/addproduct")
	public String addProduct(@ModelAttribute Product product, 
	                         @RequestParam("imageFileOne") MultipartFile imageOne,
	                         @RequestParam("imageFileTwo") MultipartFile imageTwo,
	                         @RequestParam("imageFileThree") MultipartFile imageThree,
	                         @RequestParam("imageFileFour") MultipartFile imageFour,
	                         HttpSession session, Model model) {
	    MultipartFile[] imageFiles = {imageOne, imageTwo, imageThree, imageFour};
	    try {
	        productService.saveProduct(product, imageFiles);
	        System.out.println("Product Added");
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    return "admin/viewproduct";
	}
	





	
	
//	@PostMapping("/addproduct")
//	public String addProduct( @ModelAttribute final Product product, final HttpSession session, final Model model) {
//		productService.saveproduct(product);
//		System.out.println("Product Added");
//		return "admin/viewproduct";
//	}
	
	
	
	@GetMapping("/allusers")
	public String getAllUsers( final HttpSession session, final Model model) {
		List<Users> users = usersService.findAllUsers();
		model.addAttribute("userList", users);
		for (Iterator iterator = users.iterator(); iterator.hasNext();) {
			Users users2 = (Users) iterator.next();
			
			System.out.println(users2.getName());
			
		}
		return "admin/all-users";
	}
	
	
}
