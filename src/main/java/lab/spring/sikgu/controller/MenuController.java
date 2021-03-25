package lab.spring.sikgu.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lab.spring.sikgu.model.MenuVO;
import lab.spring.sikgu.service.MenuService;

@Controller
public class MenuController {

	@Autowired
	MenuService service;
	
	@RequestMapping(value="/getMenu.do", method=RequestMethod.POST)
	@ResponseBody
	public MenuVO getMenu(@RequestBody Map<String, Object> Map) {		 
		HashMap<String, Object> searchKey = (Map instanceof HashMap)? (HashMap<String, Object>) Map : new HashMap<String, Object>(Map);
		MenuVO menus = service.getMenu(searchKey);
		return menus;
	}
}
