package com.kofu.infra.modules.home;

public class Home {
	
	//공통코드
	private String cc_name;
	
	//qeustion 테이블
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
	
	//멤버테이블
	private String user_id;
	private Integer user_level;
	private String memberSeq;
	private String user_pw;
	private String user_name;
	private String user_dob;
	private String user_conutry;
	private Integer lean_language;
	private Integer user_gender;
	private String user_addr;
	private String user_email;
	private Integer user_favoriteLanguage;
	
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
	
//----------------------------------------------api테스트영역 시작-----------
	public Object header;
	public String resultCode;
	public String resultMsg;

	public Object body;
	public int pageNo;
	public int totalCount;
	public int numOfRows;

	public Object[] items;
	public String YYYY;
	public String MM;
	public String KIT_PROD_QTY;
	public String KIT_EXPRT_QTY;
	public String KIT_STOCK_QTY;
	public String airline;
	
public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	//	----------
	public Object getHeader() {
		return header;
	}
	public void setHeader(Object header) {
		this.header = header;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultMsg() {
		return resultMsg;
	}
	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}
	public Object getBody() {
		return body;
	}
	public void setBody(Object body) {
		this.body = body;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getNumOfRows() {
		return numOfRows;
	}
	public void setNumOfRows(int numOfRows) {
		this.numOfRows = numOfRows;
	}
	public Object[] getItems() {
		return items;
	}
	public void setItems(Object[] items) {
		this.items = items;
	}
	public String getYYYY() {
		return YYYY;
	}
	public void setYYYY(String yYYY) {
		YYYY = yYYY;
	}
	public String getMM() {
		return MM;
	}
	public void setMM(String mM) {
		MM = mM;
	}
	public String getKIT_PROD_QTY() {
		return KIT_PROD_QTY;
	}
	public void setKIT_PROD_QTY(String kIT_PROD_QTY) {
		KIT_PROD_QTY = kIT_PROD_QTY;
	}
	public String getKIT_EXPRT_QTY() {
		return KIT_EXPRT_QTY;
	}
	public void setKIT_EXPRT_QTY(String kIT_EXPRT_QTY) {
		KIT_EXPRT_QTY = kIT_EXPRT_QTY;
	}
	public String getKIT_STOCK_QTY() {
		return KIT_STOCK_QTY;
	}
	public void setKIT_STOCK_QTY(String kIT_STOCK_QTY) {
		KIT_STOCK_QTY = kIT_STOCK_QTY;
	}
//-------------------------------테스트영역 끝-------------------------	

//--------------------------------------------------------------------get,set------------------------------------------------------------
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
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
	public Integer getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(Integer user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_addr() {
		return user_addr;
	}
	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public Integer getUser_favoriteLanguage() {
		return user_favoriteLanguage;
	}
	public void setUser_favoriteLanguage(Integer user_favoriteLanguage) {
		this.user_favoriteLanguage = user_favoriteLanguage;
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
