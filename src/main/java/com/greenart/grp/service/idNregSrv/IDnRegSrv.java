package com.greenart.grp.service.idNregSrv;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenart.grp.model.BuseoVO;
import com.greenart.grp.model.EmpVO;
import com.greenart.grp.model.GradeVO;
import com.greenart.grp.repository.idNregDao.IDnRegDao;

@Service
public class IDnRegSrv {

	@Autowired
	IDnRegDao irDao;
	
	public List<BuseoVO> grpGetBuseo() {
		return irDao.grpGetBuseo();
	}
	
	public List<GradeVO> grpGetGrade() {
		return irDao.grpGetGrade();
	}
	
	public void setEmpRegister(EmpVO evo) {
		irDao.setEmpRegister(evo);
	}
	
	public int getEmpNumCheck(EmpVO evo) {
		return irDao.getEmpNumCheck(evo);
	}
	
	public EmpVO getEmpInfo(EmpVO evo) {
		return irDao.getEmpInfo(evo);
	}
	
	public void setSession(EmpVO evo, HttpSession session) {
		EmpVO vo = irDao.getEmpInfo(evo);
		if(vo != null) {
			session.setAttribute("empNum", vo.getEmpNum());
			session.setAttribute("empName", vo.getEmpName());
			session.setAttribute("empAuth", vo.getEmpAuth());
			session.setAttribute("empConfirm", vo.getEmpConfirm());
			session.setAttribute("empBuseoName", vo.getEmpBuseoName());
			session.setAttribute("empGradeName", vo.getEmpGradeName());
		}
	}
	public void setLogout(HttpSession session) {
		session.invalidate();
	}
	
}
