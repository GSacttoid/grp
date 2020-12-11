package com.greenart.grp.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class EmpVO {
	private int empID;
	private String empBuseoCode;
	private String empBuseoName;
	private String empGradeCode;
	private String empGradeName;
	private String empNum;
	private String empEnter;
	private String empName;
	private String empPwd;
	private String empPhoto;
	private Date empRegdate;
	private String empHead;
	private int empStep;
	private int empAuth;
	private String empConfirm;
	private int ref;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	private int empOid;
	private String empGender;
	private String empBirth;
	private String empCp;
	private String empIn;
	private String empTel;
	private String empRecruit;
	private String empHope;
	private String empHeight;
	private String empWeight;
	private String empService;
	private String empReligion;
	private String empHobby;
	private String empSpeciality;
	private String empDisablility;
	private String empReward;
	private String empMarried;
	private String empLicense1;
	private String empLicense2;
	private String empLicense3;
	private String empLicense4;
	private String empLicense5;
	private String empLang1;
	private String empLang2;
	private String empLang3;
	private String empLang4;
	private String empLang5;
	private String empRnp1;
	private String empRnp2;
	private String empRnp3;
	private String empRnp4;
	private String empRnp5;
	private String empComment;
	private int empIDFK;
	
	
	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}
	public String getEmpBuseoCode() {
		return empBuseoCode;
	}
	public void setEmpBuseoCode(String empBuseoCode) {
		this.empBuseoCode = empBuseoCode;
	}
	public String getEmpBuseoName() {
		return empBuseoName;
	}
	public void setEmpBuseoName(String empBuseoName) {
		this.empBuseoName = empBuseoName;
	}
	public String getEmpGradeCode() {
		return empGradeCode;
	}
	public void setEmpGradeCode(String empGradeCode) {
		this.empGradeCode = empGradeCode;
	}
	public String getEmpGradeName() {
		return empGradeName;
	}
	public void setEmpGradeName(String empGradeName) {
		this.empGradeName = empGradeName;
	}
	public String getEmpNum() {
		return empNum;
	}
	public void setEmpNum(String empNum) {
		this.empNum = empNum;
	}
	public String getEmpEnter() {
		return empEnter;
	}
	public void setEmpEnter(String empEnter) {
		this.empEnter = empEnter;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpPwd() {
		return empPwd;
	}
	public void setEmpPwd(String empPwd) {
		this.empPwd = empPwd;
	}
	public String getEmpPhoto() {
		return empPhoto;
	}
	public void setEmpPhoto(String empPhoto) {
		this.empPhoto = empPhoto;
	}
	public String getEmpRegdate() {
		return sdf.format(empRegdate);
	}
	public void setEmpRegdate(Date empRegdate) {
		this.empRegdate = empRegdate;
	}
	public String getEmpHead() {
		return empHead;
	}
	public void setEmpHead(String empHead) {
		this.empHead = empHead;
	}
	public int getEmpStep() {
		return empStep;
	}
	public void setEmpStep(int empStep) {
		this.empStep = empStep;
	}
	public int getEmpAuth() {
		return empAuth;
	}
	public void setEmpAuth(int empAuth) {
		this.empAuth = empAuth;
	}
	public String getEmpConfirm() {
		return empConfirm;
	}
	public void setEmpConfirm(String empConfirm) {
		this.empConfirm = empConfirm;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	
	
	
	public int getEmpOid() {
		return empOid;
	}
	public void setEmpOid(int empOid) {
		this.empOid = empOid;
	}
	public String getEmpGender() {
		return empGender;
	}
	public void setEmpGender(String empGender) {
		this.empGender = empGender;
	}
	public String getEmpBirth() {
		return empBirth;
	}
	public void setEmpBirth(String empBirth) {
		this.empBirth = empBirth;
	}
	public String getEmpCp() {
		return empCp;
	}
	public void setEmpCp(String empCp) {
		this.empCp = empCp;
	}
	public String getEmpIn() {
		return empIn;
	}
	public void setEmpIn(String empIn) {
		this.empIn = empIn;
	}
	public String getEmpTel() {
		return empTel;
	}
	public void setEmpTel(String empTel) {
		this.empTel = empTel;
	}
	public String getEmpRecruit() {
		return empRecruit;
	}
	public void setEmpRecruit(String empRecruit) {
		this.empRecruit = empRecruit;
	}
	public String getEmpHope() {
		return empHope;
	}
	public void setEmpHope(String empHope) {
		this.empHope = empHope;
	}
	public String getEmpHeight() {
		return empHeight;
	}
	public void setEmpHeight(String empHeight) {
		this.empHeight = empHeight;
	}
	public String getEmpWeight() {
		return empWeight;
	}
	public void setEmpWeight(String empWeight) {
		this.empWeight = empWeight;
	}
	public String getEmpService() {
		return empService;
	}
	public void setEmpService(String empService) {
		this.empService = empService;
	}
	public String getEmpReligion() {
		return empReligion;
	}
	public void setEmpReligion(String empReligion) {
		this.empReligion = empReligion;
	}
	public String getEmpHobby() {
		return empHobby;
	}
	public void setEmpHobby(String empHobby) {
		this.empHobby = empHobby;
	}
	public String getEmpSpeciality() {
		return empSpeciality;
	}
	public void setEmpSpeciality(String empSpeciality) {
		this.empSpeciality = empSpeciality;
	}
	public String getEmpDisablility() {
		return empDisablility;
	}
	public void setEmpDisablility(String empDisablility) {
		this.empDisablility = empDisablility;
	}
	public String getEmpReward() {
		return empReward;
	}
	public void setEmpReward(String empReward) {
		this.empReward = empReward;
	}
	public String getEmpMarried() {
		return empMarried;
	}
	public void setEmpMarried(String empMarried) {
		this.empMarried = empMarried;
	}
	public String getEmpLicense1() {
		return empLicense1;
	}
	public void setEmpLicense1(String empLicense1) {
		this.empLicense1 = empLicense1;
	}
	public String getEmpLicense2() {
		return empLicense2;
	}
	public void setEmpLicense2(String empLicense2) {
		this.empLicense2 = empLicense2;
	}
	public String getEmpLicense3() {
		return empLicense3;
	}
	public void setEmpLicense3(String empLicense3) {
		this.empLicense3 = empLicense3;
	}
	public String getEmpLicense4() {
		return empLicense4;
	}
	public void setEmpLicense4(String empLicense4) {
		this.empLicense4 = empLicense4;
	}
	public String getEmpLicense5() {
		return empLicense5;
	}
	public void setEmpLicense5(String empLicense5) {
		this.empLicense5 = empLicense5;
	}
	public String getEmpLang1() {
		return empLang1;
	}
	public void setEmpLang1(String empLang1) {
		this.empLang1 = empLang1;
	}
	public String getEmpLang2() {
		return empLang2;
	}
	public void setEmpLang2(String empLang2) {
		this.empLang2 = empLang2;
	}
	public String getEmpLang3() {
		return empLang3;
	}
	public void setEmpLang3(String empLang3) {
		this.empLang3 = empLang3;
	}
	public String getEmpLang4() {
		return empLang4;
	}
	public void setEmpLang4(String empLang4) {
		this.empLang4 = empLang4;
	}
	public String getEmpLang5() {
		return empLang5;
	}
	public void setEmpLang5(String empLang5) {
		this.empLang5 = empLang5;
	}
	public String getEmpRnp1() {
		return empRnp1;
	}
	public void setEmpRnp1(String empRnp1) {
		this.empRnp1 = empRnp1;
	}
	public String getEmpRnp2() {
		return empRnp2;
	}
	public void setEmpRnp2(String empRnp2) {
		this.empRnp2 = empRnp2;
	}
	public String getEmpRnp3() {
		return empRnp3;
	}
	public void setEmpRnp3(String empRnp3) {
		this.empRnp3 = empRnp3;
	}
	public String getEmpRnp4() {
		return empRnp4;
	}
	public void setEmpRnp4(String empRnp4) {
		this.empRnp4 = empRnp4;
	}
	public String getEmpRnp5() {
		return empRnp5;
	}
	public void setEmpRnp5(String empRnp5) {
		this.empRnp5 = empRnp5;
	}
	public String getEmpComment() {
		return empComment;
	}
	public void setEmpComment(String empComment) {
		this.empComment = empComment;
	}
	public int getEmpIDFK() {
		return empIDFK;
	}
	public void setEmpIDFK(int empIDFK) {
		this.empIDFK = empIDFK;
	}
}
