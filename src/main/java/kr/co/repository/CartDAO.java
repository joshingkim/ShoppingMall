package kr.co.repository;

import java.util.List;
import java.util.Map;

import kr.co.domain.CartVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;

public interface CartDAO {

	void insert(CartVO vo);

	int countCart(CartVO vo);

	void update(CartVO vo);

	int delete(int cart_no);

	void changeQuantity(CartVO vo);

	void deleteAll(int cart_no);

	int getAmount(String member_id);

	List<CartVO> readCart(String member_id);
	
	List<CartVO> list(String member_id);

	List<CartVO> readList(Map<String, Object> map);

	List<ItemVO> getDiscount(String member_id);

	void updateQuantity(CartVO vo);

	int sumMoney(PageTO<CartVO> pt, String member_id);

	void deleteCart(String member_id);

}
