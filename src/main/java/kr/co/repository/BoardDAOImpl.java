package kr.co.repository;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private final String NS = "kr.co.board";

	@Override
	public void insert(BoardVO vo) {
		sqlSession.insert(NS+".insert",vo);

	}

	@Override
	public void increaseViewcnt(int board_no) {
		sqlSession.update(NS+".increaseViewcnt", board_no);
		
	}

	@Override
	public BoardVO read(int board_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS+".read",board_no);
	}

	@Override
	public BoardVO updateUI(int board_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS+".updateUI",board_no);
	}

}
