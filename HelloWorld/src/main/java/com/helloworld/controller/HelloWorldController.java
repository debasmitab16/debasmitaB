package com.helloworld.controller;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.helloworld.dao.ProducImpl;
import com.helloworld.product.Product;
 
@Controller
public class HelloWorldController {
	//String message = "Welcome to Spring MVC!";
 
	@RequestMapping(value = "/")
	   public String index() {
		   return "index";
	   }
	
	@RequestMapping("/product")
	public ModelAndView showMessage() {
		System.out.println("in controller");
 
		ProducImpl prodImpl=new ProducImpl();
	     ArrayList<Product> listofproducts=new ArrayList<Product>();
	     listofproducts=prodImpl.productList();
		
		//ModelAndView mv = new ModelAndView("product");
		
		//mv.addObject(listofproducts);
		
		String json = new Gson().toJson(listofproducts);  // converting list into Google Gson object which is a string
		System.out.println(json);
		ModelAndView mv=new ModelAndView("product");
		mv.addObject("myJson", json);
		
		return mv;
	}
	/*@RequestMapping("/product")
	   
	   public String redirect() {
	     System.out.println("inside  redirect....");
	     ProducImpl prodImpl=new ProducImpl();
	     ArrayList<Product> listofproducts=new ArrayList<Product>();
	     listofproducts=prodImpl.productList();
			return "product";
	   }*/
	
	
	
}