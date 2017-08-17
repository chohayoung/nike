package com.nike.index;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.nike.memb.membService.membServiceImpl;
import com.nike.memb.membVO.membVO;

@Controller
@RequestMapping("/member/*")
public class memberController {
	// ���Ͽ� �޷�
	@Autowired
	membServiceImpl MembServiceImpl;

	@RequestMapping(value = "joining")
	public String joining() throws Exception {

		return "member/joining";
	}

	/* 01. �α��� �κ� */
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public ModelAndView login(ModelAndView model) {
		model.setViewName("member/login");
		return model;
	}

	/* 02. ȸ������ �κ� */
	@RequestMapping(value = "complete", method = RequestMethod.POST, produces = { "application/json" })
	public String complete(membVO memb, @RequestParam("year") int storageperiod, @RequestParam("id") String id)
			throws Exception {
		System.out.println("Ȯ�� id" + id);
		memb.setId(id);
		memb.setStorageperiod(storageperiod);

		MembServiceImpl.insert(memb);
		System.out.println("�Ϸ� �Ǿ����ϴ�.");
		return "member/complete";

	}

	/* 03. ���̵� �ߺ�üũ */
	@RequestMapping(value = "Checkid", produces = { "application/json" })
	public @ResponseBody boolean Check(@RequestBody membVO memb) throws Exception {
		System.out.println("memb Checkon :" + memb.getId());
		boolean result = MembServiceImpl.joiningCheck(memb);
		String Checkidin = memb.getId();
		System.out.println("Checkidin :" + Checkidin);
		System.out.println("result last :" + result);
		return result;
	}

	// 02. �α��� ó��
	@RequestMapping(value = "loginCheck.do", method = RequestMethod.POST)
	public ModelAndView loginCheck(@ModelAttribute membVO memVo, HttpSession session,
			@RequestParam("userId") String userId, @RequestParam("userPw") String password) {
		memVo.setId(userId);
		memVo.setPw(password);
		System.out.println("idControll :" + userId);
		System.out.println("pwControll :" + password);
		boolean result = MembServiceImpl.loginCheck(memVo, session);

		ModelAndView mav = new ModelAndView();
		if (result == true) { // �α��� ����
			// main.jsp�� �̵�
			mav.setViewName("redirect:../index");
			mav.addObject("msg", "success");
		} else { // �α��� ����
			// login.jsp�� �̵�
			mav.setViewName("member/login");
			mav.addObject("msg", "failure");
		}
		return mav;
	}

	@RequestMapping("memberUpdateForm.do")
	public String memberUpdateForm(Model model, HttpSession session) {
		String id = (String) session.getAttribute("userId");
		if (id == null)
			return "redirect:login.do";
		model.addAllAttributes(MembServiceImpl.getMemberInfo(id));
		return "member/memberUpdateForm";
	}

	@RequestMapping("memberUpdate.do")
	public String memberUpdate(@ModelAttribute membVO vo) {
		MembServiceImpl.memberUpdate(vo);
		return "redirect:../index";
	}

}
