package com.jsp.hotelmanagementSystem.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementSystem.dao.CustomerDao;
import com.jsp.hotelmanagementSystem.dao.FoodOrderDao;
import com.jsp.hotelmanagementSystem.entities.Customer;
import com.jsp.hotelmanagementSystem.entities.FoodOrder;
import com.jsp.hotelmanagementSystem.entities.Item;

@Controller
public class FoodOrderController {
	
	@Autowired
	FoodOrderDao foodOrderDao;
	
	@Autowired
	CustomerDao customerDao;
	
	@RequestMapping("/addfoodorder")
	public ModelAndView addFoodOrder(HttpSession session) {
		List<Item> items=(List) session.getAttribute("itemslist");
		FoodOrder foodOrder=new FoodOrder();
		foodOrder.setItems(items);
		
		double totalprice=items.stream().map(i->i.getCost()).mapToDouble(Double::new).sum();
		//converts list into stream-stream()
		//map(i->i.getCost()-based on the no of elements map method will execute,itemobj will be substituted in place of i from which cost detail is fetched
		//and new stream is created where the cost is stored
		//mapToDouble-convert stream to double type
		//Double is a wrapper class
		//(Double::new)-create object of Double---mapToDouble(i->new Double(i))
		//sum()-sum of the elements present inside the stream
		foodOrder.setTotalprice(totalprice);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("foodOrderObj",foodOrder);
		mav.setViewName("foodorderform");
		return mav;
	}
	
	@RequestMapping("/saveFoodOrder")
	public ModelAndView saveFoodOrders(@ModelAttribute("foodOrderObj") FoodOrder foodOrder,HttpSession session) {
		List<Item> items=(List) session.getAttribute("itemslist");
		foodOrder.setItems(items);
		double totalprice=items.stream().map(i->i.getCost()).mapToDouble(Double::new).sum();
		foodOrder.setTotalprice(totalprice);
		Integer customer_id=(Integer) session.getAttribute("customerinfo");
		Customer customer=customerDao.findCustomerById(customer_id);
		List<FoodOrder> foodOrders=customer.getFoodOrders();
		
		if(foodOrders.size()>0) {
			foodOrders.add(foodOrder);
			customer.setFoodOrders(foodOrders);
		}
		else {
			List<FoodOrder> foodOrderslist=new ArrayList<>();
			foodOrderslist.add(foodOrder);
			customer.setFoodOrders(foodOrderslist);
		}
		
		foodOrderDao.saveFoodOrder(foodOrder);
		customerDao.updateCustomer(customer);
		
		//session.removeAttribute("itemslist");
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message","Ordered Successfully");
		mav.addObject("foodOrderInfo", foodOrder);
		mav.setViewName("displaybilltocustomer");
		return mav;
	}
}
