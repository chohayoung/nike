package com.nike.memb.membService;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.nike.memb.membVO.membVO;

public interface membService {
	public boolean joiningCheck(membVO vo) throws Exception;

	// 01. 아이디 중복 체크
	public void insert(membVO memb) throws Exception;

	// 01_01. 회원 로그인 체크
	public boolean loginCheck(membVO vo, HttpSession session);

	// 01_02. 회원 로그인 정보
	public membVO viewMember(membVO vo);

	// 02. 회원 로그아웃
	public void logout(HttpSession session);

	public void memberUpdate(membVO vo);

}
