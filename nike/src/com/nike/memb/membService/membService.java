package com.nike.memb.membService;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.nike.memb.membVO.membVO;

public interface membService {
	public boolean joiningCheck(membVO vo) throws Exception;

	// 01. ���̵� �ߺ� üũ
	public void insert(membVO memb) throws Exception;

	// 01_01. ȸ�� �α��� üũ
	public boolean loginCheck(membVO vo, HttpSession session);

	// 01_02. ȸ�� �α��� ����
	public membVO viewMember(membVO vo);

	// 02. ȸ�� �α׾ƿ�
	public void logout(HttpSession session);

	public void memberUpdate(membVO vo);

}
