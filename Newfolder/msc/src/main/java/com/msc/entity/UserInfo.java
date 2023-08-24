package com.msc.entity;

import jakarta.persistence.*;

@Entity
public class UserInfo {
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String email;
	private String password;
	private String role;
	private String phone;
	
	public String getRole() {
		return role;
	}
	public void setRoles(String role) {
		this.role = role;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public UserInfo(int id, String name, String email, String password, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
	}

	
	public UserInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
