package com.mscgift.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.mscgift.entity.Category;
import com.mscgift.entity.Product;
import com.mscgift.entity.Users;
import com.mscgift.repository.CategoryRepository;
import com.mscgift.repository.ProductRepository;
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
	public CategoryRepository   categoryRepository;
	
	@Autowired
	public ProductService productService;
	
	@Autowired
	public ProductRepository productRepository;
	
	@GetMapping("/home")
	public String adminDashboard() {
		return "admin/index";
	}
	
	
	@GetMapping("/viewcategory")
	public String viewAllCategory( final HttpSession session, final Model model) {
		List<Category> allCategory = categoryService.getAllCategory() ;
		model.addAttribute("allCategoryList", allCategory);
		return "admin/category/viewcategory";
	}
	
	@GetMapping("/addcategory")
	public String addCategory( final HttpSession session, final Model model) {
		return "admin/category/addcategory";
	}
	
	@PostMapping("/addcategory")
    public String addCategory(@ModelAttribute final Category category) {
		categoryService.saveCategory(category);
		System.out.println("category Added");
        return "redirect:/admin/viewcategory"; 
    }
	
	@GetMapping("/editcategory/{id}")
	public String getMapingEditCategory(@PathVariable Integer id, final HttpSession session, final Model model) {
		model.addAttribute("id", id);
		Optional<Category> category = categoryRepository.findById(id);
		model.addAttribute("command",category.get());
		return "admin/category/editcategory";
	}
	 
	@PostMapping("/editcategory/{id}")
	public String editCategory(@PathVariable Integer id, @ModelAttribute final Category category ,final Model model) {
		// categoryService.saveCategory(category);
		Optional<Category> existcategory = categoryRepository.findById(id);
		if(existcategory.isPresent()) {
			existcategory.get().setCategoryname(category.getCategoryname());
			existcategory.get().setIsEnabled(category.getIsEnabled());
			categoryService.saveCategory(existcategory.get());
			System.out.println("Category Updated");
		}
		return "redirect:/admin/viewcategory";  
    }
	
	@GetMapping("/deletecategory/{id}")
    public String deleteStudent(@PathVariable int id) {
		Optional<Category> category = categoryRepository.findById(id); // Implement
        if (category.isPresent()) {
        	categoryRepository.deleteById(id);
        }
        System.out.println("Deleted");
        return "redirect:/admin/viewcategory"; 
    }
	
	@GetMapping("/viewproduct")
	public String viewAllProduct( final HttpSession session, final Model model) {
		List<Product> allProduct = productService.getAllProduct() ;
		model.addAttribute("allProductList", allProduct);
		return "admin/product/viewproduct";
		
	}
	
	@GetMapping("/addproduct")
	public String getMapingAddProduct( final HttpSession session, final Model model) {
		List<Category> allActiveCategory = categoryService.getAllActiveCategory() ;
		model.addAttribute("allActiveCategory", allActiveCategory);
		return "admin/product/addproduct";
	}
	
	@PostMapping("/addproduct")
	public String postMapingAddProduct(@ModelAttribute Product product, 
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
	    return "redirect:/admin/viewproduct";
	}
	
	@GetMapping("/editproduct/{id}")
	public String getMapingEditProduct(@PathVariable Integer id, final HttpSession session, final Model model) {
		model.addAttribute("id", id);
		List<Category> allActiveCategory = categoryService.getAllActiveCategory() ;
		model.addAttribute("allActiveCategory", allActiveCategory);
		Optional<Product> prodict = productRepository.findById(id);
		model.addAttribute("command",prodict.get());
		return "admin/product/editproduct";
	}

	@PostMapping("/editproduct/{id}")
	public String postMapingEditProduct(@PathVariable Integer id, @ModelAttribute final Category category ,final Model model) {
//      categoryService.saveCategory(category);
//		Optional<Category> existcategory = categoryRepository.findById(id);
//		if(existcategory.isPresent()) {
//			existcategory.get().setCategoryname(category.getCategoryname());
//			existcategory.get().setIsEnabled(category.getIsEnabled());
//			categoryService.saveCategory(existcategory.get());
//			System.out.println("Category Updated");
//		}
		return "redirect:/admin/viewproduct";  
    }
	
	
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
