package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.BoardVO;
import kr.co.domain.QnaVO;
import kr.co.repository.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO bDao;

	@Override
	public void insert(BoardVO vo) {
		bDao.insert(vo);
	}

	@Transactional
	@Override
	public BoardVO read(int board_no) {
		
		return bDao.read(board_no);
	}

	@Override
	public BoardVO updateUI(int board_no) {
		// TODO Auto-generated method stub
		return bDao.updateUI(board_no);
	}

	@Override
	public void update(BoardVO vo) {
		bDao.update(vo);
		
	}

	@Override
	public void increaseViewcnt(int board_no) {
		
		bDao.increaseViewcnt(board_no);
	}

	@Override
	public List<QnaVO> Qnalist(int board_no) {
		// TODO Auto-generated method stub
		return bDao.Qnalist(board_no);
	}
	
	@Override
	public int selectBoard_no(int item_no) {
		// TODO Auto-generated method stub
		return bDao.selectBoard_no(item_no);
	}

	@Override
	public int selectItem_no(int board_no) {
		// TODO Auto-generated method stub
		return bDao.selectItem_no(board_no);
	}
	
	
}
