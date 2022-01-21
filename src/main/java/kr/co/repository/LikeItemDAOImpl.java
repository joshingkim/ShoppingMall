package kr.co.repository;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.LikeItemVO;
import kr.co.domain.PageTO;

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

	@Override
	public List<LikeItemVO> list(PageTO<LikeItemVO> pt, String member_id) {
		RowBounds rbs = new RowBounds(pt.getStartNum()-1, pt.getPerPage());
		return sqlSession.selectList(NS+".list", member_id, rbs);
	}

	@Override
	public int getAmount() {
		return sqlSession.selectOne(NS+".getAmount");
	}

}
