package com.nike.memb.membDAO;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nike.memb.membVO.membVO;

@Repository
public class membDAOimpl implements membDAO {
	@Inject
	SqlSession SqlSession;

	// ȸ������
	@Override
	public void insert(membVO memb) throws Exception {
		SqlSession.insert("memb.ins", memb);
		System.out.println("���� �ⰣDAO: " + memb.getStorageperiod());

	}

	// 01_01. ȸ�� �α���üũ
	@Override
	public boolean loginCheck(membVO vo) {
		String id = vo.getId();
		String pw = vo.getPw();
		System.out.println("id :" + id);
		System.out.println("pw :" + pw);
		String name = SqlSession.selectOne("memb.loginCheck", vo);
		System.out.println("name :" + name);
		return (name == null) ? false : true;
	}

	// 01_02. ȸ�� �α��� ����
	@Override
	public membVO viewMember(membVO vo) {
		return SqlSession.selectOne("memb.viewMember", vo);
	}

	// 02. ȸ�� �α׾ƿ�
	@Override
	public void logout(HttpSession sessin) {
	}

	@Override
	public boolean joiningCheck(membVO vo) throws Exception {
		// TODO Auto-generated method stub
		String id = SqlSession.selectOne("memb.joiningCheck", vo.getId());
		System.out.println("DAO id :" + id);

		return (id == null) ? true : false;
	}

	@Override
	public HashMap<String, Object> selectOne(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<HashMap<String, Object>> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateMember(membVO vo) {
		SqlSession.update("memb.updateMember", vo);
	}

}
