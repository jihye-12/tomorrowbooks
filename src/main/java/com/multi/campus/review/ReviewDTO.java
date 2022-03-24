package com.multi.campus.review;

public class ReviewDTO {
	String name, title, text, range, date;

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

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getRange() {
		return range;
	}

	public void setRange(String range) {
		this.range = range;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public ReviewDTO(String name, String title, String text, String range, String date) {
		super();
		this.name = name;
		this.title = title;
		this.text = text;
		this.range = range;
		this.date = date;
	}
	
	public ReviewDTO() {}
}
