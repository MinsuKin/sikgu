package lab.spring.sikgu.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lab.spring.sikgu.dao.MapDAO;
import lab.spring.sikgu.model.StoreVO;


@Service("MapService")
public class MapServiceImpl implements MapService {

	@Autowired
	MapDAO dao;
	
	public List<StoreVO> getMarkers(HashMap<String, Object> bounds) {
		return dao.getMarkers(bounds);
	}
	public StoreVO getStoreDetail(HashMap<String, Object> store_info) {
		return dao.getStoreDetail(store_info);
	}
	public List<StoreVO> getSearchedMarkers(HashMap<String, String> option) {
		return dao.getSearchedMarkers(option);
	}
}
