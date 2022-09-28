package com.kofu.infra.modules.aircodegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kofu.infra.modules.codegroup.CodeGroup;
import com.kofu.infra.modules.codegroup.CodeGroupVo;





@Repository
public class AirCodeGroupDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kofu.infra.modules.aircodegroup.AirCodeGroupMapper";
	
	public List<AirCodeGroup> selectList(AirCodeGroupVo vo){
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public CodeGroup selectOne(AirCodeGroupVo vo){
		CodeGroup result = sqlSession.selectOne(namespace + ".selectOne",vo);
		System.out.println("dao result :"+ result);
		return result;
	}
	}
	
	
	
	
