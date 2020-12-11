package com.greenart.grp.repository.comDao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.grp.model.ComVO;

@Repository
public class ComDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public ComVO getCompany() {
		return sqlSession.selectOne("company.getCompany");
	}
	
	public void setCompany(ComVO cvo) {
		sqlSession.update("company.setCompany", cvo);
	}
}
