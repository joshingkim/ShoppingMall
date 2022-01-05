package kr.co.repository;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.ManagerVO;

@Repository
public class ManagerDAOImpl implements ManagerDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private String NS = "kr.co.manager";

	@Override
	public void insert(ManagerVO vo) {
		sqlSession.insert(NS+".insert", vo);
	}

	
	

}
