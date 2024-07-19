package com.bean;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class EComUserBean {
	private Integer userId;
	private String firstName;
	private String email;
	private String password;
	private MultipartFile profilePic;
	private String profilePicPath;
	
}