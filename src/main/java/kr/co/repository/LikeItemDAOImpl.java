package kr.co.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.LikeItemVO;

@Repository
public class LikeItemDAOImpl implements LikeItemDAO {
	
	private SqlSession sqlSession;
	private final String NS = "kr.co.likeitem";
	
	
	@Override
	public int insert(LikeItemVO vo) {
		return sqlSession.insert(NS+".insert", vo);
	}

}
