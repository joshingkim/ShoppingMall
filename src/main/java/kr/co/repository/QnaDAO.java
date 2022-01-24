package kr.co.repository;

import java.util.List;
import java.util.Map;

import kr.co.domain.PageTO;
import kr.co.domain.QnaVO;

public interface QnaDAO {

	void insert(QnaVO qvo);

	List<QnaVO> list(Map<String, Object> map);

	void answer(QnaVO vo);

	int getAmount(int board_no);

	int getAmount();

	List<QnaVO> listOfAll(PageTO<QnaVO> pt);

	int getAmountForMember(String member_id);

	List<QnaVO> listForMember(PageTO<QnaVO> pt, String member_id);

	QnaVO updateUI(int qna_no);

	void update(QnaVO vo);

	void delete(int qna_no);


}
