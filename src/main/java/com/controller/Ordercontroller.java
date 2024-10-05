package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.dao.Orderdao;
import com.model.Customerorder;

@Controller
public class Ordercontroller {

	@Autowired
	private Orderdao dao;

	@RequestMapping("/")
	public String Dashboard() {

		return "UserDashaboard";
	}

	@RequestMapping("/addorder")
	public String addorder() {
		return "AddOrder";
	}

	@RequestMapping(path = "/product_order", method = RequestMethod.POST)
	public String Orders_List(@ModelAttribute("customerorder") Customerorder customer_order) {
		dao.addOrder(customer_order);
		System.out.println(customer_order);
		return "redirect:/";
	}

	@RequestMapping("/showorders")
	public String showorder(Model model) {
		List<Customerorder> data = dao.getdata();
		// System.out.println(data);
		model.addAttribute("data", data);
		return "showorder";
	}
	
	@RequestMapping(path="/delete/{id}")
	public RedirectView deleteData(@PathVariable("id") int id,HttpServletRequest httpServletRequest) {
		dao.Deletedata(id);
		System.out.println("Delete succefully......");
		 RedirectView redirectView = new RedirectView();
		 redirectView.setUrl(httpServletRequest.getContextPath() + "/showorders");
		 return redirectView;
	}

}
