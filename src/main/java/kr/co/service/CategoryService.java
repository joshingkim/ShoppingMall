package kr.co.service;

import java.util.List;
import java.util.Map;

import kr.co.domain.CategoryVO;
import kr.co.domain.PageTO;

public interface CategoryService {

	void insert(CategoryVO vo);

	PageTO<CategoryVO> list(PageTO<CategoryVO> pt);

	CategoryVO updateUI(String item_name);

	void update(CategoryVO vo);

	void delete(String item_name);
	
	List<CategoryVO> categorylist();

	List<CategoryVO> item_name_list(String item_category);

}
