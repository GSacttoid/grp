package com.greenart.grp.controller.idNregCtr;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.grp.model.BuseoVO;
import com.greenart.grp.model.ComVO;
import com.greenart.grp.model.EmpVO;
import com.greenart.grp.model.GradeVO;
import com.greenart.grp.service.comSrv.ComSrv;
import com.greenart.grp.service.empSrv.EmpSrv;
import com.greenart.grp.service.idNregSrv.IDnRegSrv;

@Controller
public class IDnRegCtr {
	
	@Autowired
	EmpSrv empSrv;
	
	@Autowired
	IDnRegSrv irSrv;
	
	@Autowired
	ComSrv comSrv;
	
	@RequestMapping("")
	public String main() {
		return "main";
	}

	@RequestMapping(value="/grp_login", method=RequestMethod.GET)
	public ModelAndView getGrpLogin() {
		ComVO cvo = comSrv.getCompany();
		ModelAndView mav = new ModelAndView();
		mav.addObject("comName", cvo.getComName());
		mav.addObject("comSubName", cvo.getComSubName());
		mav.setViewName("grp_login");
		return mav;
	}
	
	@RequestMapping(value="/grp_login", method=RequestMethod.POST)
	public ModelAndView setGrpLogin(@ModelAttribute EmpVO evo, HttpSession session) {
		int result = irSrv.getEmpNumCheck(evo);
		ComVO cvo = comSrv.getCompany();
		int auth = comSrv.getCompany().getComAuth();
		ModelAndView mav = new ModelAndView();
		mav.addObject("comName", cvo.getComName());
		mav.addObject("comSubName", cvo.getComSubName());
		String msg;
		if(result > 0) {
			EmpVO vo = irSrv.getEmpInfo(evo);
			if(vo.getEmpAuth() > auth && vo.getEmpConfirm().equals("Y")) {
				irSrv.setSession(evo, session);
				mav.setViewName("redirect:/grp_admin");
			}else if(vo.getEmpAuth() > auth && vo.getEmpConfirm().equals("Y")) {
				mav.setViewName("redirect:/");
			}else {
				msg = "접속권한이 없습니다. \n관리자에게 문의하세요.";
				mav.addObject("msg", msg);
				mav.setViewName("grp_login");
			}
		}else {
			msg = "등록되지 않은 정보입니다. 가입하세요.";
			mav.addObject("msg", msg);
			mav.setViewName("grp_login");
		}
		return mav;
	}
	
	@RequestMapping(value="/grp_logout", method=RequestMethod.GET)
	public String getGrpLogout(HttpSession session) {
		irSrv.setLogout(session);
		return "redirect:/grp_login";
	}
	
	@RequestMapping(value="/grp_get_buseo", method=RequestMethod.POST)
	@ResponseBody
	public List<BuseoVO> grpGetBuseo() {
		List<BuseoVO> list = irSrv.grpGetBuseo();
		return list;
	}
	
	@RequestMapping(value="/grp_get_grade", method=RequestMethod.POST)
	@ResponseBody
	public List<GradeVO> grpGetGrade() {
		List<GradeVO> list = irSrv.grpGetGrade();
		return list;
	}
	
}
