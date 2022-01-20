package kr.co.service;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.OrdersVO;
import kr.co.repository.OrderDAO;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Inject 
	private OrderDAO oDao;
	

	@Transactional
	@Override
	public String insert(List<OrdersVO> orderList) {
		OrdersVO ovo = new OrdersVO();
		for(int i=0; i<orderList.size(); i++) {
			ovo = orderList.get(i);
			oDao.insert(ovo);
		}
		String date = oDao.getOrder_date(ovo.getOrder_id());
		return date;
	}

	@Override
	public List<OrdersVO> list(String member_id) {
		return oDao.list(member_id);
	}

	@Override
	public List<OrdersVO> list_manager(List<OrdersVO> vo) {
		return oDao.list_manager(vo);
	}

	@Override
	public void status(OrdersVO vo) {
		oDao.status(vo);
	}

	@Override
	public List<OrdersVO> mlist(OrdersVO vo, int count) {
		return oDao.mlist(vo, count);
	}

	@Override
	public OrdersVO checkorder(int order_id) {
		// TODO Auto-generated method stub
		return oDao.checkorder(order_id);
	}



	


	



}
