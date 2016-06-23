package com.helloworld.dao;

import java.util.ArrayList;

import com.helloworld.product.Product;

public class ProducImpl implements ProductDao {
	
	
	
	ArrayList al=new ArrayList();
	public ProducImpl(){
		Product p1=new Product("001","Samsung", "Mobile", 10000.00, "Availble", "This is Mobile");
		Product p2=new Product("002","Micromax", "Mobile", 12000.00, "Availble", "This is SmartPhone");
		Product p3=new Product("003","Dell", "Laptop", 30000.00, "Availble", "This is Laptop");
		Product p4=new Product("004","HP", "Laptop", 24000.00, "Availble", "This is Laptop");
		Product p5=new Product("005","Iphone6", "Iphone", 40000.00, "Availble", "This is Iphone");
		
		al.add(p1);
		al.add(p2);
		al.add(p3);
		al.add(p4);
		al.add(p5);
	}
	
	
	public ArrayList<Product> productList()
	{
		return this.al;
	}
	
	public void insertRecord(Product p) {
		// TODO Auto-generated method stub

	}

	public void searchRecord(Double d) {
		// TODO Auto-generated method stub

	}

}
