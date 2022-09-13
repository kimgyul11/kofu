package com.kofu.infra.modules.codegroup;

public class CodeGroup {
	
	private String ccgSeq;
	private String ccg_groupname;
	private Integer UseNY;
	private Integer ccg_nomber;
	private String ccg_groupnameEng;
	private String insertdate;
	private String moddate;
	private Integer delNy;
	
	
	
	
//	-----------------------------------------
	
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getCcgSeq() {
		return ccgSeq;
	}
	public void setCcgSeq(String ccgSeq) {
		this.ccgSeq = ccgSeq;
	}

	public String getInsertdate() {
		return insertdate;
	}
	public void setInsertdate(String insertdate) {
		this.insertdate = insertdate;
	}
	public String getModdate() {
		return moddate;
	}
	public void setModdate(String moddate) {
		this.moddate = moddate;
	}
	public String getCcg_groupnameEng() {
		return ccg_groupnameEng;
	}
	public void setCcg_groupnameEng(String ccg_groupnameEng) {
		this.ccg_groupnameEng = ccg_groupnameEng;
	}
	//---------

	public String getCcg_groupname() {
		return ccg_groupname;
	}
	public void setCcg_groupname(String ccg_groupname) {
		this.ccg_groupname = ccg_groupname;
	}
	public Integer getUseNY() {
		return UseNY;
	}
	public void setUseNY(Integer useNY) {
		UseNY = useNY;
	}
	public Integer getCcg_nomber() {
		return ccg_nomber;
	}
	public void setCcg_nomber(Integer ccg_nomber) {
		this.ccg_nomber = ccg_nomber;
	}

	private Integer seq;
	private Integer ccg_seq;
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public Integer getCcg_seq() {
		return ccg_seq;
	}
	public Integer getCountCCG() {
		return countCCG;
	}
	public void setCountCCG(Integer countCCG) {
		this.countCCG = countCCG;
	}
	public void setCcg_seq(Integer ccg_seq) {
		this.ccg_seq = ccg_seq;
	}
	
	private Integer countCCG;
}