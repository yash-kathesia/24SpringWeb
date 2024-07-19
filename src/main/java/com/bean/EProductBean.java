package com.bean;

import lombok.Data;

@Data
public class EProductBean {

	private Integer productId;
	private String productName;
	private String category;
	private Integer qty;
	private Float price;
	private String productImagePath;
	
}
