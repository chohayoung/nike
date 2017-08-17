package com.nike.memb.productlist.DAO;

import java.util.List;

import com.nike.memb.productlist.DTO.productDTO;

public interface productDAO {
public List<productDTO> getproductlist();
public productDTO read(String code) throws Exception;
}
