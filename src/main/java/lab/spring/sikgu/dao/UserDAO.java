package lab.spring.sikgu.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lab.spring.sikgu.model.CustomerVO;
import lab.spring.sikgu.model.SikguVO;
import lab.spring.sikgu.model.StoreVO;

@Repository
public class UserDAO {

	@Autowired
	SqlSession sqlsession;
	
// UserManage_嚥≪뮄�젃占쎌뵥#############################################################
	
	public SikguVO login(String sikgu_id, String sikgu_pwd) {
		Object vo = null;
		HashMap<String, String> hm = new HashMap<String, String>();
		hm.put("sikgu_id", sikgu_id);
		hm.put("sikgu_pwd", sikgu_pwd);
		vo = sqlsession.selectOne("lab.mybatis.user.UserMapper.login", hm);
		return (SikguVO)vo;
	}
	public SikguVO loginCheckId(String sikgu_id) {
		Object vo = null;
		HashMap<String, String> hm = new HashMap<String, String>();
		hm.put("sikgu_id", sikgu_id);
		vo = sqlsession.selectOne("lab.mybatis.user.UserMapper.loginCheckId", hm);
		return (SikguVO)vo;
	}

//  / UserManage_嚥≪뮄�젃占쎌뵥##########################################################

// UserManage_占쎌읈筌ｏ옙 鈺곌퀬�돳 ###########################################################

	public List<SikguVO> getSikguList() {
		return sqlsession.selectList("lab.mybatis.user.UserMapper.getSikguList");
	}	
	public List<SikguVO> getCustomerList() {
		return sqlsession.selectList("lab.mybatis.user.UserMapper.getCustomerList");
	}
	public List<SikguVO> getStoreList() {
		return sqlsession.selectList("lab.mybatis.user.UserMapper.getStoreList");
	}
// / UserManage_占쎌읈筌ｏ옙 鈺곌퀬�돳 ###########################################################

// UserManage_占쎌돳占쎌뜚 揶쏉옙占쎌뿯 #############################################################

	public SikguVO checkSikgu(String sikgu_id) {
		return sqlsession.selectOne("lab.mybatis.user.UserMapper.checkSikgu", sikgu_id);
	}
	public SikguVO checkCustomer(String customer_nickname) {
		return sqlsession.selectOne("lab.mybatis.user.UserMapper.checkCustomer", customer_nickname);
	}
	public SikguVO checkStore(String store_biz_number) {
		return sqlsession.selectOne("lab.mybatis.user.UserMapper.checkStore", store_biz_number);
	}
	public int insertSikgu(SikguVO vo) {
		return sqlsession.insert("lab.mybatis.user.UserMapper.insertSikgu", vo);
	}
	public int insertCustomer(CustomerVO vo) {
		return sqlsession.insert("lab.mybatis.user.UserMapper.insertCustomer", vo);
	}
	public int insertStore(StoreVO vo) {
		return sqlsession.insert("lab.mybatis.user.UserMapper.insertStore", vo);
	}

// / UserManage_占쎌돳占쎌뜚 揶쏉옙占쎌뿯 #############################################################

// UserManage_占쎌돳占쎌뜚 占쎌젟癰귨옙 占쎈땾占쎌젟 ############################################################

	public int updateSikgu(SikguVO vo) {
		return sqlsession.update("lab.mybatis.user.UserMapper.updateSikgu", vo);
	}
	public int updateCustomer(CustomerVO vo) {
		return sqlsession.update("lab.mybatis.user.UserMapper.updateCustomer", vo);
	}
	public int updateCustomerXY(CustomerVO vo) {
		return sqlsession.update("lab.mybatis.user.UserMapper.updateCustomerXY", vo);
	}
	public int updateStore(StoreVO vo) {
		return sqlsession.update("lab.mybatis.user.UserMapper.updateStore", vo);
	}
	
// / UserManage_占쎌돳占쎌뜚 占쎌젟癰귨옙 占쎈땾占쎌젟 ###########################################################

// MYLIST_鈺곌퀬�돳 #################################################################

//	(sikgu_type == C) => mylist
	public CustomerVO getCustomer(String sikgu_id) {
		return sqlsession.selectOne("lab.mybatis.user.UserMapper.getCustomer", sikgu_id);
	}
	
//	(sikgu_type == S) => storelist
	public StoreVO getStore(String sikgu_id) {
		return sqlsession.selectOne("lab.mybatis.user.UserMapper.getStore", sikgu_id);
	}
	
// / MYLIST_鈺곌퀬�돳 ###############################################################
	
	
}
