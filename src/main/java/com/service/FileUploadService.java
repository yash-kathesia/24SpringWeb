package com.service;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileUploadService {

	public void uploadProductImage(MultipartFile masterImage) {
		System.out.println();

		String path = "D:\\EDUCATION\\Royal Technosoft P Ltd\\Spring Lectures & Materials\\Spring_Web_Java\\24SpringWeb\\src\\main\\Webapp\\images\\products";

		try {
			byte b[] = masterImage.getBytes();// copy | extract

			File file = new File(path, masterImage.getOriginalFilename());// path , name
			FileUtils.writeByteArrayToFile(file, b);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public void uploadUserImage(MultipartFile masterImage, String email) {

		System.out.println(masterImage.getOriginalFilename());

		String path = "D:\\EDUCATION\\Royal Technosoft P Ltd\\Spring Lectures & Materials\\Spring_Web_Java\\24SpringWeb\\src\\main\\webapp\\images\\profilepic";

		File dir = new File(path, email);
		dir.mkdir();

		
		try {
			byte b[] = masterImage.getBytes();

			File file = new File(dir, masterImage.getOriginalFilename());
			FileUtils.writeByteArrayToFile(file, b);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	

}
