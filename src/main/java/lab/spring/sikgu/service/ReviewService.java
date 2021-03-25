package lab.spring.sikgu.service;

import java.util.HashMap;
import java.util.List;

import lab.spring.sikgu.model.ReviewVO;

public interface ReviewService {

	public List<ReviewVO> getStoreContent(HashMap<String, Object> searchKey);
	public int reviewUpload(ReviewVO vo);
	public List<ReviewVO> getCustomerContent(HashMap<String, Object> searchKey);
}
