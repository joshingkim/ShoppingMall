package kr.co.service;

import kr.co.domain.ItemVO;

public interface ItemService {

	void insert(ItemVO vo);

	ItemVO read(String item_no);

	ItemVO updateUI(String item_no);

	void update(ItemVO vo);

}
