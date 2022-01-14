package kr.co.repository;

import kr.co.domain.OrderDetailVO;

public interface OrderDetailDAO {

	void insert(OrderDetailVO odvo);

	OrderDetailVO read(int order_detail_no);

	void update(int order_detail_code);


}
