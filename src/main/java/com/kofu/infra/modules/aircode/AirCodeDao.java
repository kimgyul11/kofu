package com.kofu.infra.modules.aircode;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AirCodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kofu.infra.modules.aircode.AirCodeMapper";
	
	
	
	public List<AirCode>selectList(AirCodeVo vo)
	{return sqlSession.selectList(namespace + ".selectList",vo);}
	
	
}
