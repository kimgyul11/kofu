package com.kofu.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kofu.infra.common.util.UtilSecurity;
import com.kofu.infra.common.util.UtilUpload;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList() throws Exception {
		return dao.selectList();
	}
	@Override
	public Member selectOne(MemberVo vo)throws Exception{
		Member result = dao.selectOne(vo);
		System.out.println("service result :"+result);
		return result;
	}
	@Override
	public int insert(Member dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: "+ result);
		return result;
	}
	
	@Override
	public int signup(Member dto) throws Exception{
		try {
			System.out.println(dto.getUploadedImage());
			dto.setUser_pw(UtilSecurity.encryptSha256(dto.getUser_pw()));
			dao.signup(dto);
			
			

			
			  int j = 0; System.out.println(dto.getUploadedImage()); for(MultipartFile
			  multipartFile : dto.getUploadedImage()) { if(!multipartFile.isEmpty()) {
			  String pathModule =
			  this.getClass().getSimpleName().toString().toLowerCase().replace(
			  "serviceimpl", ""); UtilUpload.upload(multipartFile, pathModule, dto);
			  
			  dto.setTableName("airLanguage_memberUploaded"); dto.setType(2);
			  dto.setDefaultNy(j == 0 ? 1 : 0); dto.setSort(j + 1);
			  dto.setPseq(dto.getMemberSeq());
			  
			  dao.insertUploaded(dto); j++; } }
			  
			 
				return 1;
		}catch (Exception e) {
			throw new Exception();
		}
	}	


	@Override
	public int selectOneIdCheck(Member dto) throws Exception{
		int result = dao.selectOneIdCheck(dto);
		return result;
	}

	
	// 9월 27일 
	@Override
	public  Member selectOneId(Member dto) throws Exception{
		Member result = dao.selectOneId(dto);
		return result;
	}
	@Override
	public  Member selectOneLogin(Member dto) throws Exception{
		Member result = dao.selectOneLogin(dto);
		return result;
	}
}
