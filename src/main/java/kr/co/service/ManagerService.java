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

		List<Object> getName();

		List<Object> keywordRank();

		ManagerVO idcheck(String manager_id);

		List<OrderVO> managerList();

		void updateCode(ManagerVO vo);

		void managerDelete(ManagerVO vo);

		ManagerVO read(String manager_id);

		List<Object> ageRank();

		List<Object> categoryRank();

		ManagerVO managerLogin(ManagerVO vo);

		ManagerVO updateUI(String manager_id);

		void update(ManagerVO vo);

		
	
	


}
