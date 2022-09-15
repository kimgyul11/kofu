package com.kofu.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeServiceImpl implements CodeService{
	
	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Code dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: "+ result);
		return result;
	}
	
	@Override
	public List<Code> ccgselectList() throws Exception {
		return dao.ccgselectList();
	}
	
	@Override
	public Code selectOne(CodeVo vo) throws Exception{
		Code result = dao.selectOne(vo);
		System.out.println("service result :"+result);
		return result;
	}
	
	@Override
	public int update(Code dto)throws Exception{
		return dao.update(dto);
	}
	@Override
	public int delete(CodeVo vo)throws Exception{
		return dao.delete(vo);
	}
	@Override
	public int uelete(Code dto)throws Exception{
		return dao.uelete(dto);
	}
}
