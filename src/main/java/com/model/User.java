package com.model;

public class User {
	
	// attributes
	private String name, email, password;
	private int id;
	
	
	
	// empty constructor
	public User() {
		
	}
	//constructor and its arguments
	public User(String name, String email, String password, int id) {
		
		this.name = name;
		this.email = email;
		this.password = password;
		this.id = id;
	}

	
	//getters and setters
	public String getName() {
		return name;
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
	
	

}
