package kr.co.repository;

import java.util.List;
import java.util.Map;

import kr.co.domain.QnaVO;

public interface QnaDAO {

	void insert(QnaVO qvo);

	List<QnaVO> list(Map<String, Object> map);

	void answer(QnaVO vo);

	int getAmount(int board_no);

}
