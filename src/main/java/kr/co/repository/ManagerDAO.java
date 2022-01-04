package kr.co.repository;

import kr.co.domain.ManagerVO;


public interface ManagerDAO {

	void insert(ManagerVO vo);

	ManagerVO idcheck(String manager_id);

	ManagerVO login(ManagerVO vo);



}
