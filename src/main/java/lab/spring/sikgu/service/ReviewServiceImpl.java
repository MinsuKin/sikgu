package lab.spring.sikgu.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lab.spring.sikgu.dao.ReviewDAO;
import lab.spring.sikgu.model.ReviewVO;

@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	ReviewDAO dao;
	
	public List<ReviewVO> getStoreContent(HashMap<String, Object> searchKey) {
		return dao.getStoreContent(searchKey);
	}
	public List<ReviewVO> getCustomerContent(HashMap<String, Object> searchKey){
		return dao.getCustomerContent(searchKey);
	}
	public int reviewUpload(ReviewVO vo) {
	   return dao.reviewUpload(vo);
	}
}
