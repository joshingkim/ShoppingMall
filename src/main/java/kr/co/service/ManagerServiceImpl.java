package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.ManagerVO;

import kr.co.repository.ManagerDAO;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Inject
	private ManagerDAO mDAO;

	@Override
	public void insert(ManagerVO vo) {
		mDAO.insert(vo);
	}



	
}
