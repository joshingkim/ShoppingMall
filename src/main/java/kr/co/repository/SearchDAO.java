package kr.co.repository;

import java.util.Map;

import kr.co.domain.SearchVO;

public interface SearchDAO {

	void insert(Map<String, Object> map);

	SearchVO list(SearchVO svo);



}
