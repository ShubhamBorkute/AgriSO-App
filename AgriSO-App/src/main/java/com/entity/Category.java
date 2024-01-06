package com.entity;

public class Category {

	private int cID;
	private String cTitle;
	private String cDescription;
	public int getcID() {
		return cID;
	}
	public void setcID(int cID) {
		this.cID = cID;
	}
	public String getcTitle() {
		return cTitle;
	}
	public void setcTitle(String cTitle) {
		this.cTitle = cTitle;
	}
	public String getcDescription() {
		return cDescription;
	}
	public void setcDescription(String cDescription) {
		this.cDescription = cDescription;
	}
	
	
	//costructor
	
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Category(String cTitle, String cDescription) {
		super();
		this.cTitle = cTitle;
		this.cDescription = cDescription;
		
	}
	@Override
	public String toString() {
		return "Category [cID=" + cID + ", cTitle=" + cTitle + ", cDescription=" + cDescription + "]";
	}
	
	
	
	
	
	
}
