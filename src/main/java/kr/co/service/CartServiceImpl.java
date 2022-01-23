package kr.co.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.CartVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;
import kr.co.repository.CartDAO;
import kr.co.repository.FileDAO;

@Service
public class CartServiceImpl implements CartService {

	@Inject
	private CartDAO cDao;
	@Inject
	private FileDAO fDao;
	
	@Override
	public void insert(CartVO vo) {
		cDao.insert(vo);
	}

	@Transactional
	@Override
	public String countCart(CartVO vo) {
		
		int count = cDao.countCart(vo);
		if (count == 0) {
			cDao.insert(vo);
			return "0";
		} else {
			cDao.update(vo);
			return "1";
		}
	}

	@Override
	public void update(CartVO vo) {
		cDao.update(vo);
	}

	@Transactional
	@Override
	public PageTO<CartVO> readCart(PageTO<CartVO> pt, String member_id) {
		int amount = cDao.getAmount(member_id);
		pt.setAmount(amount);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pt", pt);
		map.put("member_id", member_id);
		List<CartVO> list = cDao.readList(map);
		pt.setList(list);
		
		list = pt.getList();
		
		for(int i=0; i<list.size(); i++) {
			int item_no = pt.getList().get(i).getItem_no();
			String file_name = fDao.getFile(item_no).get(0);
			pt.getList().get(i).setFile_name(file_name);
		}
		
		
		return pt;
	}


	@Override
	public int delete(int cart_no) {
		return cDao.delete(cart_no);
	}

	@Override
	public void changeQuantity(CartVO vo) {
		cDao.changeQuantity(vo);		
	}

	@Override
	public List<CartVO> list(String member_id) {
		return cDao.list(member_id);
	}

	@Override
	public void deleteAll(int cart_no) {
		cDao.deleteAll(cart_no);
	}

	@Override
	public List<ItemVO> getDiscount(String member_id) {
		return cDao.getDiscount(member_id);
	}
	
	@Override
	public void updateQuantity(CartVO vo) {
		cDao.updateQuantity(vo);
	}

	@Override
	public int sumMoney(PageTO<CartVO> pt, String member_id) {
		return cDao.sumMoney(pt, member_id);
	}


}
