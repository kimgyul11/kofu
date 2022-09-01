package com.kofu.infra.modules.codegroup;

public class CodeGroup {
	
	private Integer ccgSeq;
	private String ccg_groupname;
	private Integer UseNY;
	private Integer ccg_nomber;
	//---------
	public Integer getCcgSeq() {
		return ccgSeq;
	}
	public void setCcgSeq(Integer ccgSeq) {
		this.ccgSeq = ccgSeq;
	}
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