package kr.co.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.domain.SearchVO;
import kr.co.repository.SearchDAO;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	private SearchDAO sDao;

	@Override
	public void insert(Map<String, Object> map) {
		sDao.insert(map);
		
	}

	@Override
	public SearchVO list(SearchVO svo) {
		return sDao.list(svo);
	
		
	}





	
}
