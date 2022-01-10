package kr.co.repository;

import java.util.List;
import java.util.Map;


import kr.co.domain.ManagerVO;
import kr.co.domain.OrderVO;


public interface ManagerDAO {

	void insert(ManagerVO vo);

	List<OrderVO> list();

	
	 List<Object> saleRank();
	 
	 List<Object> daySale();

	 List<Object> likeRank();

	


}
