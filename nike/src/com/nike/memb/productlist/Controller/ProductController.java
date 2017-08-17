package com.nike.memb.productlist.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nike.memb.productlist.DTO.productDTO;
import com.nike.memb.productlist.Service.productImplService;

@Controller
public class ProductController {
	@Autowired
	productImplService productService;
	
	@RequestMapping(value="test",method=RequestMethod.GET)
	public ModelAndView home(ModelAndView mv){
		System.out.println("Controller Start");
		List<productDTO> productlist = productService.getproductlist();
		mv.addObject("list",productlist);
		mv.setViewName("test");
		System.out.println("Controller End");
		
		return mv;
	}
	
    // 03. 게시글 상세내용 조회, 게시글 조회수 증가 처리
    // @RequestParam : get/post방식으로 전달된 변수 1개
    // HttpSession 세션객체
    @RequestMapping(value="detail", method=RequestMethod.GET)
    public ModelAndView view(@RequestParam String code) throws Exception{
    	System.out.println("bno :"+ code);
 
        // 모델(데이터)+뷰(화면)를 함께 전달하는 객체
        ModelAndView mav = new ModelAndView();
        // 뷰의 이름
        mav.setViewName("detail");
        // 뷰에 전달할 데이터
        mav.addObject("Detail", productService.read(code));
        return mav;
    }
}
