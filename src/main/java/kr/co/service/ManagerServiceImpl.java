package kr.co.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import kr.co.domain.ManagerVO;
import kr.co.domain.OrderVO;
import kr.co.repository.ManagerDAO;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Inject
	private ManagerDAO mDAO;

	@Override
	public void insert(ManagerVO vo) {
		mDAO.insert(vo);
	}

	@Override
	public List<OrderVO> list() {

		return mDAO.list();
	}


	@Override 
	 public List<Object> saleRank() {
	 
	 return mDAO.saleRank(); 
	 }


	@Override
	public List<Object> daySale() {
		return mDAO.daySale();
	}

}
