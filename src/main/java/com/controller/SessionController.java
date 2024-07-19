package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;

@Controller
public class SessionController {

	@GetMapping("/login")
	public String login() {
		return "Login";
	}

	@GetMapping("/signup")
	public String signup() {
		return "Signup";
	}

	@GetMapping("/fp")
	public String forgetPassword() {
		return "ForgetPassword";
	}

	@PostMapping("/saveUser")
	public String saveUser(UserBean userBean, Model model) {

		System.out.println("firstName :  " + userBean.getFirstName());
		System.out.println("email : " + userBean.getEmail());
		System.out.println("password : " + userBean.getPassword());

		model.addAttribute("user", userBean);
		return "Home";
	}
	
	@GetMapping("/addition")
	public String addition() {
		return "Addition";
	}
	

	@PostMapping("/addition")
	public String addition(UserBean userbean, Model model) {
		Integer num1 = userbean.getNum1();
		Integer num2 = userbean.getNum2();
		Integer num3 = num1 + num2;
		model.addAttribute("num3", num3);
		return "AdditionResult";

	}

}