package com.kofu.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	
	private String ccg_seq;
	private String ccSeq;
	private String cc_name;
	private String cc_nameEng;
	private String cc_number;
	private Integer cc_delNy;
	private Integer cc_useNy;
	private String cc_InsertDate;
	private String cc_ModDate;
	
	private Integer UseNY;
	private String ccgSeq;
	private String ccg_groupname;
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	//---------------------------------------
	
	public String getCcSeq() {
		return ccSeq;
	}
	public String getCcgSeq() {
		return ccgSeq;
	}
	public void setCcgSeq(String ccgSeq) {
		this.ccgSeq = ccgSeq;
	}
	public static List<Code> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Code> cachedCodeArrayList) {
		Code.cachedCodeArrayList = cachedCodeArrayList;
	}
	public void setCcSeq(String ccSeq) {
		this.ccSeq = ccSeq;
	}
	public String getCc_name() {
		return cc_name;
	}
	public void setCc_name(String cc_name) {
		this.cc_name = cc_name;
	}
	public String getCc_nameEng() {
		return cc_nameEng;
	}
	public void setCc_nameEng(String cc_nameEng) {
		this.cc_nameEng = cc_nameEng;
	}
	public String getCc_number() {
		return cc_number;
	}
	public void setCc_number(String cc_number) {
		this.cc_number = cc_number;
	}
	public Integer getCc_delNy() {
		return cc_delNy;
	}
	public void setCc_delNy(Integer cc_delNy) {
		this.cc_delNy = cc_delNy;
	}
	public Integer getCc_useNy() {
		return cc_useNy;
	}
	public void setCc_useNy(Integer cc_useNy) {
		this.cc_useNy = cc_useNy;
	}
	public String getCcg_seq() {
		return ccg_seq;
	}
	public void setCcg_seq(String ccg_seq) {
		this.ccg_seq = ccg_seq;
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
	public String getCc_InsertDate() {
		return cc_InsertDate;
	}
	public void setCc_InsertDate(String cc_InsertDate) {
		this.cc_InsertDate = cc_InsertDate;
	}
	public String getCc_ModDate() {
		return cc_ModDate;
	}
	public void setCc_ModDate(String cc_ModDate) {
		this.cc_ModDate = cc_ModDate;
	}

}
