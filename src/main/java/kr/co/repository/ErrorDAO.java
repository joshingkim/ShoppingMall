package kr.co.repository;

import java.util.List;
import java.util.Map;

import kr.co.domain.ErrorVO;
import kr.co.service.ErrorService;

public interface ErrorDAO {

	void insert(Map<String, Object> map);

	List<ErrorVO> list();

	void update(int error_no);

}
