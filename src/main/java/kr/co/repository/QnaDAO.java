package kr.co.repository;

import java.util.List;

import kr.co.domain.QnaVO;

public interface QnaDAO {

	void insert(QnaVO qvo);

	List<QnaVO> list();

	void answer(QnaVO vo);

}
