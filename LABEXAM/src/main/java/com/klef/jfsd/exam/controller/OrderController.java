package com.klef.jfsd.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.exam.model.Order;
import com.klef.jfsd.exam.service.OrderService;


@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;

	
	
	  @GetMapping("/vieworders")
	  public String viewOrders(Model model) {
	      List<Order> orders = orderService.findAllOrders();
	      model.addAttribute("orderdata", orders);
	      return "viewallorders";
	  }

}
