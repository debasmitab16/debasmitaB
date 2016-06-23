package com.helloworld.product;

public class Product {

	private String productId;
	private String productName;
	private String category;
	private double price;
	private String Status;
	private String desc;
	
	public Product(){
		
	}
	public Product(String productId, String productName, String category, double price, String status, String desc) {
		
		this.productId = productId;
		this.productName = productName;
		this.category = category;
		this.price = price;
		Status = status;
		this.desc = desc;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	
	
}
