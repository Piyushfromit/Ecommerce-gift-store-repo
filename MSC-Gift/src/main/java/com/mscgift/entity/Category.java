package com.mscgift.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Category {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String category;
	private Boolean isEnabled;
	
	
	
	public Category() {
		// TODO Auto-generated constructor stub
	}


	public Category(String category, Boolean isEnabled) {
		super();
		this.category = category;
		this.isEnabled = isEnabled;
	}


	public Category(Integer id, String category, Boolean isEnabled) {
		super();
		this.id = id;
		this.category = category;
		this.isEnabled = isEnabled;
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
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}


	/**
	 * @param category the category to set
	 */
	public void setCategory(String category) {
		this.category = category;
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


	@Override
	public String toString() {
		return "Category [id=" + id + ", category=" + category + ", isEnabled=" + isEnabled + "]";
	}
	
	
	
	
	
	
	
	

}
