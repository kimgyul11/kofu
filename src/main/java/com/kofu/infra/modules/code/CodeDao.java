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
	
	
	//아래 리스트에서 
	// 패배원인 : 코드그룹DTO를 가져올려고 했다.
	// 그러면 안되고, 코드DTO를 가져온다.
	public List<Code> selectList(CodeVo vo)
	{ return sqlSession.selectList(namespace + ".selectList", vo); }
}
