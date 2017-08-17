package com.nike.memb.membService;

import java.security.Timestamp;
import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.nike.memb.membVO.membVO;
import com.nike.memb.membDAO.membDAO;
import com.nike.memb.membDAO.membDAOimpl;

@Service
public class membServiceImpl implements membService{
	
	@Autowired
	private membDAO memberDao;
	@Inject
	membDAOimpl membDAOimpl;
	
	@Inject
	membDAO membDAO;
	
	// 회원 가입 부분
	@Override
	public void insert(membVO memb) throws Exception {
		membDAOimpl.insert(memb);
		System.out.println("보관 기간Service: "+memb.getStorageperiod());
	}

	// 01_01. 회원 로그인체크
    @Override
    public boolean loginCheck(membVO vo, HttpSession session) {
        boolean result = membDAOimpl.loginCheck(vo);
        if (result) { // true일 경우 세션에 등록
        	membVO vo2 = viewMember(vo);
            // 세션 변수 등록
            session.setAttribute("userId", vo2.getId());
            session.setAttribute("userName", vo2.getName());
            session.setAttribute("userEmail", vo2.getEmail());
			session.setAttribute("userAddress", vo2.getAddress());
			session.setAttribute("userTel", vo2.getTel());
        } 
        return result;
    }
    // 01_02. 회원 로그인 정보
    @Override
    public membVO viewMember(membVO vo) {
        return membDAOimpl.viewMember(vo);
    }
    // 02. 회원 로그아웃
    @Override
    public void logout(HttpSession session) {
        // 세션 변수 개별 삭제
        // session.removeAttribute("userId");
        // 세션 정보를 초기화 시킴
        session.invalidate();
    }

	@Override
	public boolean joiningCheck(membVO vo) throws Exception {
		// TODO Auto-generated method stub\
		boolean result = membDAOimpl.joiningCheck(vo);
		System.out.println("CheckId :"+vo.getId());
		System.out.println("result :"+ result);
		if(result){
			return true;
		}else {

			return false;
		}
		
	}
	public HashMap<String, Object> getMemberInfo(String id) {
		return memberDao.selectOne(id);
	}

	@Override
	public void memberUpdate(membVO vo) {
		membDAO.updateMember(vo);

	}
}

	

	


