package kr.co.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.domain.ExchangeRefundVO;
import kr.co.repository.ExchangeRefundDAO;

@Service
public class ExchangeRefundServiceImpl implements ExchangeRefundService {

	@Autowired
	private ExchangeRefundDAO exDao;
//	@Autowired
//	private OrderDAO oDao;

	@Override
	public void insert(ExchangeRefundVO exvo) {
		exDao.insert(exvo);
		
	}

//	@Override
//	public OrderVO insertui(int order_no) {
//		return oDao.checkorder(order_no);
//	}
	
	
	
}