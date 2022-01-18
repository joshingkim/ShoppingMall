package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.OrderDetailVO;
import kr.co.domain.OrderVO;
import kr.co.repository.OrderDAO;
import kr.co.repository.OrderDetailDAO;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Inject 
	private OrderDAO oDao;
	
	@Inject
	private OrderDetailDAO odDao;


	@Override
	public OrderVO detail(int order_item_no) {
		return oDao.detail(order_item_no);
	}

	@Override
	public void insert(OrderVO vo, OrderDetailVO odvo) {
		oDao.insert(vo);
		odvo.setOrder_item_no(vo.getOrder_item_no());
		odvo.setOrder_detail_price(vo.getOrder_price());
		odDao.insert(odvo);
	}



}
