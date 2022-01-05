package kr.co.repository;

import kr.co.domain.BoardVO;

public interface BoardDAO {

	void insert(BoardVO vo);

	void increaseViewcnt(int board_no);

	BoardVO read(int board_no);

}
