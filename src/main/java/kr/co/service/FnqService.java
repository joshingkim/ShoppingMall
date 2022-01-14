package kr.co.service;

import kr.co.domain.FnqVO;
import kr.co.domain.PageTO;

public interface FnqService {

	void insert(FnqVO vo);

	FnqVO read(int fnq_no);

	FnqVO updateUI(int fnq_no);

	void update(FnqVO vo);

	void delete(int fnq_no);

	PageTO<FnqVO> list(PageTO<FnqVO> pt);

}
