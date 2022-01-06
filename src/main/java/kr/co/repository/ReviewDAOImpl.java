package kr.co.repository;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class ReviewDAOImpl implements ReviewDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private final String NS = "kr.co.review";
	

	@Override
	public void insert(Map<String, Object> map) {
		sqlSession.insert(NS+".insert",map);

	}

}
