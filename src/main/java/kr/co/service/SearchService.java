package kr.co.service;

import java.util.Map;

import kr.co.domain.SearchVO;

public interface SearchService {

	void insert(Map<String, Object> map);

	SearchVO list(SearchVO svo);





}
