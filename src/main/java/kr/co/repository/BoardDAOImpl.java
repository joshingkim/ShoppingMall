package kr.co.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.BoardVO;
import kr.co.domain.QnaVO;

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

	@Override
	public void update(BoardVO vo) {
		sqlSession.update(NS+".update",vo);
		
	}

	@Override
	public List<QnaVO> Qnalist(int board_no) {
	
		return sqlSession.selectList(NS+".Qnalist",board_no);
	}
	
	@Override
	public int selectBoard_no(int item_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS+".selectBoard_no", item_no);
	}

	@Override
	public int selectItem_no(int board_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS+".selectItem_no", board_no);
	}

	@Override
	public BoardVO readbyItme_no(int item_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS+".readbyItme_no", item_no);
	}

}
