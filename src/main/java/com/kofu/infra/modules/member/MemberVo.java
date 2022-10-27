package com.kofu.infra.modules.member;

public class MemberVo {

	private String memberSeq;
	private String user_id;
	private String ansUserId;
	private String ansSeq;
	private String bookmarkSeq;
	private String questionSeq;
	private String userID;
	
	
	
	public String getAnsUserId() {
		return ansUserId;
	}

	public void setAnsUserId(String ansUserId) {
		this.ansUserId = ansUserId;
	}

	public String getAnsSeq() {
		return ansSeq;
	}

	public void setAnsSeq(String ansSeq) {
		this.ansSeq = ansSeq;
	}

	public String getQuestionSeq() {
		return questionSeq;
	}

	public void setQuestionSeq(String questionSeq) {
		this.questionSeq = questionSeq;
	}

	public String getBookmarkSeq() {
		return bookmarkSeq;
	}

	public void setBookmarkSeq(String bookmarkSeq) {
		this.bookmarkSeq = bookmarkSeq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getMemberSeq() {
		return memberSeq;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	
	
}
