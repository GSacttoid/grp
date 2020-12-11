package com.greenart.grp.service.empSrv;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.grp.model.EmpVO;
import com.greenart.grp.repository.empDao.EmpDao;

@Service
public class EmpSrv {

	@Autowired
	EmpDao empDao;
	
	public List<EmpVO> getEmpList(int start, int end, String searchOpt, String words){
		return empDao.getEmpList(start, end, searchOpt, words);
	}
	
	public int getEmpCount(String searchOpt, String words) {
		return empDao.getEmpCount(searchOpt, words);
	}
	
	public void setEmpDelete(int eid) {
		empDao.setEmpDelete(eid);
	}
	
	public void setEmpDeleteAll(int eid) {
		empDao.setEmpDeleteAll(eid);
	}

	public void setEmpHeadChange(String empHead, int empID) {
		empDao.setEmpHeadChange(empHead, empID);
	}
	
	public void setEmpConfirmChange(String empConfirm, int empID) {
		empDao.setEmpConfirmChange(empConfirm, empID);
	}
	
	public EmpVO getEmpOne(String sessionNum) {
		return empDao.getEmpOne(sessionNum);
	}
	
	public void setEmpRegOthers(EmpVO evo) {
		empDao.setEmpRegOthers(evo);
	}

}
