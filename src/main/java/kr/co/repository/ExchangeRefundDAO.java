package kr.co.repository;

import kr.co.domain.ExchangeRefundVO;

public interface ExchangeRefundDAO {

	void insertExRefund(ExchangeRefundVO exvo);
	
	ExchangeRefundVO exList(int order_id);
}