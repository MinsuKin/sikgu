package lab.spring.sikgu.service;

import java.util.List;

import lab.spring.sikgu.model.CustomerVO;
import lab.spring.sikgu.model.SikguVO;
import lab.spring.sikgu.model.StoreVO;

public interface UserService {

	public SikguVO login(String sikgu_id, String sikgu_password);
	public SikguVO loginCheckId(String sikgu_id);
	public List<SikguVO> getSikguList();
	public List<SikguVO> getCustomerList();
	public List<SikguVO> getStoreList();
	public SikguVO checkSikgu(String sikgu_id);
	public SikguVO checkCustomer(String customer_nickname);
	public SikguVO checkStore(String store_biz_number);
	public int insertSikgu(SikguVO vo);
	public int insertCustomer(CustomerVO vo);
	public int insertStore(StoreVO vo);
	public int updateSikgu(SikguVO vo);
	public int updateCustomer(CustomerVO vo);
	public int updateCustomerXY(CustomerVO vo);
	public int updateStore(StoreVO vo);
	public CustomerVO getCustomer(String sikgu_id);
	public StoreVO getStore(String sikgu_id);
}
