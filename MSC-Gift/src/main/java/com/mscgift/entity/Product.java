package com.mscgift.entity;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;


@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank(message = "Product name is required")
    //@Size(max = 255, message = "Product name must not exceed 255 characters")
    private String productName;

    //@Size(max = 3000, message = "Description must not exceed 3000 characters")
    private String description;

    @NotNull(message = "Category ID is required")
    private Integer categoryId;

    @NotNull(message = "Price is required")
    private BigDecimal price;

    @NotNull(message = "Discounted price is required")
    private BigDecimal discountedPrice;

    @NotNull(message = "Stock quantity is required")
    private int stockQuantity;

    @NotNull(message = "Is enabled status is required")
    private Boolean isEnabled;

    private String imageOne;
    private String imageTwo;
    private String imageThree;
    private String imageFour;

    @NotNull(message = "Product weight is required")
    private double productWeight;

    @NotNull(message = "Product length is required")
    private double productLength;

    @NotNull(message = "Product width is required")
    private double productWidth;

    @NotNull(message = "Product height is required")
    private double productHeight;

    private Date createdDate;
    private Date updatedDate;
    
	
	//	@Id
	//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	//	private Integer id; 
	//	private String productName; 
	//	// @Column(length = 3000, name ="description")
	//	private String description; 
	//	private Integer categoryId;  
	//	private BigDecimal price; 
	//	private BigDecimal discountedPrice; 
	//	private int stockQuantity;    
	//	private Boolean isEnabled;   
	//	private String imageOne; 
	//	private String imageTwo;
	//	private String imageThree;
	//	private String imageFour;
	//	private double productWeight; 
	//	private double productLength;
	//	private double productWidth;
	//	private double productHeight;
	//	private Date createdDate;
	//	private Date updatedDate; 
	
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
	// private double parcelWeight; // Product Weight
	// private double parcelLength;
	// private double parcelWidth;
	

    public Product() {
	   // TODO Auto-generated constructor stub
    }

	public Product(Integer id, @NotBlank(message = "Product name is required") String productName, String description,
			@NotNull(message = "Category ID is required") Integer categoryId,
			@NotNull(message = "Price is required") BigDecimal price,
			@NotNull(message = "Discounted price is required") BigDecimal discountedPrice,
			@NotNull(message = "Stock quantity is required") int stockQuantity,
			@NotNull(message = "Is enabled status is required") Boolean isEnabled, String imageOne, String imageTwo,
			String imageThree, String imageFour, @NotNull(message = "Product weight is required") double productWeight,
			@NotNull(message = "Product length is required") double productLength,
			@NotNull(message = "Product width is required") double productWidth,
			@NotNull(message = "Product height is required") double productHeight, Date createdDate, Date updatedDate) {
		super();
		this.id = id;
		this.productName = productName;
		this.description = description;
		this.categoryId = categoryId;
		this.price = price;
		this.discountedPrice = discountedPrice;
		this.stockQuantity = stockQuantity;
		this.isEnabled = isEnabled;
		this.imageOne = imageOne;
		this.imageTwo = imageTwo;
		this.imageThree = imageThree;
		this.imageFour = imageFour;
		this.productWeight = productWeight;
		this.productLength = productLength;
		this.productWidth = productWidth;
		this.productHeight = productHeight;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
	}


	public Product(@NotBlank(message = "Product name is required") String productName, String description,
			@NotNull(message = "Category ID is required") Integer categoryId,
			@NotNull(message = "Price is required") BigDecimal price,
			@NotNull(message = "Discounted price is required") BigDecimal discountedPrice,
			@NotNull(message = "Stock quantity is required") int stockQuantity,
			@NotNull(message = "Is enabled status is required") Boolean isEnabled, String imageOne, String imageTwo,
			String imageThree, String imageFour, @NotNull(message = "Product weight is required") double productWeight,
			@NotNull(message = "Product length is required") double productLength,
			@NotNull(message = "Product width is required") double productWidth,
			@NotNull(message = "Product height is required") double productHeight, Date createdDate, Date updatedDate) {
		super();
		this.productName = productName;
		this.description = description;
		this.categoryId = categoryId;
		this.price = price;
		this.discountedPrice = discountedPrice;
		this.stockQuantity = stockQuantity;
		this.isEnabled = isEnabled;
		this.imageOne = imageOne;
		this.imageTwo = imageTwo;
		this.imageThree = imageThree;
		this.imageFour = imageFour;
		this.productWeight = productWeight;
		this.productLength = productLength;
		this.productWidth = productWidth;
		this.productHeight = productHeight;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
	}


	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}


	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}


	/**
	 * @return the productName
	 */
	public String getProductName() {
		return productName;
	}


	/**
	 * @param productName the productName to set
	 */
	public void setProductName(String productName) {
		this.productName = productName;
	}


	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}


	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}


	/**
	 * @return the categoryId
	 */
	public Integer getCategoryId() {
		return categoryId;
	}


	/**
	 * @param categoryId the categoryId to set
	 */
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}


	/**
	 * @return the price
	 */
	public BigDecimal getPrice() {
		return price;
	}


	/**
	 * @param price the price to set
	 */
	public void setPrice(BigDecimal price) {
		this.price = price;
	}


	/**
	 * @return the discountedPrice
	 */
	public BigDecimal getDiscountedPrice() {
		return discountedPrice;
	}


	/**
	 * @param discountedPrice the discountedPrice to set
	 */
	public void setDiscountedPrice(BigDecimal discountedPrice) {
		this.discountedPrice = discountedPrice;
	}


	/**
	 * @return the stockQuantity
	 */
	public int getStockQuantity() {
		return stockQuantity;
	}


	/**
	 * @param stockQuantity the stockQuantity to set
	 */
	public void setStockQuantity(int stockQuantity) {
		this.stockQuantity = stockQuantity;
	}


	/**
	 * @return the isEnabled
	 */
	public Boolean getIsEnabled() {
		return isEnabled;
	}


	/**
	 * @param isEnabled the isEnabled to set
	 */
	public void setIsEnabled(Boolean isEnabled) {
		this.isEnabled = isEnabled;
	}


	/**
	 * @return the imageOne
	 */
	public String getImageOne() {
		return imageOne;
	}


	/**
	 * @param imageOne the imageOne to set
	 */
	public void setImageOne(String imageOne) {
		this.imageOne = imageOne;
	}


	/**
	 * @return the imageTwo
	 */
	public String getImageTwo() {
		return imageTwo;
	}


	/**
	 * @param imageTwo the imageTwo to set
	 */
	public void setImageTwo(String imageTwo) {
		this.imageTwo = imageTwo;
	}


	/**
	 * @return the imageThree
	 */
	public String getImageThree() {
		return imageThree;
	}


	/**
	 * @param imageThree the imageThree to set
	 */
	public void setImageThree(String imageThree) {
		this.imageThree = imageThree;
	}


	/**
	 * @return the imageFour
	 */
	public String getImageFour() {
		return imageFour;
	}


	/**
	 * @param imageFour the imageFour to set
	 */
	public void setImageFour(String imageFour) {
		this.imageFour = imageFour;
	}


	/**
	 * @return the productWeight
	 */
	public double getProductWeight() {
		return productWeight;
	}


	/**
	 * @param productWeight the productWeight to set
	 */
	public void setProductWeight(double productWeight) {
		this.productWeight = productWeight;
	}


	/**
	 * @return the productLength
	 */
	public double getProductLength() {
		return productLength;
	}


	/**
	 * @param productLength the productLength to set
	 */
	public void setProductLength(double productLength) {
		this.productLength = productLength;
	}


	/**
	 * @return the productWidth
	 */
	public double getProductWidth() {
		return productWidth;
	}


	/**
	 * @param productWidth the productWidth to set
	 */
	public void setProductWidth(double productWidth) {
		this.productWidth = productWidth;
	}


	/**
	 * @return the productHeight
	 */
	public double getProductHeight() {
		return productHeight;
	}


	/**
	 * @param productHeight the productHeight to set
	 */
	public void setProductHeight(double productHeight) {
		this.productHeight = productHeight;
	}


	/**
	 * @return the createdDate
	 */
	public Date getCreatedDate() {
		return createdDate;
	}


	/**
	 * @param createdDate the createdDate to set
	 */
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}


	/**
	 * @return the updatedDate
	 */
	public Date getUpdatedDate() {
		return updatedDate;
	}


	/**
	 * @param updatedDate the updatedDate to set
	 */
	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}


	@Override
	public String toString() {
		return "Product [id=" + id + ", productName=" + productName + ", description=" + description + ", categoryId="
				+ categoryId + ", price=" + price + ", discountedPrice=" + discountedPrice + ", stockQuantity="
				+ stockQuantity + ", isEnabled=" + isEnabled + ", imageOne=" + imageOne + ", imageTwo=" + imageTwo
				+ ", imageThree=" + imageThree + ", imageFour=" + imageFour + ", productWeight=" + productWeight
				+ ", productLength=" + productLength + ", productWidth=" + productWidth + ", productHeight="
				+ productHeight + ", createdDate=" + createdDate + ", updatedDate=" + updatedDate + "]";
	}
	
    
    
	
	
	
}








