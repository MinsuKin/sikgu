package lab.spring.sikgu.service;

import java.util.HashMap;
import java.util.List;

import lab.spring.sikgu.model.TagVO;

public interface TagService {
	
	public List<TagVO> getTag(HashMap<String, Object> searchKey);
	
}
