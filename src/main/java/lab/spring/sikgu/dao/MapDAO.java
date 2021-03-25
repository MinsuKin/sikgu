package lab.spring.sikgu.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lab.spring.sikgu.model.StoreVO;

@Repository
public class MapDAO {

	@Autowired
	SqlSession sqlsession;
	
	public List<StoreVO> getMarkers(HashMap<String, Object> bounds) {
		return sqlsession.selectList("lab.mybatis.map.MapMapper.getMarkers", bounds);
	}
	public StoreVO getStoreDetail(HashMap<String, Object> store_info) {
		return sqlsession.selectOne("lab.mybatis.map.MapMapper.getStoreDetail", store_info);
	}
	public List<StoreVO> getSearchedMarkers(HashMap<String, String> option) {
		return sqlsession.selectList("lab.mybatis.map.MapMapper.getSearchedMarkers", option);
	}
	
	

	
	
	
	
	
}
