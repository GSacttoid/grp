package com.greenart.grp.controller.comCtr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.greenart.grp.model.ComVO;
import com.greenart.grp.service.comSrv.ComSrv;

@Controller
@RequestMapping("/company")
public class ComCtr {
	
	@Autowired
	ComSrv comSrv;
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String getCompany() {
		return "grp_company/grp_company_main";
	}
	
	@RequestMapping(value="", method=RequestMethod.POST)
	@ResponseBody
	public ComVO getCompanyInfo() {
		ComVO cvo = comSrv.getCompany();
		return cvo;
	}
	
	@RequestMapping(value="/grp_company", method=RequestMethod.POST)
	public String grpCompany(@ModelAttribute ComVO cvo) {
		comSrv.setCompany(cvo);
		return "grp_company/grp_company_main";
	}
}
