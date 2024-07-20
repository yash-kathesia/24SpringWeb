package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.EComUserBean;
import com.dao.EComUserDao;
import com.service.FileUploadService;

import jakarta.servlet.http.HttpSession;

@Controller
public class EUserSessionController {

	@Autowired
	EComUserDao userDao;

	@Autowired
	FileUploadService fileUploadService;

	@GetMapping(value = { "/", "elogin" })
	public String welcome() {
		return "E-commerceLogin";
	}

	@PostMapping("/elogin")
	public String eLogin(EComUserBean userBean, Model model, HttpSession session) {

		EComUserBean dbUser = userDao.authenticate(userBean.getEmail(), userBean.getPassword());
		if (dbUser == null) {
			model.addAttribute("error", "Invalid Credentials...!!!");
			return "E-commerceLogin";
		} else {
			session.setAttribute("user", dbUser);
			model.addAttribute("firstName", dbUser.getFirstName());
			model.addAttribute("profilePicPath", dbUser.getProfilePicPath());
			return "EcomHome";
		}
	}

	@GetMapping("/esignup")
	public String signup() {
		return "E-commerceSignUp";
	}

	@PostMapping("/esignup")
	public String signupPost(EComUserBean userBean) {

		fileUploadService.uploadUserImage(userBean.getProfilePic(), userBean.getEmail());

		userBean.setProfilePicPath(
				"images//profilepic//" + userBean.getEmail() + "//" + userBean.getProfilePic().getOriginalFilename());

		userDao.insertUser(userBean);
		return "E-commerceLogin";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {

		session.invalidate();
		return "redirect:/elogin";
	}

}
