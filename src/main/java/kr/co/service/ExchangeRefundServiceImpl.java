package kr.co.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.ExchangeRefundVO;
import kr.co.domain.OrdersVO;
import kr.co.repository.ExchangeRefundDAO;
import kr.co.repository.OrderDAO;

@Service
public class ExchangeRefundServiceImpl implements ExchangeRefundService {

	@Autowired
	private ExchangeRefundDAO exDao;
	@Autowired
	private OrderDAO oDao;

	@Transactional
	@Override
	public void insertExRefund(ExchangeRefundVO exvo) {
		exDao.insertExRefund(exvo);
		
		int checkCode = exvo.getExchange_refund_code();
		int order_id = exvo.getOrder_id();
		String status = null;
		OrdersVO vo = null;
		if(checkCode == 0) {
			status = "교환";
			vo = new OrdersVO(order_id, 0, null, 0, 0, null, null, null, status, null, null);
			oDao.status(vo);
		}else if(checkCode == 1){
			status = "환불";
			vo = new OrdersVO(order_id, 0, null, 0, 0, null, null, null, status, null, null);
			oDao.status(vo);
		}else if(checkCode == 2) {
			status = "취소";
			vo = new OrdersVO(order_id, 0, null, 0, 0, null, null, null, status, null, null);
			oDao.status(vo);
		}else if(checkCode == 3) {
			status = "교환신청중";
			vo = new OrdersVO(order_id, 0, null, 0, 0, null, null, null, status, null, null);
			oDao.status(vo);
		}else if(checkCode == 4) {
			status = "환불신청중";
			vo = new OrdersVO(order_id, 0, null, 0, 0, null, null, null, status, null, null);
			oDao.status(vo);
		}
	}
	
	@Override
	public ExchangeRefundVO exList(int order_id) {
		
		return exDao.exList(order_id);
	}
	
	
	
	
	
}