package kr.co.repository;

import java.util.List;

import kr.co.domain.FnqVO;
import kr.co.domain.PageTO;

public interface FnqDAO {

	void insert(FnqVO vo);

	FnqVO read(int fnq_no);

	FnqVO updateUI(int fnq_no);

	void update(FnqVO vo);

	void delete(int fnq_no);



	int getAmount();

	List<FnqVO> list(PageTO<FnqVO> pt);

	void increaseViewcnt(int fnq_no);

}
