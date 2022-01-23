package kr.co.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;
import kr.co.repository.CategoryDAO;
import kr.co.repository.ItemDAO;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Inject
	private CategoryDAO cDao;
	@Inject
	private ItemDAO iDao;

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
	
	@Transactional
	@Override
	public void update(CategoryVO vo) {
		cDao.insert(vo);
		String item_name = vo.getItem_name();
		String item_category = vo.getItem_category();
		String ori_item_name = vo.getOri_item_name();
		
		ItemVO ivo = new ItemVO(item_name, item_category, ori_item_name);
		if(item_name == ori_item_name) {
			cDao.update(vo);
		}else {
			iDao.updatebycategory(ivo);
			
			cDao.delete(ori_item_name);
		}
	}


}
