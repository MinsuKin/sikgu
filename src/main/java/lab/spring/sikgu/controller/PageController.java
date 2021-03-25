package lab.spring.sikgu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import lab.spring.sikgu.model.SikguVO;
import lab.spring.sikgu.service.UserService;
@Controller
public class PageController {

	@Autowired
	UserService service;


	@RequestMapping(value="/index.do")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/modiShop.do", method = RequestMethod.GET)
	public String InsertShop() {
		return "ModifyShop";
	}

	@RequestMapping(value="/addreview.do")
	public ModelAndView reviewUpload(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		SikguVO user = (SikguVO)session.getAttribute("user");
		mav.addObject("writer_id", user.getSikgu_id());
		mav.addObject("store_id", session.getAttribute("store_id"));
		mav.setViewName("addReview");
		return mav;
	}
	
	
}
