package com.kofu.infra.modules.home;

public class Home {
	
	// 질문 리스트
	private String content;
	private String user_id;
	private String cc_name;
	private Integer user_level;
	
	// 질문 작성
	private String ansSeq;
	private String questionSeq;
	private String userID;
	private String language_select;
	private String writetime;
	private String lastModTime;
	private Integer questionDelNy;
	private String bookmarkSeq;
	private String likeSeq;
	private String likeUserId;
	private String likeTime;
	private Integer likeAnswerSeq;
	private String likeUseNy;
	
	
	
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
	public String getBookmarkSeq() {
		return bookmarkSeq;
	}
	public void setBookmarkSeq(String bookmarkSeq) {
		this.bookmarkSeq = bookmarkSeq;
	}
	//질문 답변

	private String ansWriteTime;
	private String ansUserId;
	private String ansContent;
	private String ansQuestionSeq;
	private Integer question_questionSeq;
	private Integer bookmark_useNy;
	public Integer getQuestion_questionSeq() {
		return question_questionSeq;
	}
	public void setQuestion_questionSeq(Integer question_questionSeq) {
		this.question_questionSeq = question_questionSeq;
	}
	public Integer getBookmark_useNy() {
		return bookmark_useNy;
	}
	public void setBookmark_useNy(Integer bookmark_useNy) {
		this.bookmark_useNy = bookmark_useNy;
	}
	public String getBookmark_UserId() {
		return bookmark_UserId;
	}
	public void setBookmark_UserId(String bookmark_UserId) {
		this.bookmark_UserId = bookmark_UserId;
	}
	private String bookmark_UserId;
	
	
	// -------------------------------------
	
	
	
	public String getContent() {
		return content;
	}
	public Integer getUser_level() {
		return user_level;
	}
	public void setUser_level(Integer user_level) {
		this.user_level = user_level;
	}
	public String getAnsQuestionSeq() {
		return ansQuestionSeq;
	}
	public void setAnsQuestionSeq(String ansQuestionSeq) {
		this.ansQuestionSeq = ansQuestionSeq;
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
