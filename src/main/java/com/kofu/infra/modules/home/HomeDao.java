package com.kofu.infra.modules.home;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kofu.infra.modules.home.HomeMapper";
	
	public List<Home> selectList(HomeVo vo){return sqlSession.selectList(namespace + ".selectList",vo);}
	
	public int insert(Home dto) {
		int result = sqlSession.insert(namespace + ".insert" ,dto);
		System.out.println("dao result :"+result);
		return result;
	}
	
}
