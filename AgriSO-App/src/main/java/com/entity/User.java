package com.entity;

public class User {

	private int userID;
	private String userName;
	private String userEmail;
	private String userPassword;
	private Long userPhone;
	private String userAddress;
	
	
	@Override
	public String toString() {
		return "User [userID=" + userID + ", userName=" + userName + ", userEmail=" + userEmail + ", userPassword="
				+ userPassword + ", userPhone=" + userPhone + ", userAddress=" + userAddress + "]";
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	//generate getters & setters
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public Long getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(Long userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	
	
	
	
	
	
}
