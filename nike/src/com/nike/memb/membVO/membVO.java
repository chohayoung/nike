package com.nike.memb.membVO;

import java.security.Timestamp;

public class membVO {
	private String id; //아이디
	private String pw; //패스워드
	private String name; //이름
	private String email; //이메일
	private String address; //주소
	private String tel; //전화번호
	private Number point; //포인트
	private Timestamp reg_date; //가입일자
	private String grade; //회원등급
	private int storageperiod; //개인정보 보관기간
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Number getPoint() {
		return point;
	}
	public void setPoint(Number point) {
		this.point = point;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getStorageperiod() {
		return storageperiod;
	}
	public void setStorageperiod(int storageperiod) {
		this.storageperiod = storageperiod;
	}
	
	
}
