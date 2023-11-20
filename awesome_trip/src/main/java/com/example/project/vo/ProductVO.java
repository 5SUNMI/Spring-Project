package com.example.project.vo;

import java.sql.Date;

public class ProductVO {

	// 테이블의 column name, 폼 태그의 name
	private int bno;
	private String tour;
	private String tourCategory;
	private String name;
	private String title;
	private String hour;
	private String single;
	private String price;
	private String imgName;
	private Date updateDate;

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTour() {
		return tour;
	}

	public void setTour(String tour) {
		this.tour = tour;
	}

	public String getTourCategory() {
		return tourCategory;
	}

	public void setTourCategory(String tourCategory) {
		this.tourCategory = tourCategory;
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

	public String getHour() {
		return hour;
	}

	public void setHour(String hour) {
		this.hour = hour;
	}

	public String getSingle() {
		return single;
	}

	public void setSingle(String single) {
		this.single = single;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "ProductVO [bno=" + bno + ", tour=" + tour + ", tourCategory=" + tourCategory + ", name=" + name
				+ ", title=" + title + ", hour=" + hour + ", single=" + single + ", price=" + price + ", imgName="
				+ imgName + ", updateDate=" + updateDate + "]";
	}

}
