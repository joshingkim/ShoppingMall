package kr.co.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.co.domain.BoardVO;
import kr.co.domain.ItemVO;
import kr.co.domain.OrdersVO;
import kr.co.domain.PageTO;

public interface ItemService {

	void insert(ItemVO ivo, BoardVO bvo);

	ItemVO read(int item_no, int board_no, HttpSession session);

	ItemVO updateUI(int item_no);

	void update(ItemVO vo);

	PageTO<ItemVO> list(PageTO<ItemVO> pt);

	void delete(int item_no);

	List<ItemVO> getItem_size(String item_name);

	List<ItemVO> getItem_color(String item_name);

	PageTO<ItemVO> listbycategory(PageTO<ItemVO> pt, String item_category);

	PageTO<ItemVO> listofall(PageTO<ItemVO> pt);

	int getItme_no(ItemVO vo);

	void addItem(ItemVO vo);

	ItemVO read(int item_no);

	List<OrdersVO> listForRank();

}
