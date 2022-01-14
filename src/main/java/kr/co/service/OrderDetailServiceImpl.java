package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.OrderDetailVO;
import kr.co.repository.OrderDetailDAO;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {
	
	@Inject
	private OrderDetailDAO odDAO;

	@Override
	public void insert(OrderDetailVO odvo) {
		odDAO.insert(odvo);
	}

	@Override
	public OrderDetailVO read(int order_detail_no) {
		return odDAO.read(order_detail_no);
	}

	@Override
	public void update(int order_detail_code) {
		odDAO.update(order_detail_code);
	}




}
