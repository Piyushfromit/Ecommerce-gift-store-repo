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
	private String categoryname;
	private Boolean isEnabled;
	
	public Category() {
		// TODO Auto-generated constructor stub
	}

	public Category(String categoryname, Boolean isEnabled) {
		super();
		this.categoryname = categoryname;
		this.isEnabled = isEnabled;
	}

	public Category(Integer id, String categoryname, Boolean isEnabled) {
		super();
		this.id = id;
		this.categoryname = categoryname;
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
	 * @return the categoryname
	 */
	public String getCategoryname() {
		return categoryname;
	}

	/**
	 * @param categoryname the categoryname to set
	 */
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
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
		return "Category [id=" + id + ", categoryname=" + categoryname + ", isEnabled=" + isEnabled + "]";
	}
	
	
	
	
	
	
	

}
