package com.entity;

public class Product {

	private int pID;
	private String pName;
	private String pType;
	private String pDescription;
	private String pPic;
	private double pPrice;
	//private String Action;
	private int pDiscount;
	private int pQuantity;
	private int cID;
	
	
	
	

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Product(String pName, String pType, String pDescription, String pPic, double pPrice, int pDiscount,
			int pQuantity) {
		super();
		
		this.pName = pName;
		this.pType = pType;
		this.pDescription = pDescription;
		this.pPic = pPic;
		this.pPrice = pPrice;
		this.pDiscount = pDiscount;
		this.pQuantity = pQuantity;
	}
	// start getter and setter
	public int getpID() {
		return pID;
	}
	public void setpID(int pID) {
		this.pID = pID;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpType() {
		return pType;
	}
	public void setpType(String pType) {
		this.pType = pType;
	}
	public String getpDescription() {
		return pDescription;
	}
	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}
	public String getpPic() {
		return pPic;
	}
	public void setpPic(String pPic) {
		this.pPic = pPic;
	}
	public double getpPrice() {
		return pPrice;
	}
	public void setpPrice(double pPrice) {
		this.pPrice = pPrice;
	}
	public int getpDiscount() {
		return pDiscount;
	}
	public void setpDiscount(int pDiscount) {
		this.pDiscount = pDiscount;
	}
	public int getpQuantity() {
		return pQuantity;
	}
	public void setpQuantity(int pQuantity) {
		this.pQuantity = pQuantity;
	}

	public int getcID() {
		return cID;
	}


	public void setcID(int cID) {
		this.cID = cID;
	}
	// end getter and setter
	
	


	@Override
	public String toString() {
		return "Product [pID=" + pID + ", pName=" + pName + ", pType=" + pType + ", pDescription=" + pDescription
				+ ", pPic=" + pPic + ", pPrice=" + pPrice + ", pDiscount=" + pDiscount + ", pQuantity=" + pQuantity
				+ "]";
	}
	
	
}
