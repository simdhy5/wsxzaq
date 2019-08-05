package com.spring.mcdeliveryyy.dto;

public class UserDto {
	private String name;
	private String gender;
	private String phone;
	private String email;
	private String pw;
	private String address;
	
	private String authFlag;
	private String authEmail;
	
	private int authCode;
	
	
	public UserDto() {
		// TODO Auto-generated constructor stub
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getAuthFlag() {
		return authFlag;
	}


	public void setAuthFlag(String authFlag) {
		this.authFlag = authFlag;
	}


	public String getAuthEmail() {
		return authEmail;
	}


	public void setAuthEmail(String authEmail) {
		this.authEmail = authEmail;
	}


	public int getAuthCode() {
		return authCode;
	}


	public void setAuthCode(int authCode) {
		this.authCode = authCode;
	}


	@Override
	public String toString() {
		return "UserDto [name=" + name + ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", pw=" + pw
				+ ", address=" + address + ", authFlag=" + authFlag + ", authEmail=" + authEmail + ", authCode="
				+ authCode + "]";
	}
}
