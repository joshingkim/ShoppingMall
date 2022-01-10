package kr.co.service;

import java.util.List;


import kr.co.domain.ManagerVO;
import kr.co.domain.OrderVO;

public interface ManagerService {

	void insert(ManagerVO vo);

	List<OrderVO> list();

	 List<Object> saleRank(); 

	 List<Object> daySale();

		 List<Object> likeRank(); 

	
	


}
