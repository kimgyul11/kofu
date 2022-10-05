package com.kofu.infra.modules.airmembers;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class AirMembersDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kofu.infra.modules.airmembers.AirMembersMapper";

	public List<AirMembers> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
}
