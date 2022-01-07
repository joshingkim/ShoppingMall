package kr.co.repository;

import java.util.Map;

import kr.co.domain.CartVO;

public interface CartDAO {

	void insert(CartVO vo);

	int countCart(Map<String, Object> map);

	void update(CartVO vo);

}
