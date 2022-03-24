package com.multi.campus.file;

import org.springframework.web.multipart.MultipartFile;

public class FileDTO {
	String name, title, description;
	MultipartFile imgFile;
	
	public FileDTO() {}
	public FileDTO(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}

	public FileDTO(String name, String title, String description, MultipartFile imgFile) {
		this.name = name;
		this.title = title;
		this.description = description;
		this.imgFile = imgFile;
	}
	public MultipartFile getImgFile() {
		return imgFile;
	}

	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
