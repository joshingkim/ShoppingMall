package kr.co.service;

import kr.co.domain.BoardVO;

public interface BoardService {

	void insert(BoardVO vo);

	BoardVO read(int board_no);

	BoardVO updateUI(int board_no);

	
}
