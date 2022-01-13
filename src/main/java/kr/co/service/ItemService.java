package kr.co.service;

import java.util.List;

import kr.co.domain.BoardVO;
import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;

public interface ItemService {

	void insert(ItemVO ivo, BoardVO bvo);

	ItemVO read(int item_no);

	ItemVO updateUI(int item_no);

	void update(ItemVO vo);

	PageTO<ItemVO> list(PageTO<ItemVO> pt);

	void delete(int item_no);

}
