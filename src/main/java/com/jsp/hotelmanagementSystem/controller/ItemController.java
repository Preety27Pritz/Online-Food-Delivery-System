package com.jsp.hotelmanagementSystem.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementSystem.dao.ItemDao;
import com.jsp.hotelmanagementSystem.dao.ProductDao;
import com.jsp.hotelmanagementSystem.entities.Item;
import com.jsp.hotelmanagementSystem.entities.Product;

@Controller
public class ItemController {
	
	@Autowired
	ItemDao itemDao;
	
	@Autowired
	ProductDao productDao;
     
	@RequestMapping("/additem")
	public ModelAndView  addItem(@RequestParam("id")int productid) {
		 Product product=productDao.findById(productid);
		 Item item=new Item();
		 item.setName(product.getName());
		 item.setType(product.getType());
		 item.setCost(product.getCost());
		 
		 ModelAndView mav=new ModelAndView();
		 mav.addObject("itemobj", item);
		 mav.setViewName("ItemForm");
		 return mav;
		 
	}
	
	@RequestMapping("/saveitemtoorder")
	public ModelAndView saveItemToOrder(@ModelAttribute("id")Item item,HttpSession session) {
		item.setCost(item.getQuantity()*item.getCost());
		
		if(session.getAttribute("itemslist")==null) {
			List<Item>  items=new ArrayList<Item>();
			items.add(item);
			session.setAttribute("itemslist", items);
		} else {
			List<Item> items=(List<Item>) session.getAttribute("itemslist");
			items.add(item);
		}
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message", "Added Successfully");
		mav.setViewName("redirect://fetchallproducts");
		return mav;
	}
	
	@RequestMapping("/removeitem")
	public ModelAndView removeItemFromOrder(@RequestParam("id") int id, HttpSession session) {
		List<Item> items = (List<Item>) session.getAttribute("itemslist");

		items.remove(id + 1);
		session.setAttribute("itemslist", items);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewaddeditemstocustomer");
		return mav;

	}
	

}
