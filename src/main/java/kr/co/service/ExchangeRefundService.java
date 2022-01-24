package kr.co.service;

import kr.co.domain.ExchangeRefundVO;

public interface ExchangeRefundService {

	void insertExRefund(ExchangeRefundVO exvo);
	ExchangeRefundVO exList(int order_id);
}