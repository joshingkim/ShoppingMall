package kr.co.repository;

import java.util.Date;
import java.util.List;

import kr.co.domain.OrdersVO;

public interface OrderDAO {


	public void insert(OrdersVO ovo);

	public List<OrdersVO> list(String member_id);

	public List<OrdersVO> list_manager(List<OrdersVO> vo);

	public void status(OrdersVO vo);

	public List<OrdersVO> mlist(OrdersVO vo, int count);

	public String getOrder_date(int order_id);
	
	public OrdersVO checkorder(int order_id);


}
