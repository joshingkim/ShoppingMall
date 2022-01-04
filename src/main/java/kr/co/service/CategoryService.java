package kr.co.service;

import kr.co.domain.CategoryVO;
import kr.co.domain.PageTO;

public interface CategoryService {

	void insert(CategoryVO vo);

	PageTO<CategoryVO> list(PageTO<CategoryVO> pt);

	CategoryVO updateUI(String item_name);

	void update(CategoryVO vo);

}
