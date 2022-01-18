package kr.co.service;

import kr.co.domain.OrderDetailVO;
import kr.co.domain.OrderVO;

public interface OrderService {

	/* public void insert(OrderVO vo); */


	public void insert(OrderVO vo, OrderDetailVO odvo);


	public OrderVO detail(int order_item_no);

}
