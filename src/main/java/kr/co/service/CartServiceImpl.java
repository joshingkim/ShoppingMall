package kr.co.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.CartVO;
import kr.co.repository.CartDAO;

@Service
public class CartServiceImpl implements CartService {

	@Inject
	private CartDAO cDao;
	
	@Override
	public void insert(CartVO vo) {
		cDao.insert(vo);
	}

	@Override
	public int countCart(int item_no, String member_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item_no", item_no);
		map.put("member_id", member_id);
		return cDao.countCart(map);
	}

	@Override
	public void update(CartVO vo) {
		cDao.update(vo);
	}

	@Override
	public List<CartVO> readCart(String member_id) {
		 return cDao.readCart(member_id);
	}

	@Override
	public int sumMoney(String member_id) {
		return cDao.sumMoney(member_id);
	}

	@Override
	public void delete(int cart_no) {
		cDao.delete(cart_no);
	}

}
