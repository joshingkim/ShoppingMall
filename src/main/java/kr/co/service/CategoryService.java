package kr.co.service;

import kr.co.domain.CategoryVO;
import kr.co.domain.PageTO;

public interface CategoryService {

	void insert(CategoryVO vo);

	PageTO<CategoryVO> list(PageTO<CategoryVO> pt);

}
