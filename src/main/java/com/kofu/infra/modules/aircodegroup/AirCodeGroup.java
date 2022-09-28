package com.kofu.infra.modules.aircodegroup;

public class AirCodeGroup {
	private String ccgSeq;
	private String ccgGroupNameKor;
	private String ccgGroupNameEng;
	private	Integer ccgDelNy;
	private Integer ccgUseNy;
	private String ccgInsertDate;
	private String ccgModDate;
	private Integer countCCG;

	
//	--------------------------------------------------------
	
	
	public String getCcgSeq() {
		return ccgSeq;
	}
	public Integer getCcgDelNy() {
		return ccgDelNy;
	}
	public void setCcgDelNy(Integer ccgDelNy) {
		this.ccgDelNy = ccgDelNy;
	}
	public Integer getCcgUseNy() {
		return ccgUseNy;
	}
	public void setCcgUseNy(Integer ccgUseNy) {
		this.ccgUseNy = ccgUseNy;
	}
	public Integer getCountCCG() {
		return countCCG;
	}
	public void setCountCCG(Integer countCCG) {
		this.countCCG = countCCG;
	}
	public void setCcgSeq(String ccgSeq) {
		this.ccgSeq = ccgSeq;
	}
	public String getCcgGroupNameKor() {
		return ccgGroupNameKor;
	}
	public void setCcgGroupNameKor(String ccgGroupNameKor) {
		this.ccgGroupNameKor = ccgGroupNameKor;
	}
	public String getCcgGroupNameEng() {
		return ccgGroupNameEng;
	}
	public void setCcgGroupNameEng(String ccgGroupNameEng) {
		this.ccgGroupNameEng = ccgGroupNameEng;
	}
	public String getCcgInsertDate() {
		return ccgInsertDate;
	}
	public void setCcgInsertDate(String ccgInsertDate) {
		this.ccgInsertDate = ccgInsertDate;
	}
	public String getCcgModDate() {
		return ccgModDate;
	}
	public void setCcgModDate(String ccgModDate) {
		this.ccgModDate = ccgModDate;
	}
}
