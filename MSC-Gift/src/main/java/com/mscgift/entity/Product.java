package com.mscgift.entity;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


@Entity
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; // Product ID
	private String productName; // Product Name
	@Column(length = 3000, name ="description")
	private String description; // Product Description
	private BigDecimal price; // Price
	private BigDecimal discountedPrice; // Discounted Price
	private int stockQuantity; // Stock Quantity
	private List<String> images; // List of product images
	private Boolean isEnabled;
	private Date createdDate; // Created Date
	private Date lastUpdatedDate; // Last Updated Date
	private String productStatus; // Product Status
	private double productWeight; // Product Weight
	private double productLength;
	private double productWidth;
	private double productHeight;
	private double parcelWeight; // Product Weight
	private double parcelLength;
	private double parcelWidth;
	private double parcelHeight;     
	private Integer categoryId;
	
	// private Vendor vendor; // Vendor/Supplier Information
	// private SalesHistory salesHistory; // Sales History
	// private List<CustomPricingRule> customPricingRules; // Custom Pricing Rules
	// private VisibilitySettings visibilitySettings; // Visibility Settings
	// private TaxInformation taxInformation; // Tax Information
	// private List<Product> relatedProducts; // Related Products
	// private String sku; // SKU
    // private String brand; // Brand
	// private List<Variant> variants; // List of product variants
	// private List<String> tags; // Tags/Keywords
	// private List<String> tags; // Tags/Keywords
	// private List<CustomAttribute> customAttributes; // Custom Attributes
	// private String availabilityStatus; // Availability Status
	// private String productStatus; // Product Status
	
	
	
	
	
	
	
	
	
	
	
}








