package kr.co.service;

import java.util.List;

import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;

public interface ItemService {

	void insert(ItemVO vo);

	ItemVO read(String item_no);

	ItemVO updateUI(String item_no);

	void update(ItemVO vo);

	PageTO<ItemVO> list(PageTO<ItemVO> pt);

	void delete(String item_no);

}
