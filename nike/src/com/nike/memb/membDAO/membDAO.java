package com.nike.memb.membDAO;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.nike.memb.membVO.membVO;

public interface membDAO {
	
	    public boolean joiningCheck(membVO vo) throws Exception; 
	    // 01. ���̵� �ߺ� üũ
	    public void insert(membVO memb) throws Exception;
	    // 01_01. ȸ�� �α��� üũ
	    public boolean loginCheck(membVO vo);
	    // 01_02. ȸ�� �α��� ����
	    public membVO viewMember(membVO vo);
	    // 02. ȸ�� �α׾ƿ�
	    public void logout(HttpSession session);
	    public HashMap<String, Object> selectOne(String id);
	    public List<HashMap<String, Object>> selectAll();
	    public void updateMember(membVO vo);
}
