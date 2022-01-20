package kr.co.repository;

import java.util.List;

import kr.co.domain.BoardVO;
import kr.co.domain.QnaVO;

public interface BoardDAO {

	void insert(BoardVO vo);

	void increaseViewcnt(int board_no);

	BoardVO read(int board_no);

	BoardVO updateUI(int board_no);

	void update(BoardVO vo);

	List<QnaVO> Qnalist(int board_no);
	
	int selectBoard_no(int item_no);

	int selectItem_no(int board_no);

	BoardVO readbyItme_no(int ori_item_no);

}
