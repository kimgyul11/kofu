package com.kofu.infra.modules.member;


import org.springframework.web.multipart.MultipartFile;

import com.kofu.infra.common.base.Base;

public class Member extends Base{
	
	private String memberSeq;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_dob;
	private Integer user_level;
	private String user_conutry;
	private Integer lean_language;
	private Integer user_gender;
	private String user_addr;
	private String user_email;
	private Integer user_favoriteLanguage;
	private String snsId;

	private String questionSeq;
	private String content;
	private String writetime;
	private String userID;
	private String language_select;
	private String lastModTime;
	private Integer questionDelNy;
	
	//answer 테이블
	private String ansSeq;
	private String ansWriteTime;
	private String ansUserId;
	private String ansContent;
	private String ansQuestionSeq;
	private Integer ansDelNy;
	private Integer ansSelect;
	
	//bookmark테이블
	private String bookmarkSeq;
	private Integer question_questionSeq;
	private String bookmark_UserId;
	private Integer bookmark_useNy;
	
	//answer_like테이블
	private String likeSeq;
	private String likeUserId;
	private String likeTime;
	private Integer likeAnswerSeq;
	private String likeUseNy;
	
	
	
	//-----------------------------------------------------------------------------
	
	
	
	
	public String getSnsId() {
		return snsId;
	}
	public void setSnsId(String snsId) {
		this.snsId = snsId;
	}
	private MultipartFile[] uploadedImage;
	
	



	public String getQuestionSeq() {
		return questionSeq;
	}
	public void setQuestionSeq(String questionSeq) {
		this.questionSeq = questionSeq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWritetime() {
		return writetime;
	}
	public void setWritetime(String writetime) {
		this.writetime = writetime;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getLanguage_select() {
		return language_select;
	}
	public void setLanguage_select(String language_select) {
		this.language_select = language_select;
	}
	public String getLastModTime() {
		return lastModTime;
	}
	public void setLastModTime(String lastModTime) {
		this.lastModTime = lastModTime;
	}
	public Integer getQuestionDelNy() {
		return questionDelNy;
	}
	public void setQuestionDelNy(Integer questionDelNy) {
		this.questionDelNy = questionDelNy;
	}
	public String getAnsSeq() {
		return ansSeq;
	}
	public void setAnsSeq(String ansSeq) {
		this.ansSeq = ansSeq;
	}
	public String getAnsWriteTime() {
		return ansWriteTime;
	}
	public void setAnsWriteTime(String ansWriteTime) {
		this.ansWriteTime = ansWriteTime;
	}
	public String getAnsUserId() {
		return ansUserId;
	}
	public void setAnsUserId(String ansUserId) {
		this.ansUserId = ansUserId;
	}
	public String getAnsContent() {
		return ansContent;
	}
	public void setAnsContent(String ansContent) {
		this.ansContent = ansContent;
	}
	public String getAnsQuestionSeq() {
		return ansQuestionSeq;
	}
	public void setAnsQuestionSeq(String ansQuestionSeq) {
		this.ansQuestionSeq = ansQuestionSeq;
	}
	public Integer getAnsDelNy() {
		return ansDelNy;
	}
	public void setAnsDelNy(Integer ansDelNy) {
		this.ansDelNy = ansDelNy;
	}
	public Integer getAnsSelect() {
		return ansSelect;
	}
	public void setAnsSelect(Integer ansSelect) {
		this.ansSelect = ansSelect;
	}
	public String getBookmarkSeq() {
		return bookmarkSeq;
	}
	public void setBookmarkSeq(String bookmarkSeq) {
		this.bookmarkSeq = bookmarkSeq;
	}
	public Integer getQuestion_questionSeq() {
		return question_questionSeq;
	}
	public void setQuestion_questionSeq(Integer question_questionSeq) {
		this.question_questionSeq = question_questionSeq;
	}
	public String getBookmark_UserId() {
		return bookmark_UserId;
	}
	public void setBookmark_UserId(String bookmark_UserId) {
		this.bookmark_UserId = bookmark_UserId;
	}
	public Integer getBookmark_useNy() {
		return bookmark_useNy;
	}
	public void setBookmark_useNy(Integer bookmark_useNy) {
		this.bookmark_useNy = bookmark_useNy;
	}
	public String getLikeSeq() {
		return likeSeq;
	}
	public void setLikeSeq(String likeSeq) {
		this.likeSeq = likeSeq;
	}
	public String getLikeUserId() {
		return likeUserId;
	}
	public void setLikeUserId(String likeUserId) {
		this.likeUserId = likeUserId;
	}
	public String getLikeTime() {
		return likeTime;
	}
	public void setLikeTime(String likeTime) {
		this.likeTime = likeTime;
	}
	public Integer getLikeAnswerSeq() {
		return likeAnswerSeq;
	}
	public void setLikeAnswerSeq(Integer likeAnswerSeq) {
		this.likeAnswerSeq = likeAnswerSeq;
	}
	public String getLikeUseNy() {
		return likeUseNy;
	}
	public void setLikeUseNy(String likeUseNy) {
		this.likeUseNy = likeUseNy;
	}
	public MultipartFile[] getUploadedImage() {
		return uploadedImage;
	}
	public void setUploadedImage(MultipartFile[] uploadedImage) {
		this.uploadedImage = uploadedImage;
	}
	public Integer getUser_gender() {
		return user_gender;
	}
	
	public Integer getUser_favoriteLanguage() {
		return user_favoriteLanguage;
	}
	public void setUser_favoriteLanguage(Integer user_favoriteLanguage) {
		this.user_favoriteLanguage = user_favoriteLanguage;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_addr() {
		return user_addr;
	}
	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}
	public void setUser_gender(Integer user_gender) {
		this.user_gender = user_gender;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_dob() {
		return user_dob;
	}
	public void setUser_dob(String user_dob) {
		this.user_dob = user_dob;
	}
	public Integer getUser_level() {
		return user_level;
	}
	public void setUser_level(Integer user_level) {
		this.user_level = user_level;
	}
	public String getUser_conutry() {
		return user_conutry;
	}
	public void setUser_conutry(String user_conutry) {
		this.user_conutry = user_conutry;
	}
	public Integer getLean_language() {
		return lean_language;
	}
	public void setLean_language(Integer lean_language) {
		this.lean_language = lean_language;
	}
	
}
