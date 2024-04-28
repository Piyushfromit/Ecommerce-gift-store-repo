package com.mscgift.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mscgift.entity.Category;
import com.mscgift.entity.Product;
import com.mscgift.entity.Users;
import com.mscgift.repository.CategoryRepository;
import com.mscgift.repository.ProductRepository;
import com.mscgift.repository.UsersRepository;
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
	public UsersRepository usersRepository;

	@Autowired
	public CategoryService categoryService;

	@Autowired
	public CategoryRepository categoryRepository;

	@Autowired
	public ProductService productService;

	@Autowired
	public ProductRepository productRepository;

	@GetMapping("/viewcategory")
	public String viewAllCategory(final HttpSession session, final Model model) {
		List<Category> allCategory = categoryService.getAllCategory();
		model.addAttribute("allCategoryList", allCategory);
		return "category/viewcategory";
	}

	@GetMapping("/addcategory")
	public String addCategory(final HttpSession session, final Model model) {
		return "category/addcategory";
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
		model.addAttribute("command", category.get());
		return "category/editcategory";
	}

	@PostMapping("/editcategory/{id}")
	public String editCategory(@PathVariable Integer id, @ModelAttribute final Category category, final Model model) {
		Optional<Category> existingCategory = categoryRepository.findById(id);
		if (existingCategory.isPresent()) {
			existingCategory.get().setCategoryname(category.getCategoryname());
			existingCategory.get().setIsEnabled(category.getIsEnabled());
			categoryService.saveCategory(existingCategory.get());
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
	public String viewAllProduct(final HttpSession session, final Model model) {
		List<Product> allProduct = productService.getAllProduct();
		model.addAttribute("allProductList", allProduct);
		return "product/viewproduct";

	}

	@GetMapping("/addproduct")
	public String getMapingAddProduct(final HttpSession session, final Model model) {
		List<Category> allActiveCategory = categoryService.getAllActiveCategory();
		model.addAttribute("allActiveCategory", allActiveCategory);
		return "product/addproduct";
	}

	@PostMapping("/addproduct")
	public String postMapingAddProduct(@ModelAttribute Product product,
			@RequestParam("imageFileOne") MultipartFile imageOne, @RequestParam("imageFileTwo") MultipartFile imageTwo,
			@RequestParam("imageFileThree") MultipartFile imageThree,
			@RequestParam("imageFileFour") MultipartFile imageFour, HttpSession session, Model model) {
		MultipartFile[] imageFiles = { imageOne, imageTwo, imageThree, imageFour };
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
		List<Category> allActiveCategory = categoryService.getAllActiveCategory();
		model.addAttribute("allActiveCategory", allActiveCategory);
		Optional<Product> product = productRepository.findById(id);
		model.addAttribute("command", product.get());
		return "product/editproduct";
	}

	@PostMapping("/editproduct/{id}")
	public String postMapingEditProduct(@PathVariable Integer id, @ModelAttribute Product product,
			@RequestParam("imageFileOne") MultipartFile imageOne, @RequestParam("imageFileTwo") MultipartFile imageTwo,
			@RequestParam("imageFileThree") MultipartFile imageThree,
			@RequestParam("imageFileFour") MultipartFile imageFour, HttpSession session, Model model) {
		MultipartFile[] imageFiles = { imageOne, imageTwo, imageThree, imageFour };
		Optional<Product> existingProduct = productRepository.findById(id);
		if (existingProduct.isPresent()) {
			try {
				productService.updateProduct(product, imageFiles);
				System.out.println("Product Updated");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "redirect:/admin/viewproduct";
	}

	@GetMapping("/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id) {
		Optional<Product> product = productRepository.findById(id); // Implement
//		if (product.isPresent()) {
//			productRepository.deleteById(id);
//		}
		System.out.println("Product Deleted");
		return "redirect:/admin/viewproduct";
	}



	@GetMapping("/viewalladmin")
	public String getAllAdmin(final HttpSession session, final Model model) {
		
		List<Users> users = usersRepository.findByRoles("ROLE_ADMIN");
		if (users.size()>0) {
			model.addAttribute("alluserList", users);
		}
		return "alladmin/viewadmin";
	}
	
	@GetMapping("/viewallcustomer")
	public String getAllCustomer(final HttpSession session, final Model model) {
		
		List<Users> users = usersRepository.findByRoles("ROLE_USER");
		if (users.size()>0) {
			model.addAttribute("alluserList", users);
		}
		return "allcustomer/viewcustomer";
	}
	
	
	

}
