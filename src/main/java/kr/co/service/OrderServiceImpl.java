package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.OrderVO;
import kr.co.repository.OrderDAO;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Inject 
	private OrderDAO oDao;

	@Override
	public void insert(OrderVO vo) {
		
		oDao.insert(vo);
		
	}

}
