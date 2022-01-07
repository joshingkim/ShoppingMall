package kr.co.service;

import java.util.List;
import java.util.Map;

import kr.co.domain.ErrorVO;

public interface ErrorService {

	void insert(Map<String, Object> map);

	List<ErrorVO> list();

	void update(int error_no);

}
