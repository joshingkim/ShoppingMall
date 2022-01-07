package kr.co.service;

import kr.co.domain.OrderVO;

public interface OrderService {

	public void insert(OrderVO vo);

	public OrderVO detail(int order_no);

}
