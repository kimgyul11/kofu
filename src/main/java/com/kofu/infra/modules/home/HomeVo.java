package com.kofu.infra.modules.home;

import com.kofu.infra.common.constants.Constants;

public class HomeVo {


	private Integer shOption;
	private String shValue;
	private Integer navShOption;
	private String navShValue;
	private String questionSeq;
	private String ansSeq;
	private Integer languageOption;
	private String ansQuestionSeq;
	private String bookmarkSeq;
	private String likeSeq;
	private String likeAnswerSeq;
	private String bookmark_UserId;
	private String userID;
	private String memberSeq;
	
	
	
	
	
	


	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getBookmark_UserId() {
		return bookmark_UserId;
	}
	public void setBookmark_UserId(String bookmark_UserId) {
		this.bookmark_UserId = bookmark_UserId;
	}
	public Integer getNavShOption() {
		return navShOption;
	}
	public void setNavShOption(Integer navShOption) {
		this.navShOption = navShOption;
	}
	public String getNavShValue() {
		return navShValue;
	}
	public void setNavShValue(String navShValue) {
		this.navShValue = navShValue;
	}
	public String getLikeAnswerSeq() {
		return likeAnswerSeq;
	}
	public void setLikeAnswerSeq(String likeAnswerSeq) {
		this.likeAnswerSeq = likeAnswerSeq;
	}
	public String getLikeSeq() {
		return likeSeq;
	}
	public void setLikeSeq(String likeSeq) {
		this.likeSeq = likeSeq;
	}
	public String getBookmarkSeq() {
		return bookmarkSeq;
	}
	public void setBookmarkSeq(String bookmarkSeq) {
		this.bookmarkSeq = bookmarkSeq;
	}
	public String getAnsQuestionSeq() {
		return ansQuestionSeq;
	}
	public void setAnsQuestionSeq(String ansQuestionSeq) {
		this.ansQuestionSeq = ansQuestionSeq;
	}
	public Integer getLanguageOption() {
		return languageOption;
	}
	public void setLanguageOption(Integer languageOption) {
		this.languageOption = languageOption;
	}
	//-------------------------------------------------------------------------------
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	
//	---------------------- ????????? -------------------------------------
	
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

	private int thisPage = 1;									// ?????? ?????????
	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// ????????? ????????? ????????? ??? ??????
	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// ????????? ????????? ????????? ?????? ??????

	private int totalRows;										// ?????? ????????? ??????
	private int totalPages;										// ?????? ????????? ??????
	private int startPage;										// ?????? ????????? ??????
	private int endPage;										// ????????? ????????? ??????
	
	private int startRnumForOracle = 1;							// ?????? ?????? row
	private int endRnumForOracle;								// ?????? ??? row
	private Integer RNUM;

	private int startRnumForMysql = 0;							// ?????? ?????? row

public void setParamsPaging(int totalRows) {
		
//		setThisPage(3);

		setTotalRows(totalRows);

		if (getTotalRows() == 0) {
			setTotalPages(1);
		} else {
			setTotalPages(getTotalRows() / getRowNumToShow());
		}

		if (getTotalRows() % getRowNumToShow() > 0) {
			setTotalPages(getTotalPages() + 1);
		}

		if (getTotalPages() < getThisPage()) {
			setThisPage(getTotalPages());
		}
		
		setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);

		setEndPage(getStartPage() + getPageNumToShow() - 1);

		if (getEndPage() > getTotalPages()) {
			setEndPage(getTotalPages());
		}
		
		setEndRnumForOracle((getRowNumToShow() * getThisPage()));
		setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
		if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
		
		if (thisPage == 1) {
			setStartRnumForMysql(0);
		} else {
			setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
		}
		
		System.out.println("getThisPage():" + getThisPage());
		System.out.println("getTotalRows():" + getTotalRows());
		System.out.println("getRowNumToShow():" + getRowNumToShow());
		System.out.println("getTotalPages():" + getTotalPages());
		System.out.println("getStartPage():" + getStartPage());
		System.out.println("getEndPage():" + getEndPage());		
		System.out.println("getStartRnumForOracle():" + getStartRnumForOracle());
		System.out.println("getEndRnumForOracle():" + getEndRnumForOracle());
		System.out.println("getStartRnumForMysql(): " + getStartRnumForMysql());
		
	}
public int getThisPage() {
	return thisPage;
}
public void setThisPage(int thisPage) {
	this.thisPage = thisPage;
}
public int getRowNumToShow() {
	return rowNumToShow;
}
public void setRowNumToShow(int rowNumToShow) {
	this.rowNumToShow = rowNumToShow;
}
public int getPageNumToShow() {
	return pageNumToShow;
}
public void setPageNumToShow(int pageNumToShow) {
	this.pageNumToShow = pageNumToShow;
}
public int getTotalRows() {
	return totalRows;
}
public void setTotalRows(int totalRows) {
	this.totalRows = totalRows;
}
public int getTotalPages() {
	return totalPages;
}
public void setTotalPages(int totalPages) {
	this.totalPages = totalPages;
}
public int getStartPage() {
	return startPage;
}
public void setStartPage(int startPage) {
	this.startPage = startPage;
}
public int getEndPage() {
	return endPage;
}
public void setEndPage(int endPage) {
	this.endPage = endPage;
}
public int getStartRnumForOracle() {
	return startRnumForOracle;
}
public void setStartRnumForOracle(int startRnumForOracle) {
	this.startRnumForOracle = startRnumForOracle;
}
public int getEndRnumForOracle() {
	return endRnumForOracle;
}
public void setEndRnumForOracle(int endRnumForOracle) {
	this.endRnumForOracle = endRnumForOracle;
}
public Integer getRNUM() {
	return RNUM;
}
public void setRNUM(Integer rNUM) {
	RNUM = rNUM;
}
public int getStartRnumForMysql() {
	return startRnumForMysql;
}
public void setStartRnumForMysql(int startRnumForMysql) {
	this.startRnumForMysql = startRnumForMysql;
}
	
}
