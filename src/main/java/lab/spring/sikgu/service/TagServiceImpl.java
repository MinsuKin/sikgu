package lab.spring.sikgu.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lab.spring.sikgu.dao.TagDAO;
import lab.spring.sikgu.model.TagVO;

@Service("TagService")
public class TagServiceImpl implements TagService {

	@Autowired
	TagDAO dao;
	
	public List<TagVO> getTag(HashMap<String, Object> searchKey) {
		return dao.getTag(searchKey);
	}
}
