package kr.co.service;

import java.util.List;

import kr.co.domain.QnaVO;

public interface QnaService {

	void insert(QnaVO qvo);

	List<QnaVO> list();

	void answer(QnaVO vo);

}
