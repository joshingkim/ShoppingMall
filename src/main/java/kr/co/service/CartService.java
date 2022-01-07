package kr.co.service;

import kr.co.domain.CartVO;

public interface CartService {

	void insert(CartVO vo);

	int countCart(int item_no, String member_id);

	void update(CartVO vo);

}
