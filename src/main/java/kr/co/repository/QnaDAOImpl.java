package kr.co.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.domain.PageTO;
import kr.co.domain.QnaVO;

@Repository
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	private SqlSession sqlSession;
	private String NS = "kr.co.qna";

	@Override
	public void insert(QnaVO qvo) {
		sqlSession.insert(NS + ".insert", qvo);

	}

	@Override
	public List<QnaVO> list(Map<String, Object> map) {
		PageTO<QnaVO> qpt = (PageTO<QnaVO>) map.get("qpt");
		RowBounds rbs = new RowBounds(qpt.getStartNum()-1, qpt.getPerPage());
				
		return sqlSession.selectList(NS + ".list", map , rbs);
	}

	@Override
	public void answer(QnaVO vo) {
		sqlSession.update(NS + ".answer", vo);

	}

	@Override
	public int getAmount(int board_no) {
		return sqlSession.selectOne(NS + ".getAmount", board_no);
	}

}
