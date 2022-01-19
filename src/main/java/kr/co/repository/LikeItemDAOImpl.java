package kr.co.repository;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.LikeItemVO;

@Repository
public class LikeItemDAOImpl implements LikeItemDAO {
	@Inject
	private SqlSession sqlSession;
	private final String NS = "kr.co.likeitem";
	
	@Override
	public int insert(LikeItemVO vo) {
		return sqlSession.insert(NS+".insert", vo);
	}

	@Override
	public int count(LikeItemVO vo) {
		return sqlSession.selectOne(NS+".count", vo);
	}

	@Override
	public int delete(LikeItemVO vo) {
		return sqlSession.delete(NS+".delete", vo);
	}

}
