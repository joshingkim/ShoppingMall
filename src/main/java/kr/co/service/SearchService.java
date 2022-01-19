package kr.co.service;

import java.util.List;
import java.util.Map;

import kr.co.domain.ItemVO;
import kr.co.domain.SearchPageTO;
import kr.co.domain.SearchVO;


public interface SearchService {


	List<SearchVO> rankinglist();

	void search(SearchVO svo);

	SearchPageTO<ItemVO> searchlist(SearchPageTO<ItemVO> spt);

}
