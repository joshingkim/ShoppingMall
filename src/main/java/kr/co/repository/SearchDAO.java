package kr.co.repository;

import java.util.List;
import java.util.Map;

import kr.co.domain.ItemVO;
import kr.co.domain.SearchVO;

public interface SearchDAO {

	void search(Map<String, Object> map);

	List<SearchVO> rankinglist();

//	SearchVO list(SearchVO svo);



}
