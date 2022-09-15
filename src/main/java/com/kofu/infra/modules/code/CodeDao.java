package com.kofu.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class CodeDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kofu.infra.modules.code.CodeMapper";
	
	

	public List<Code> selectList(CodeVo vo)
	{ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public List<Code> ccgselectList()
	{return sqlSession.selectList(namespace + ".ccgselectList", "");}
	//sqlSession.selectList는 함수다.
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result :"+result);
		return result;
	}
	
//	셀렉트 하나만 뽑기
	public Code selectOne(CodeVo vo) {
		Code result = sqlSession.selectOne(namespace + ".selectOne",vo);
		System.out.println("dao result : "+result);
		return result;
	}
	
//	업데이트,율리트,딜리트 
	public int update(Code dto) {return sqlSession.update(namespace + ".update",dto);}
	public int delete(CodeVo vo){return sqlSession.delete(namespace + ".delete",vo);}
	public int uelete(Code dto) {return sqlSession.update(namespace + ".uelete", dto);}
}
