package com.kofu.infra.modules.member;

public class MemberVo {

	private String memberSeq;
	private String user_id;
	private String bookmarkSeq;
	
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

	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	
	
}
