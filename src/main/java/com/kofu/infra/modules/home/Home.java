package com.kofu.infra.modules.home;

public class Home {
	// 질문 리스트
	private String content;
	private String wirtetime;
	private String user_id;
	private  String cc_name;
	
	// 질문 작성
	private String questionSeq;
	private String userID;
	
	
	
	// -------------------------------------
	
	public String getContent() {
		return content;
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
	public String getWirtetime() {
		return wirtetime;
	}
	public void setWirtetime(String wirtetime) {
		this.wirtetime = wirtetime;
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
