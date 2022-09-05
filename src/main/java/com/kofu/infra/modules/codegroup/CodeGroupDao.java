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
	
	private static String namespace = "com.kofu.infra.modules.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo)
	{return sqlSession.selectList(namespace + ".selectList", vo); }
	//아래와같은 의미다..
//	List<CodeGroup>list = sqlSession.selectList("com.kofu.infra.modules.codegroup.CodeGroupMapper.selectList",vo);
//	return list;
}