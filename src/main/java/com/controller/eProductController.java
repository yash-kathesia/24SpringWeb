package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bean.EProductBean;
import com.dao.EProductDao;
import com.service.FileUploadService;

@Controller
public class eProductController {

	@Autowired
	EProductDao productDao;

	@Autowired
	FileUploadService fileUploadService;

	@GetMapping("/newProduct")
	public String newProduct() {
		return "NewProduct";
	}

	@PostMapping("saveProduct")
	public String saveProduct(EProductBean productBean, @RequestParam("masterImage") MultipartFile masterImage) {

		fileUploadService.uploadProductImage(masterImage);
		productDao.addProduct(productBean);
		return "redirect:/products";

	}

	@GetMapping("/products")
	public String listProducts(Model model) {
		List<EProductBean> products = productDao.getAllProducts();

		model.addAttribute("products", products);

		return "ListProducts";
	}

	@GetMapping("/deleteProduct")
	public String deleteProduct(@RequestParam("productId") Integer productId) {
		System.out.println("deleteProduct() :===> " + productId);

		productDao.deleteProduct(productId);

		return "redirect:/products";
	}

	@GetMapping("/viewProduct")
	public String viewProduct(@RequestParam("productId") Integer productId, Model model) {
		EProductBean productBean = productDao.getProductById(productId);
		model.addAttribute("product", productBean);

		return "ViewProduct";
	}

}
