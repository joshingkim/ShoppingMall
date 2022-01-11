package kr.co.service;

import java.util.List;
import java.util.Map;

import kr.co.domain.ItemVO;


public interface SearchService {

	List<ItemVO> search(Map<String, Object> map);

//	SearchVO list(SearchVO svo);





}
