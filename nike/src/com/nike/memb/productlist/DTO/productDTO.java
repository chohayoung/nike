package com.nike.memb.productlist.DTO;

import java.io.Serializable;

public class productDTO implements Serializable{
private String Category;
private String Code;
private String Name;
private int Qnt;
private int Price;
private String Image;

public String getCategory(){
	return Category;
}
public void setCategory(String category) {
	Category = category;
}
public String getCode() {
	return Code;
}
public void setCode(String code) {
	Code = code;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public int getQnt() {
	return Qnt;
}
public void setQnt(int qnt) {
	Qnt = qnt;
}
public int getPrice() {
	return Price;
}
public void setPrice(int price) {
	Price = price;
}
public String getImage() {
	return Image;
}
public void setImage(String image) {
	Image = image;
}
}
