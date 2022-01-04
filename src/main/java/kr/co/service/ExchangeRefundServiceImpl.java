package kr.co.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.domain.ExchangeRefundVO;

@Service
public class ExchangeRefundServiceImpl implements ExchangeRefundService {

	@Autowired
	private SqlSession sqlSesion;
	private String NS = "kr.co.exchangeRefund";
	

	
		@Override
	public OrderVO insertui(int order_no) {
		sqlSesion.selectOne(NS + ".checkorder", order_no);

		@Override
	public void insert(ExchangeRefundVO exvo) {
		sqlSesion.insert(NS + ".insert", exvo);
		
	}
	
	
	
	
	
}