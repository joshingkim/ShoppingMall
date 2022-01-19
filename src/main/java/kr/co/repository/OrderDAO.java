package kr.co.repository;

import java.util.List;

import kr.co.domain.OrderDetailVO;
import kr.co.domain.OrderVO;
import kr.co.domain.OrdersVO;

public interface OrderDAO {

	public void insert(OrderVO vo);

	public OrderVO detail(int order_item_no);

	public void insert(OrdersVO ovo);

	public List<OrdersVO> list(String member_id);



}
