package lab.spring.sikgu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lab.spring.sikgu.model.TagVO;
import lab.spring.sikgu.service.TagService;

@Controller
public class TagController {

	@Autowired
	TagService service;
	
	@RequestMapping(value="/getTag.do", method=RequestMethod.POST)
	@ResponseBody
	public List<TagVO> getTag(@RequestBody Map<String, Object> Map) {		 
		HashMap<String, Object> searchKey = (Map instanceof HashMap)? (HashMap<String, Object>) Map : new HashMap<String, Object>(Map);
		List<TagVO> tags = service.getTag(searchKey);
		return tags;
	}

}
