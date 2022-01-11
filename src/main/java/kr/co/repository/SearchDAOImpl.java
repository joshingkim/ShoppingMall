package kr.co.repository;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class SearchDAOImpl implements SearchDAO{

	@Autowired
	private SqlSession sqlSession;
	private String NS = "kr.co.search";
	
	@Override
	public void search(Map<String, Object> map) {
		sqlSession.insert(NS +".search", map);
	}

//	@Override
//	public SearchVO list(SearchVO svo) {
//		return sqlSession.selectOne(NS + ".list", svo);
//		
//	}

		
	
}
