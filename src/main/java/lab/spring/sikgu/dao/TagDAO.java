package lab.spring.sikgu.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lab.spring.sikgu.model.TagVO;

@Repository
public class TagDAO {

	@Autowired
	SqlSession sqlsession;
	
	public List<TagVO> getTag(HashMap<String, Object> searchKey) {
		return sqlsession.selectList("lab.mybatis.tag.TagMapper.getTag", searchKey);
	}

}
