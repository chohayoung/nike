package com.nike.index;

import java.beans.PropertyEditorSupport;
import java.security.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nike.memb.membService.membServiceImpl;
import com.nike.memb.membVO.membVO;

@Controller

public class HomeController {

	@Autowired
	membServiceImpl MembServiceImpl;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
    
    //메인페이지
    
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	// 02. 장바구니
	@RequestMapping(value="product")
    public ModelAndView product(ModelAndView mav){
    	
        mav.setViewName("productlist");
        return mav;
    }
	
	// 03. 로그아웃 처리
    @RequestMapping(value="logout.do")
    public ModelAndView logout(HttpSession session,ModelAndView mav){
    	MembServiceImpl.logout(session);
    	System.out.println("logout check :"+ session);
        mav.addObject("msg", "logout");
        mav.setViewName("redirect:index");
        return mav;
    }
}
