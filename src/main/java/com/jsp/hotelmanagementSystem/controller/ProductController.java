package com.jsp.hotelmanagementSystem.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementSystem.dao.HotelDao;
import com.jsp.hotelmanagementSystem.dao.ProductDao;
import com.jsp.hotelmanagementSystem.entities.Hotel;
import com.jsp.hotelmanagementSystem.entities.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	HotelDao hotelDao;
	
	@RequestMapping("/addproduct")
	public ModelAndView addProduct() {
		Product p=new Product();
		ModelAndView mav=new ModelAndView();
		mav.addObject("productobj",p);
		mav.setViewName("productform");
		return mav;
	}
	
	@RequestMapping("/saveproduct")
	//handler used to save product entity into database
	public ModelAndView saveProduct(@ModelAttribute("productobj") Product p,HttpSession session) {
		Integer hotel_id=(Integer) session.getAttribute("hotelinfo");
		Hotel hotel=hotelDao.findHotelById(hotel_id);
		 if (hotel != null) {
		        List<Product> products = hotel.getProducts();

		        // Initialize the list if it's null
		        if (products == null) {
		            products = new ArrayList<>();
		        }

		        products.add(p);
		        hotel.setProducts(products);
		
		        productDao.saveProduct(p);
		        hotelDao.updateHotel(hotel);
		
		        ModelAndView mav=new ModelAndView();
		        mav.addObject("message","Added Successfully");
		        mav.setViewName("Hoteloptions");
		        return mav;
		 } else {
        // Handle the case where the hotel is null
			 ModelAndView mav = new ModelAndView();
			 mav.addObject("message", "Hotel not found");
			 mav.setViewName("ErrorPage"); // Replace with your error page/view name
			 return mav;
		 }
	}
	
	@RequestMapping("/viewproducts")
	//handler used to fetch all the products of a particular hotel and submit to Viewproducts.jsp
    public ModelAndView viewAllProducts(HttpSession session) {
		Integer hotel_id=(Integer) session.getAttribute("hotelinfo");
		Hotel hotel=hotelDao.findHotelById(hotel_id);
        List<Product> products = hotel.getProducts();
        
        ModelAndView mav = new ModelAndView();
        mav.addObject("products", products);
        mav.setViewName("Viewproducts");
        return mav;
    }
	
	@RequestMapping("/updateproduct")
	//handler used to update product
	public ModelAndView updateProduct(@RequestParam("id") int id) {
		Product product=productDao.findById(id);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("existingProductInfo",product);
		mav.setViewName("updateproductform");
		return mav;
	}
	
	@RequestMapping("/updateproductinfo")
	//
	public ModelAndView updateProductInformation(@ModelAttribute("existingProductInfo") Product p) {
		productDao.updateProduct(p);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message","Updated Successfully");
		mav.setViewName("redirect://viewproducts");
		return mav;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteProduct(@RequestParam("id") int id,HttpSession session) {
		Integer hotel_id=(Integer) session.getAttribute("hotelinfo");
		Hotel hotel= hotelDao.findHotelById(hotel_id);
		List<Product> products=hotel.getProducts();
		
		List<Product> productsList=products.stream().filter(product->product.getId()!=id).collect(Collectors.toList());
		//stream() will convert list into stream/elements
		//filter() accepts the object predicate interface(functional)(based on the no of elements,filter() will execute)
		//collect() method collects the elements/streams
		//Collectors.toList() will collect the stream(elements) in the form of List
		hotel.setProducts(productsList);
		
		hotelDao.updateHotel(hotel);
		productDao.deleteByid(id);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message","Deleted Successfully");
		mav.setViewName("redirect://viewproducts");
		return mav;
	}
	
	@RequestMapping("/fetchproductsbyhotel")
	public ModelAndView fetchProductsByHotel(ServletRequest request) {
		String hotelName=request.getParameter("hotelname");
		List<Product> products=productDao.fetchProductsByHotel(hotelName);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("productsList",products);
		mav.setViewName("displayproductstocustomer");
		return mav;	
	}
	
	@RequestMapping("/fetchallproducts")
	    public ModelAndView fetchAllProdiucts() {
	    	List<Product> products=productDao.findAllProducts();
	    	ModelAndView mav=new ModelAndView();
	    	mav.addObject("productsList", products);
	    	mav.setViewName("displayproductstocustomer");
	    	return mav;
	    }
	 
	@RequestMapping("/fetchproductsbetweenpricerange")
	    public ModelAndView fetchProductsBetweenPriceRange(ServletRequest request)  {
	    	String minPrice=request.getParameter("minprice");
	    	String maxPrice=request.getParameter("maxprice");
	    	
	    	List<Product> products=productDao.fetchProductsBetweenPriceRange(Double.parseDouble(minPrice), Double.parseDouble(maxPrice));
	    	ModelAndView mav=new ModelAndView();
	    	mav.addObject("productsList", products);
	    	mav.setViewName("displayproductstocustomer");
	    	return mav;
	}
	
	@RequestMapping("/addDiscount")
	public ModelAndView provideDiscountToProducts(ServletRequest request) {
		int discount = Integer.parseInt(request.getParameter("discount"));
		List<Product> products = productDao.findAllProducts();

		for (Product product : products) {
			product.setDiscount(product.getDiscount() + discount);
			productDao.updateProduct(product);
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("message", "Additional Discount added to products.");
		mav.setViewName("Hoteloptions");
		return mav;
	}
}

