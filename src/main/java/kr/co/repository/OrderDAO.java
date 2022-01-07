package kr.co.repository;

import kr.co.domain.OrderVO;

public interface OrderDAO {

	public void insert(OrderVO vo);

	public OrderVO detail(int order_no);

}
