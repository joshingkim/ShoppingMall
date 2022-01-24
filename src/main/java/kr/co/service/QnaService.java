package kr.co.service;

import java.util.List;
import java.util.Map;

import kr.co.domain.PageTO;
import kr.co.domain.QnaVO;

public interface QnaService {

	void insert(QnaVO qvo);

	void answer(QnaVO vo);

	List<QnaVO> list(PageTO<QnaVO> qpt, int board_no);

	PageTO<QnaVO> listOfAll(PageTO<QnaVO> pt);

	PageTO<QnaVO> listForMember(PageTO<QnaVO> pt, String member_id);

	QnaVO updateUI(int qna_no);

	void update(QnaVO vo);

	void delete(int qna_no);
}
