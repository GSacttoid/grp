package com.greenart.grp.controller.empCtr;

import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.greenart.grp.model.EmpVO;
import com.greenart.grp.paging.Pager;
import com.greenart.grp.service.empSrv.EmpSrv;
import com.greenart.grp.service.idNregSrv.IDnRegSrv;

@Controller
@RequestMapping("")
public class EmpCtr {
	
	@Autowired
	EmpSrv empSrv;
	
	@Autowired
	IDnRegSrv irSrv;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping("/employee/grp_employee_list")
	public ModelAndView employeeList(
			/*pager*/ @RequestParam(defaultValue="1") int curPage, 
			@RequestParam (defaultValue="emp_name") String searchOpt, 
			@RequestParam(defaultValue="") String words) {
		
		ModelAndView mav = new ModelAndView();
		int count = empSrv.getEmpCount(searchOpt,words);
		
		/*pager*/
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<EmpVO> list = empSrv.getEmpList(start, end, searchOpt,words);
		
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);
		
		/*pager*/
		mav.addObject("start", start); //선택 페이지 시작번호 
		mav.addObject("end", end); //선택 페이지 끝번호
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("curBlock", pager.getCurBlock());
		mav.addObject("totalBlock", pager.getTotBlock());
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("curPage", pager.getCurPage());
		mav.addObject("totalPage", pager.getTotPage());
		
		/*페이지 번호를 클릭시 css active 클래스 처리*/
		mav.addObject("selected", pager.getCurPage());
		
		mav.setViewName("/grp_employee/grp_employee_list");
		return mav;
	}
	
	@RequestMapping(value="/employee/grp_employee_delete", method=RequestMethod.POST)
	@ResponseBody
	public String getEmpDelete(@RequestParam int eid) {
		empSrv.setEmpDelete(eid);
		return "success";
	}
	
	@RequestMapping(value="/employee/grp_employee_delete_all", method=RequestMethod.POST)
	@ResponseBody
	public String getEmpDeleteAll(@RequestParam(value="chkArr[]") List<String> chkArr) {
		int eid;
		for(String list : chkArr) {
			eid = Integer.parseInt(list);
			empSrv.setEmpDeleteAll(eid);
		}
		return "success";
	}
	
	@RequestMapping(value="/employee/grp_employee_head_change", method=RequestMethod.POST)
	@ResponseBody
	public String getEmpHeadChange(@RequestParam String empHead, @RequestParam int empID) {
		empSrv.setEmpHeadChange(empHead, empID);
		return "success";
	}
	
	@RequestMapping(value="/employee/grp_employee_confirm_change", method=RequestMethod.POST)
	@ResponseBody
	public String setEmpConfirmChange(@RequestParam String empConfirm, @RequestParam int empID) {
		empSrv.setEmpConfirmChange(empConfirm, empID);
		return "success";
	}
	
	@RequestMapping(value="/employee/grp_employee_register", method=RequestMethod.GET)
	public ModelAndView gepEmpReg(HttpSession session) {
		String sessionNum = (String) session.getAttribute("empNum");
		
		EmpVO evo = empSrv.getEmpOne(sessionNum);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("empOne", evo);
		mav.setViewName("/grp_employee/grp_employee_register");
		return mav;
	}

	@RequestMapping(value="/grp_register", method=RequestMethod.GET)
	public String getGrpRegister() {
		return "grp_register";
	}
	
	@RequestMapping(value="/grp_register", method=RequestMethod.POST)
	public String setGrpRegister(@ModelAttribute EmpVO evo) {
		//사원번호 만들기 emp_num => 입사년도 + 부서코드 + 직급코드 + 순번
		int enterYear = Integer.parseInt(evo.getEmpEnter().substring(0,4));
		String bCode = evo.getEmpBuseoCode();
		String gCode = evo.getEmpGradeCode();
		String eNum = enterYear + bCode + gCode;
		evo.setEmpNum(eNum);
		//System.out.println(evo.getEmpNum());
		
		//호봉 계산하기 empStep = 현재년도 - 입사년도
		Calendar cal = Calendar.getInstance();
		int hYear = cal.get(Calendar.YEAR);
		int eStep = (hYear - enterYear) + 1;
		evo.setEmpStep(eStep);
		
		/*가입 필수 정보 입력*/
		irSrv.setEmpRegister(evo);
		/*//가입 필수 정보 입력*/
		
		return "redirect:/grp_login";
	}
	
	@RequestMapping(value="/employee/grp_admin_register", method=RequestMethod.POST)
	public String setEmpRegOthers(@ModelAttribute EmpVO evo, MultipartFile file) {
		System.out.println(evo.getEmpIDFK());
		/*추가 정보 입력*/
		empSrv.setEmpRegOthers(evo);
		/*//추가 정보 입력*/
		
		/*파일업로드*/
		
		/*//파일업로드*/
		return "redirect:/employee/grp_employee_list";
	}
	
}
