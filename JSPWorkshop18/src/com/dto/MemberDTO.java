package com.dto;

public class MemberDTO {

	private String username;
	private int age;
	private String address;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberDTO(String username, int age, String address) {
		super();
		this.username = username;
		this.age = age;
		this.address = address;
	}
	@Override
	public String toString() {
		return "MemberDTO [username=" + username + ", age=" + age + ", address=" + address + "]";
	}
	
	
	
	
}
