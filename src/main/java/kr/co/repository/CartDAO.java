package kr.co.repository;

import java.util.List;
import java.util.Map;

import kr.co.domain.CartVO;

public interface CartDAO {

	void insert(CartVO vo);

	int countCart(Map<String, Object> map);

	void update(CartVO vo);

	List<CartVO> readCart(String member_id);

	int sumMoney(String member_id);

	void delete(int cart_no);

	void changeQuantity(CartVO vo);

	List<CartVO> list(CartVO vo);

}
