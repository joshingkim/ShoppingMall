package kr.co.repository;

import java.util.List;

import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;

public interface ItemDAO {

	void insert(ItemVO vo);

	ItemVO read(int item_no);

	ItemVO updateUI(int item_no);

	void update(ItemVO vo);

	int getAmount();

	List<ItemVO> list(PageTO<ItemVO> pt);

	void delete(int item_no);

//	List<ItemVO> searchitem(Map<String, Object> map);

}
