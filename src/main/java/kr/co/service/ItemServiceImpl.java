package kr.co.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.BoardVO;
import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;
import kr.co.repository.BoardDAO;
import kr.co.repository.FileDAO;
import kr.co.repository.ItemDAO;

@Service
public class ItemServiceImpl implements ItemService {
	
	@Inject
	private ItemDAO iDao;
	
	@Inject
	private FileDAO fDao;
	
	@Inject
	private BoardDAO bDao;
	
	@Transactional
	@Override
	public void insert(ItemVO ivo, BoardVO bvo) {
		iDao.insert(ivo);
		
		bvo.setItem_no(ivo.getItem_no());
		
		bDao.insert(bvo);
		
		String[] arr = ivo.getInsertfiles();
		int item_no = ivo.getItem_no();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item_no", item_no);
		if (arr != null) {
			for (int i = 0; i < arr.length; i++) {
				map.put("file_name", arr[i]);
				fDao.insert(map);
			}
		}
		
	}
	@Override
	public ItemVO read(int item_no) {
		// TODO Auto-generated method stub
		return iDao.read(item_no);
	}

	@Override
	public ItemVO updateUI(int item_no) {
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
	public void delete(int item_no) {
		iDao.delete(item_no);
	}



}
