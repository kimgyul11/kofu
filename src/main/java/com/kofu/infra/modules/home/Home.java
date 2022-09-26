package com.kofu.infra.modules.home;

public class Home {
	// 질문 리스트
	private String content;
	private String user_id;
	private String cc_name;
	
	// 질문 작성
	private String questionSeq;
	private String userID;
	private String language_select;
	private String writetime;
	private String lastModTime;
	private Integer questionDelNy;
	
	
	
	// -------------------------------------
	
	
	
	public String getContent() {
		return content;
	}
	public Integer getQuestionDelNy() {
		return questionDelNy;
	}
	public void setQuestionDelNy(Integer questionDelNy) {
		this.questionDelNy = questionDelNy;
	}
	public String getLanguage_select() {
		return language_select;
	}
	public void setLanguage_select(String language_select) {
		this.language_select = language_select;
	}
	public String getWritetime() {
		return writetime;
	}
	public void setWritetime(String writetime) {
		this.writetime = writetime;
	}
	public String getLastModTime() {
		return lastModTime;
	}
	public void setLastModTime(String lastModTime) {
		this.lastModTime = lastModTime;
	}
	public String getQuestionSeq() {
		return questionSeq;
	}
	public void setQuestionSeq(String questionSeq) {
		this.questionSeq = questionSeq;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getCc_name() {
		return cc_name;
	}
	public void setCc_name(String cc_name) {
		this.cc_name = cc_name;
	}
	
	
}
