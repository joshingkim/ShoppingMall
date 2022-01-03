package kr.co.repository;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.CategoryVO;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	@Inject
	private SqlSession sqlSession;
	
	private final String NS = "kr.co.category";

	@Override
	public void insert(CategoryVO vo) {
		sqlSession.insert(NS+".insert", vo);
	}
	
}
