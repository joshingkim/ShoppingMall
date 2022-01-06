package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.ItemVO;
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

}
