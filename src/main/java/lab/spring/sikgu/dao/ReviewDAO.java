package lab.spring.sikgu.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lab.spring.sikgu.model.ReviewVO;

@Repository
public class ReviewDAO {
	
	@Autowired
	SqlSession sqlsession;

	public List<ReviewVO> getStoreContent(HashMap<String, Object> searchKey) {
		return sqlsession.selectList("lab.mybatis.review.ReviewMapper.getStoreContent", searchKey);
	}
	
	
	public List<ReviewVO> getCustomerContent(HashMap<String, Object> searchKey) {
		return sqlsession.selectList("lab.mybatis.review.ReviewMapper.getCustomerContent", searchKey);
	}

	 public int reviewUpload(ReviewVO vo) {
	      return sqlsession.insert("lab.mybatis.review.ReviewMapper.reviewUpload", vo);
	   }

}
