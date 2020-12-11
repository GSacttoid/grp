package com.greenart.grp.repository.empDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greenart.grp.model.EmpVO;

@Repository
public class EmpDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<EmpVO> getEmpList(int start, int end, String searchOpt, String words) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("employee.getEmpList", map);
	}
	
	public int getEmpCount(String searchOpt, String words) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sqlSession.selectOne("employee.getEmpCount", map);
	}
	
	public void setEmpDelete(int eid) {
		sqlSession.delete("employee.setEmpDelete", eid);
	}
	
	public void setEmpDeleteAll(int eid) {
		sqlSession.delete("employee.setEmpDeleteAll", eid);
	}
	
	public void setEmpHeadChange(String empHead, int empID) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("empHead", empHead);
		map.put("empID", empID);
		sqlSession.update("employee.setEmpHeadChange", map);
	}
	
	public void setEmpConfirmChange(String empConfirm, int empID) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("empConfirm", empConfirm);
		map.put("empID", empID);
		sqlSession.update("employee.setEmpConfirmChange", map);
	}
	
	public EmpVO getEmpOne(String sessionNum) {
		return sqlSession.selectOne("employee.getEmpOne",sessionNum);
	}
	
	public void setEmpRegOthers(EmpVO evo) {
		sqlSession.insert("register.setEmpRegOthers", evo);
	}
}
