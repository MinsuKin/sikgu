package lab.spring.sikgu.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lab.spring.sikgu.dao.MenuDAO;
import lab.spring.sikgu.model.MenuVO;

@Service("MenuService")
public class MenuServiceImpl implements MenuService {

	@Autowired
	MenuDAO dao;
	
	public MenuVO getMenu(HashMap<String, Object> searchKey) {
		return dao.getMenu(searchKey);
	}
}
