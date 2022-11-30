package com.kofu.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	@Inject
	@Resource(name = "sqlSessionOracle")
	private SqlSession sqlSessionOracle;
	
	private static String namespace = "com.kofu.infra.modules.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo)
	{return sqlSession.selectList(namespace + ".selectList", vo); }
	//아래와같은 의미다..
//	List<CodeGroup>list = sqlSession.selectList("com.kofu.infra.modules.codegroup.CodeGroupMapper.selectList",vo);
//	return list;
	public int insert(CodeGroup dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result : "+result);
		return result;
	}
	public CodeGroup selectOne(CodeGroupVo vo){
		CodeGroup result = sqlSession.selectOne(namespace + ".selectOne",vo);
		System.out.println("dao result :"+ result);
		return result;
	}
	public int update(CodeGroup dto) {return sqlSession.update(namespace + ".update",dto);}
	public int uelete(CodeGroup dto) {return sqlSession.update(namespace + ".uelete", dto);}
	public int delete(CodeGroupVo vo) {return sqlSession.delete(namespace + ".delete",vo);}
	
	public int selectOneCount(CodeGroupVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
	public List<CodeGroup> oracleSelect(){
		return sqlSessionOracle.selectList(namespace + ".oracleSelect");
	}
	
	
}