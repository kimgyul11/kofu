package com.kofu.infra.modules.aircode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




@Service
public class AirCodeServiceImpl implements AirCodeService {

	@Autowired
	AirCodeDao dao;
	
	@Override
	public List<AirCode> selectList(AirCodeVo vo) throws Exception {
		return dao.selectList(vo);
	}
	@Override
	public AirCode selectOne(AirCodeVo vo)throws Exception{
		return dao.selectOne(vo);
	}
	@Override
	public int selectOneCounting(AirCodeVo vo) throws Exception{
		return dao.selectOneCounting(vo);
	}
// 코드그룹 작성	
	@Override
	public int insert(AirCode dto) throws Exception{
		return dao.insert(dto);
	}
		
//		수정,삭제,가짜삭제
	@Override
	public int update(AirCode dto) throws Exception{
		return dao.update(dto);
	}
	@Override
	public int uelete(AirCode dto) throws Exception{
		return dao.uelete(dto);
	}
	@Override
	public int delete(AirCodeVo vo) throws Exception{
		return dao.delete(vo);
	}
	@Override
	public List<AirCode> ccgSelectView() throws Exception{
		return dao.ccgSelectView();
	}
}
