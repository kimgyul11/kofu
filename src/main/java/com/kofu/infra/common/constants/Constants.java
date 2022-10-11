package com.kofu.infra.common.constants;

public final class Constants {
	
//	for paging
	public static final int ROW_NUM_TO_SHOW = 8;
	public static final int PAGE_NUM_TO_SHOW = 5;
	
	//로그인관련 세션
	public static final int SESSION_MINUTE = 30;
	public static final String URL_LOGINFORM="login";
	
	//파일업로드관련
	public static final int MAX_TOTAL_FILE_NUMBER = 3;
	public static final int MAX_EACH_FILE_SIZE = 10*1024;
	public static final int MAX_TOTAL_FILE_SIZE = 100*1024;
	
	public static final String DATETIME_FORMAT_BASIC = "yyyy-MM-dd HH:mm:ss";

	public static final String TIME_FORMAT_BASIC = "HH:mm:ss";
	
	public static final int DATE_INTERVAL = -7;
	
	public static final long PASSWOPRD_CHANGE_INTERVAL = 90;
	//이미지 업로드
	public static final String UPLOAD_PATH_PREFIX = "D://factory/ws_sts_4151/kofu/src/main/webapp/resources/uploaded";
	public static final String UPLOAD_PATH_PREFIX_FOR_VIEW = "/resources/uploaded";
	
	public static final int COOKIE_MAXAGE = 60 * 60 * 24 * 30;	//초 * 분 * 시간 * 일 : 30day
	public static final String COOKIE_DOMAIN = "";
	public static final String COOKIE_PATH = "/";
	public static final String COOKIE_NAME_SEQ = "cookieSeq";
}
