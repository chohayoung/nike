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
	
    // 03. �Խñ� �󼼳��� ��ȸ, �Խñ� ��ȸ�� ���� ó��
    // @RequestParam : get/post������� ���޵� ���� 1��
    // HttpSession ���ǰ�ü
    @RequestMapping(value="detail", method=RequestMethod.GET)
    public ModelAndView view(@RequestParam String code) throws Exception{
    	System.out.println("bno :"+ code);
 
        // ��(������)+��(ȭ��)�� �Բ� �����ϴ� ��ü
        ModelAndView mav = new ModelAndView();
        // ���� �̸�
        mav.setViewName("detail");
        // �信 ������ ������
        mav.addObject("Detail", productService.read(code));
        return mav;
    }
}
