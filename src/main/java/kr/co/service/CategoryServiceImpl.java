package kr.co.service;

import java.util.List;

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
	
}
