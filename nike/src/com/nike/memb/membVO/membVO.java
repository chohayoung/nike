package com.nike.memb.membVO;

import java.security.Timestamp;

public class membVO {
	private String id; //���̵�
	private String pw; //�н�����
	private String name; //�̸�
	private String email; //�̸���
	private String address; //�ּ�
	private String tel; //��ȭ��ȣ
	private Number point; //����Ʈ
	private Timestamp reg_date; //��������
	private String grade; //ȸ�����
	private int storageperiod; //�������� �����Ⱓ
	
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
