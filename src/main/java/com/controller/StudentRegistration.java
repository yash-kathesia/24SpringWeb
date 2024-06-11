package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.bean.StudentCricketBean;

@Controller
public class StudentRegistration {
	@GetMapping("/studentRegistration")
	public String studentReg() {
		return "BoxCricketRegistration";
	}

	@PostMapping("/saveStudCricket")
	public String SaveRegistration(StudentCricketBean stuCricketBean, Model model) {
		/*
		 * System.out.println("Name : " + stuCricketBean.getName());
		 * System.out.println("Player Type : " + stuCricketBean.getPlayerType());
		 * System.out.println("Food Preference : " +
		 * stuCricketBean.getFoodPreference()); System.out.println("Drink : " +
		 * stuCricketBean.getDrink());
		 */
		boolean isError = false;
		String alphaRegEx = "[a-zA-Z]+";

		if (stuCricketBean.getName() == null || stuCricketBean.getName().trim().length() == 0) {
			isError = true;
			model.addAttribute("nameError", "*Please Enter Student Name");
		} else if (stuCricketBean.getName().matches(alphaRegEx) == false) {
			isError = true;
			model.addAttribute("nameError", "*Please Enter Valid Student Name");
		} else {
			model.addAttribute("nameValue", stuCricketBean.getName());
		}

		if (stuCricketBean.getPlayerType() == null) {
			isError = true;
			model.addAttribute("playerTypeError", "*Please Select Player Type");
		}else {
			model.addAttribute("playerTypeValue", stuCricketBean.getPlayerType());			
		}

		if (stuCricketBean.getFoodPreference().equals("-1") == true) {
			isError = true;
			model.addAttribute("foodPreferenceError", "*Please Select Your Food Preference");
		}else {
			model.addAttribute("foodPreferenceValue", stuCricketBean.getFoodPreference());			
		}

		if(stuCricketBean.getDrink()==null) {
			model.addAttribute("drinkError", "*Please Select Drink");
		}else{
			model.addAttribute("drinkValue", stuCricketBean.getDrink());			
		}
		
		if (isError == true) {
			model.addAttribute("stu", stuCricketBean);
			return "BoxCricketRegistration";
		} else {

			model.addAttribute("stu", stuCricketBean);
			return "StuRegDetails";
		}
	}
}
