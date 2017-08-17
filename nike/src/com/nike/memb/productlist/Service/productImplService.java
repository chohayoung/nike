package com.nike.memb.productlist.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nike.memb.productlist.DAO.productImplDAO;
import com.nike.memb.productlist.DTO.productDTO;

@Service("productService")
public class productImplService implements productService {
	@Autowired
	productImplDAO productDAO;
	@Override
	public List<productDTO> getproductlist() {
		// TODO Auto-generated method stub
		System.out.println("product Service Call");
		
		return productDAO.getproductlist();
	}

}
