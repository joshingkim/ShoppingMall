package kr.co.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.ItemVO;
import kr.co.domain.SearchPageTO;
import kr.co.domain.SearchVO;
import kr.co.repository.FileDAO;
import kr.co.repository.ItemDAO;
import kr.co.repository.SearchDAO;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	private SearchDAO sDao;
	
	@Autowired
	private ItemDAO iDao;
	
	@Autowired
	private FileDAO fDao;

	@Transactional
	@Override
	public SearchPageTO<ItemVO> searchlist(SearchPageTO<ItemVO> spt) {
		String item_category = spt.getItem_category();
		if(item_category.equals("All")) {
			int amountAll = iDao.getAmountSearchAll(spt);
			List<ItemVO> listAll = iDao.searchitemAll(spt);
			spt.setAmount(amountAll);
			spt.setList(listAll);
		}else {
		int amount = iDao.getAmountSearch(spt);
		List<ItemVO> list = iDao.searchitem(spt);
		spt.setAmount(amount);
		spt.setList(list);
		spt.setPerPage(12);
		}
		return spt;
	}

	@Override
	public List<SearchVO> rankinglist() {
		return sDao.rankinglist();
	}

	@Override
	public void search(SearchVO svo) {
		sDao.search(svo);
	}

}
