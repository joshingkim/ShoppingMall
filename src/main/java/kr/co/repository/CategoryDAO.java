package kr.co.repository;

import java.util.List;

import kr.co.domain.CategoryVO;
import kr.co.domain.PageTO;

public interface CategoryDAO {

	void insert(CategoryVO vo);

	int getAmount();

	List<CategoryVO> list(PageTO<CategoryVO> pt);

}
