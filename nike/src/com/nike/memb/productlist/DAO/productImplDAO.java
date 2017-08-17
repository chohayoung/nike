package com.nike.memb.productlist.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nike.memb.productlist.DTO.productDTO;

@Repository("productDAO")
public class productImplDAO implements productDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "product";
	
	@Override
	public List<productDTO> getproductlist() {
		// TODO Auto-generated method stub
		System.out.println("DAO List Call");
		List<productDTO> productlist = new ArrayList<productDTO>();
		productlist = sqlSession.selectList(namespace+".onlist");
		System.out.println("productlist :"+productlist);
		return productlist;
	}
	// 02. 게시글 상세보기
    @Override
    public productDTO read(String code) throws Exception {
        return sqlSession.selectOne("product.view", code);
    }

}
