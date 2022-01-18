package kr.co.service;

import java.util.List;

import kr.co.domain.BoardVO;
import kr.co.domain.QnaVO;

public interface BoardService {

	void insert(BoardVO vo);

	BoardVO read(int board_no);

	BoardVO updateUI(int board_no);

	void update(BoardVO vo);

	void increaseViewcnt(int board_no);

	List<QnaVO> Qnalist(int board_no);

	int selectBoard_no(int item_no);

	int selectItem_no(int board_no);
}
