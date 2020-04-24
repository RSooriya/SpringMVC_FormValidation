package com.pack.sooriya;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String processForm(@Valid @ModelAttribute("customer") Customer customer,BindingResult result)
	{
	//for debugging purpose
		System.out.println(result);
	if(result.hasErrors())
	{
		return "showForm";
	}
	else
	{
		return "confirmData";
	}
}
}
