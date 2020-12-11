package com.greenart.grp.repository.idNregDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.grp.model.BuseoVO;
import com.greenart.grp.model.EmpVO;
import com.greenart.grp.model.GradeVO;

@Repository
public class IDnRegDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<BuseoVO> grpGetBuseo() {
		return sqlSession.selectList("register.grpGetBuseo");
	}
	
	public List<GradeVO> grpGetGrade() {
		return sqlSession.selectList("register.grpGetGrade");
	}
	
	public void setEmpRegister(EmpVO evo) {
		sqlSession.insert("register.setEmpRegister", evo);
	}
	
	public int getEmpNumCheck(EmpVO evo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("empNum", evo.getEmpNum());
		map.put("empPwd", evo.getEmpPwd());
		return sqlSession.selectOne("register.getEmpNumCheck", map);
	}
	
	public EmpVO getEmpInfo(EmpVO evo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("empNum", evo.getEmpNum());
		map.put("empPwd", evo.getEmpPwd());
		return sqlSession.selectOne("register.getEmpInfo", map);
	}
}
