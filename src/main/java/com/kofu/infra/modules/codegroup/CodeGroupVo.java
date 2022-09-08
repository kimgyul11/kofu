package com.kofu.infra.modules.codegroup;

public class CodeGroupVo {

	private String ccgSeq;
	
	public String getCcgSeq() {
		return ccgSeq;
	}
	public void setCcgSeq(String ccgSeq) {
		this.ccgSeq = ccgSeq;
	}
	private Integer shOption;
	private String shValue;
	private Integer shDelNy;
	private String startDate;
	private String endDate;
	
	
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public Integer getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}
	// -----------
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	
}

