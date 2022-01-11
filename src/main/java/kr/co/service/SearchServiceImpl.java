package kr.co.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.ItemVO;
import kr.co.repository.ItemDAO;
import kr.co.repository.SearchDAO;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	private SearchDAO sDao;
	
	@Autowired
	private ItemDAO iDao;

	@Transactional
	@Override
	public List<ItemVO> search(Map<String, Object> map) {
		sDao.search(map);
		List<ItemVO> list = new ArrayList<ItemVO>();
//		List<ItemVO> list = iDao.searchitem(map);
		return list;
		
	}

//	@Override
//	public SearchVO list(SearchVO svo) {
//		return sDao.list(svo);
//	
//		
//	}





	
}
