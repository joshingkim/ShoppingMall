package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.BoardVO;
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
		
		bDao.increaseViewcnt(board_no);
		
		return bDao.read(board_no);
	}

	@Override
	public BoardVO updateUI(int board_no) {
		// TODO Auto-generated method stub
		return bDao.updateUI(board_no);
	}
	
	
	
}
