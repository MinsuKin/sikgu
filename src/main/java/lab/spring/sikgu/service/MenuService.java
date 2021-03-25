package lab.spring.sikgu.service;

import java.util.HashMap;

import lab.spring.sikgu.model.MenuVO;

public interface MenuService {

	public MenuVO getMenu(HashMap<String, Object> searchKey);

}
