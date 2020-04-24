package com.pack.sooriya;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {

	@RequestMapping("/showForm")
	public String showForm(Model model)
	{
		model.addAttribute("customer", new Customer());
		return "showForm";
	}
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("customer") Customer customer)
	{
		return "confirmData";
	}
}
