package kr.co.service;

import java.util.List;

import kr.co.domain.CartVO;

public interface CartService {

	void insert(CartVO vo);

	int countCart(int item_no, String member_id);

	void update(CartVO vo);

	List<CartVO> readCart(String member_id);

	int sumMoney(String member_id);

	void delete(int cart_no);
	
	void deleteAll(int cart_no);

	void changeQuantity(CartVO vo);
	
	List<CartVO> list(CartVO vo);

}
