package kr.co.repository;

import java.util.List;
import java.util.Map;

import kr.co.domain.ItemVO;
import kr.co.domain.OrdersVO;
import kr.co.domain.PageTO;
import kr.co.domain.SearchPageTO;

public interface ItemDAO {

	void insert(ItemVO vo);

	ItemVO read(int item_no);

	ItemVO updateUI(int item_no);

	void update(ItemVO vo);

	int getAmount();

	List<ItemVO> list(PageTO<ItemVO> pt);

	void delete(int item_no);

	List<ItemVO> getItem_size(String item_name);

	List<ItemVO> getItem_color(String item_name);

	int getAmountbycategory(String item_category);

	List<ItemVO> listbycategory(PageTO<ItemVO> pt, String item_category);

	void updatebycategory(ItemVO ivo);

	int getAmountOfAll();

	List<ItemVO> listofall(PageTO<ItemVO> pt);
	
	List<ItemVO> searchitemAll(SearchPageTO<ItemVO> spt);

	int getAmountSearchAll(SearchPageTO<ItemVO> spt);

	List<ItemVO> searchitem(SearchPageTO<ItemVO> spt);

	int getAmountSearch(SearchPageTO<ItemVO> spt);

	int getItme_no(ItemVO vo);

	String getItem_name(int item_no);

	List<OrdersVO> listForRank();

	void updateQuantity(int item_no);

	


}
