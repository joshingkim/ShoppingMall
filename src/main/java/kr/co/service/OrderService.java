package kr.co.service;

import java.util.Date;
import java.util.List;

import kr.co.domain.OrdersVO;

public interface OrderService {

	/* public void insert(OrderVO vo); */




	public String insert(List<OrdersVO> orderList);


	public List<OrdersVO> list(String member_id);
	
	public List<OrdersVO> list_manager(List<OrdersVO> vo);

	public void status(OrdersVO vo);

	public List<OrdersVO> mlist(OrdersVO vo, int count);


	public OrdersVO checkorder(int order_id);





}
