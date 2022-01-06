package kr.co.repository;

import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;

public interface ItemDAO {

	void insert(ItemVO vo);

	ItemVO read(String item_no);

	ItemVO updateUI(String item_no);

	void update(ItemVO vo);

}
