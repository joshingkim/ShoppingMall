package kr.co.service;

import java.util.List;

import kr.co.domain.CartVO;

public interface CartService {

	void insert(CartVO vo);

	int countCart(int item_no, String member_id);

	void update(CartVO vo);

	List<CartVO> readCart(String member_id);

	int sumMoney(String member_id);

}
