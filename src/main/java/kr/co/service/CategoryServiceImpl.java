package kr.co.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.CategoryVO;
import kr.co.domain.PageTO;
import kr.co.repository.CategoryDAO;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Inject
	private CategoryDAO cDao;

	@Override
	public void insert(CategoryVO vo) {
		cDao.insert(vo);
	}

	@Override
	public PageTO<CategoryVO> list(PageTO<CategoryVO> pt) {
		int amount = cDao.getAmount();
		pt.setAmount(amount);
		
		List<CategoryVO> list = cDao.list(pt);
		pt.setList(list);
		
		return pt;
	}

	@Override
	public CategoryVO updateUI(String item_name) {
		// TODO Auto-generated method stub
		return cDao.updateUI(item_name);
	}

	@Override
	public void delete(String item_name) {
		cDao.delete(item_name);
	}
	
	@Override
	public List<CategoryVO> categorylist() {
		// TODO Auto-generated method stub
		return cDao.categorylist();
	}

	@Override
	public List<CategoryVO> item_name_list(String item_category) {
		// TODO Auto-generated method stub
		return cDao.item_name_list(item_category);
	}

	@Override
	public void update(CategoryVO vo) {
		cDao.update(vo);
	}


}
