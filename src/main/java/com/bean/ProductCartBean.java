package com.bean;

import lombok.Data;

@Data
public class ProductCartBean {
	private String productName;
	private String category;
	private Float price;
	private String productImagePath;

	private Integer cartId;
	private Integer userId;
	private Integer productId;
	private Integer qty;
}
