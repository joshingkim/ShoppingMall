package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;
import kr.co.repository.ItemDAO;

@Service
public class ItemServiceImpl implements ItemService {
	
	@Inject
	private ItemDAO iDao;
	
	@Override
	public void insert(ItemVO vo) {
		iDao.insert(vo);
	}

	@Override
	public ItemVO read(String item_no) {
		// TODO Auto-generated method stub
		return iDao.read(item_no);
	}

	@Override
	public ItemVO updateUI(String item_no) {
		// TODO Auto-generated method stub
		return iDao.updateUI(item_no);
	}

	@Override
	public void update(ItemVO vo) {
		iDao.update(vo);
	}

	@Override
	public PageTO<ItemVO> list(PageTO<ItemVO> pt) {
		int amount = iDao.getAmount();
		pt.setAmount(amount);
		
		List<ItemVO> list = iDao.list(pt);
		pt.setList(list);
		
		return pt;
	}

	@Override
	public void delete(String item_no) {
		iDao.delete(item_no);
	}



}
