package lab.spring.sikgu.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lab.spring.sikgu.model.StoreVO;
import lab.spring.sikgu.service.MapService;

@Controller
public class mapController {

	@Autowired
	MapService service;
	
	@RequestMapping(value="/map.do", method = RequestMethod.GET)
	public ModelAndView map() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("map");
		return mav;
	}
	
	@RequestMapping(value="/getMarkers.do", method=RequestMethod.POST)
	@ResponseBody
	public List<StoreVO> getMarkers(@RequestBody Map<String, Object> Map) {
		HashMap<String, Object> bounds = (Map instanceof HashMap)? (HashMap<String, Object>) Map : new HashMap<String, Object>(Map);
		List<StoreVO> StoreList = service.getMarkers(bounds);
		return StoreList;
	}
	
	@RequestMapping(value="/getStoreDetail.do", method=RequestMethod.POST)
	@ResponseBody
	public StoreVO getStoreDetail(@RequestBody Map<String, Object> Map, HttpSession session) {
		HashMap<String, Object> store = (Map instanceof HashMap)? (HashMap<String, Object>) Map : new HashMap<String, Object>(Map);
		StoreVO store_info = service.getStoreDetail(store);
		session.setAttribute("store_id", store_info.getSikgu_id());
		return store_info;
	}
	
	
	@RequestMapping(value="/getSearchedMarkers.do", method=RequestMethod.POST)
	@ResponseBody
	public List<StoreVO> getSearchedMarkers(@RequestBody Map<String, String> Map) {
		HashMap<String, String> items = (Map instanceof HashMap)? (HashMap<String, String>) Map : new HashMap<String, String>(Map);
		List<StoreVO> StoreList = service.getSearchedMarkers(items);
		return StoreList;
	}
	@RequestMapping(value="/getSearchedMarkers.do", method=RequestMethod.GET)
	public ModelAndView map2() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/getMarkers.do");
		return mav;
	}
	
}
