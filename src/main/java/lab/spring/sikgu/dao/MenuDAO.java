package lab.spring.sikgu.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lab.spring.sikgu.model.MenuVO;

@Repository
public class MenuDAO {

	@Autowired
	SqlSession sqlsession;
	
	public MenuVO getMenu(HashMap<String, Object> searchKey) {
		return sqlsession.selectOne("lab.mybatis.menu.MenuMapper.getMenu", searchKey);
	}

}
