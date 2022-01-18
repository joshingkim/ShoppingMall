package kr.co.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.PageTO;
import kr.co.domain.ReviewVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {

	@Inject
	private SqlSession sqlSession;

	private final String NS = "kr.co.review";

	@Override
	public void insert(Map<String, Object> map) {
		sqlSession.insert(NS + ".insert", map);

	}

	@Override
	public int getAmountReplyByBno(int board_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS + ".getAmountReplyByBno", board_no);
	}

	@Override
	public List<ReviewVO> getRepliesPage(PageTO<ReviewVO> pt, int board_no) {
		RowBounds rbs = new RowBounds(pt.getStartNum() - 1, pt.getPerPage());

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pt", pt);
		map.put("board_no", board_no);

		return sqlSession.selectList(NS + ".getRepliesPage", map, rbs);
	}

	@Override
	public List<ReviewVO> getAllReplies(int board_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS + ".getAllReplies", board_no);
	}

	@Override
	public void updateReview(ReviewVO rvo) {
		sqlSession.update(NS + ".updateReview", rvo);

	}

	@Override
	public void deleteReview(int review_no) {
		sqlSession.delete(NS + ".deleteReview", review_no);
	}

}
