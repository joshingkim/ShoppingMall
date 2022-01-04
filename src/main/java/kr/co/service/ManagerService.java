package kr.co.service;

import kr.co.domain.ManagerVO;

public interface ManagerService {

	void insert(ManagerVO vo);

	ManagerVO idcheck(String manager_id);

	ManagerVO login(ManagerVO vo);



}
