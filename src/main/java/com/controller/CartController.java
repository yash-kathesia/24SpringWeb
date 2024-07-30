package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ECartBean;
import com.bean.EComUserBean;
import com.bean.ProductCartBean;
import com.dao.CartDao;

import jakarta.servlet.http.HttpSession;

@Controller
public class CartController {

	@Autowired
	CartDao cartDao;

	@GetMapping("/addtocart")
	public String addtoCart(@RequestParam("productId") Integer productId, HttpSession session) {
		EComUserBean userBean = (EComUserBean) session.getAttribute("user");

		Integer userId = userBean.getUserId();
		ECartBean cartBean = new ECartBean();

		cartBean.setProductId(productId);
		cartBean.setUserId(userId);

		cartDao.addToCart(cartBean);

		return "redirect:/userproducts";
	}

	@GetMapping("/mycart")
	public String myCart(HttpSession session, Model model) {
		EComUserBean userBean = (EComUserBean) session.getAttribute("user");
		Integer userId = userBean.getUserId();
		List<ProductCartBean> products = cartDao.myCart(userId);
		model.addAttribute("products", products);
		return "MyCart";
	}
	
	
	@GetMapping("/removecartitem")
	public String removeCartItem(@RequestParam("productId") Integer productId,HttpSession session) {
		EComUserBean userBean = (EComUserBean)session.getAttribute("user");
		Integer userId = userBean.getUserId();
		cartDao.removeItem(productId,userId);
		return "redirect:/mycart";
	}

}
