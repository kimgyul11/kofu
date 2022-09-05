package com.kofu.infra.modules.code;

public class Code {
	
	private Integer seq;
	private String cc_Name;
	private Integer use_NY;
	private Integer nember;
	private Integer ccg_seq;
	
	
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public String getCc_Name() {
		return cc_Name;
	}
	public void setCc_Name(String cc_Name) {
		this.cc_Name = cc_Name;
	}
	public Integer getUse_NY() {
		return use_NY;
	}
	public void setUse_NY(Integer use_NY) {
		this.use_NY = use_NY;
	}
	public Integer getNember() {
		return nember;
	}
	public void setNember(Integer nember) {
		this.nember = nember;
	}
	public Integer getCcg_seq() {
		return ccg_seq;
	}
	public void setCcg_seq(Integer ccg_seq) {
		this.ccg_seq = ccg_seq;
	}
	
	private Integer ccgSeq;
	private String ccg_groupname;
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
	

	private Integer UseNY;
	public Integer getUseNY() {
		return UseNY;
	}
	public void setUseNY(Integer useNY) {
		UseNY = useNY;
	}
	
}
