package kr.co.service;

import kr.co.domain.OrderDetailVO;

public interface OrderDetailService {

	void insert(OrderDetailVO odvo);

	OrderDetailVO read(int order_detail_no);

	void update(int order_detail_code);



}
