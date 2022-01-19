package kr.co.service;

import java.util.List;

import kr.co.domain.OrderDetailVO;
import kr.co.domain.OrderVO;
import kr.co.domain.OrdersVO;

public interface OrderService {

	/* public void insert(OrderVO vo); */


	public void insert(OrderVO vo, OrderDetailVO odvo);


	public OrderVO detail(int order_item_no);


	public void insert(List<OrdersVO> orderList);


	public List<OrdersVO> list(String member_id);



}
