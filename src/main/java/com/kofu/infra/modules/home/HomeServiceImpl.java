package com.kofu.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kofu.infra.common.util.UtilUpload;



@Service
public class HomeServiceImpl implements HomeService{

	@Autowired
	HomeDao dao;
	
	@Override
	public List<Home>selectList(HomeVo vo) throws Exception{
		return dao.selectList(vo);
	}
	
//	질문작성 영역s
	  @Override
	  public int insert(Home dto) throws Exception{ 
	  try {
  	  dao.insert(dto);
  	  
  	 int j = 0; 
	  System.out.println(dto.getUploadedImage()); 
	  for(MultipartFile multipartFile : dto.getUploadedImage()) { 
		  if(!multipartFile.isEmpty()) {
	  String pathModule =this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
	  UtilUpload.upload(multipartFile, pathModule, dto);
	  
	  dto.setTableName("questionImgUploaded");
	  dto.setType(1);
	  dto.setDefaultNy(j == 0 ? 1 : 0); dto.setSort(j + 1);
	  dto.setPseq(dto.getQuestionSeq());
	  
	  dao.insertImgUploaded(dto); 
	  j++; } }
  	  
	  return 1;
	  }catch (Exception e) {
			throw new Exception();
		}
	  }
//	질문작성 영역e	 
	


	@Override
	public List<Home> homeSearch(HomeVo vo) throws Exception{
		return dao.selectList(vo);
	}
	
	@Override
	public Home selectOne(HomeVo vo) throws Exception{
		return dao.selectOne(vo);
	}
	
	@Override
	public int selectOenCount(HomeVo vo) throws Exception{
		return dao.selectOenCount(vo);
	}
	
	@Override
	public int ansInsert(Home dto) throws Exception{
		return dao.ansInsert(dto);
	}
	
	@Override
	public List<Home>selectAns(HomeVo vo) throws Exception{
		return dao.selectAns(vo);
	}
	
	
	//-------bookmark S-------------
	
	@Override
	public int bookmarkInst(Home dto) throws Exception {
		return dao.bookmarkInst(dto);
	}
	
	@Override
	public int bookmarkcheck(Home dto) throws Exception {
		return dao.bookmarkcheck(dto);
	}
	
	@Override
	public int bookmarkDel(Home dto) throws Exception {
		return dao.bookmarkDel(dto);
	}


	@Override
	public Home bookmarklist(Home dto) throws Exception {
		return dao.bookmarklist(dto);
	}//------------------- bookmark E----------------


	
	
	@Override
	public int likeInsert(Home dto) throws Exception {
		return dao.likeInsert(dto);
	}

	@Override
	public int likedelete(Home dto) throws Exception {
		return dao.likedelete(dto);
	}
	
	
	
	
	@Override
	public List<Home> likeListCnt(Home dto) throws Exception {
		return dao.likeListCnt(dto);
	}


	@Override
	public int questionDelete(Home dto) throws Exception {
		return dao.questionDelete(dto);
	}
	@Override
	public int answerDelete(Home dto) throws Exception {
		return dao.answerDelete(dto);
	}


	@Override
	public int likeCheck(Home dto) throws Exception {
		return dao.likeCheck(dto);
	}

	//답변 채택하기
	@Override
	public int answerSelect(Home dto) throws Exception {
		return dao.answerSelect(dto);
	}


}
