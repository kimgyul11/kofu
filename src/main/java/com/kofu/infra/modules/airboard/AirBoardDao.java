package com.kofu.infra.modules.airboard;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class AirBoardDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kofu.infra.modules.airboard.AirBoardMapper";
	
//	리스트화면
	public List<AirBoard> selectList(AirBoardVo vo){
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	
}
