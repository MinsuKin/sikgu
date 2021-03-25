package lab.spring.sikgu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lab.spring.sikgu.dao.UserDAO;
import lab.spring.sikgu.model.CustomerVO;
import lab.spring.sikgu.model.SikguVO;
import lab.spring.sikgu.model.StoreVO;

@Service("UserService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO dao;

	public SikguVO login(String sikgu_id, String sikgu_password) 	{return dao.login(sikgu_id, sikgu_password);}
	public SikguVO loginCheckId(String sikgu_id) 					{return dao.loginCheckId(sikgu_id);}
	public List<SikguVO> getSikguList() 							{return dao.getSikguList();}
	public List<SikguVO> getCustomerList() 							{return dao.getCustomerList();}
	public List<SikguVO> getStoreList() 							{return dao.getStoreList();}
	public SikguVO checkSikgu(String sikgu_id) 						{return dao.checkSikgu(sikgu_id);}
	public SikguVO checkCustomer(String customer_nickname) 			{return dao.checkCustomer(customer_nickname);}
	public SikguVO checkStore(String store_biz_number) 				{return dao.checkStore(store_biz_number);}
	public int insertSikgu(SikguVO vo) 								{return dao.insertSikgu(vo);}
	public int insertCustomer(CustomerVO vo) 						{return dao.insertCustomer(vo);}
	public int insertStore(StoreVO vo) 								{return dao.insertStore(vo);}
	public int updateSikgu(SikguVO vo) 								{return dao.updateSikgu(vo);}
	public int updateCustomer(CustomerVO vo) 						{return dao.updateCustomer(vo);}
	public int updateCustomerXY(CustomerVO vo) 						{return dao.updateCustomerXY(vo);}
	public int updateStore(StoreVO vo) 								{return dao.updateStore(vo);}
	public CustomerVO getCustomer(String sikgu_id) 					{return dao.getCustomer(sikgu_id);}
	public StoreVO getStore(String sikgu_id) 						{return dao.getStore(sikgu_id);}
}
