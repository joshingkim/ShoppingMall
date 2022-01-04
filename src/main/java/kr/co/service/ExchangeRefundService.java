package kr.co.service;

import kr.co.domain.ExchangeRefundVO;

public interface ExchangeRefundService {

	void insert(ExchangeRefundVO exvo);

	OrderVO insertui(int order_no);

}