package kr.co.service;

import java.util.List;

import kr.co.domain.CartVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;

public interface CartService {

	void insert(CartVO vo);

	String countCart(CartVO vo);

	void update(CartVO vo);

	PageTO<CartVO> readCart(PageTO<CartVO> pt, String member_id);

	int delete(int cart_no);
	
	void deleteAll(int cart_no);

	void changeQuantity(CartVO vo);
	
	void updateQuantity(CartVO vo);
	
	List<CartVO> list(String member_id);

	List<ItemVO> getDiscount(String member_id);

	int sumMoney(PageTO<CartVO> pt, String member_id);

	

}
