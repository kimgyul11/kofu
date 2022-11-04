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

	
	//-----------------------------------------------------------------------------
	
	
	
	
	public String getSnsId() {
		return snsId;
	}
	public void setSnsId(String snsId) {
		this.snsId = snsId;
	}
	private MultipartFile[] uploadedImage;
	
	



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
