package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.CategoryVO;
import kr.co.repository.CategoryDAO;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Inject
	private CategoryDAO cDao;

	@Override
	public void insert(CategoryVO vo) {
		cDao.insert(vo);
	}
	
}
