package lab.spring.sikgu.service;

import java.util.HashMap;
import java.util.List;

import lab.spring.sikgu.model.StoreVO;

public interface MapService {
	
	public List<StoreVO> getMarkers(HashMap<String, Object> bounds);
	public StoreVO getStoreDetail(HashMap<String, Object> store_info);
	public List<StoreVO> getSearchedMarkers(HashMap<String, String> option);
}
