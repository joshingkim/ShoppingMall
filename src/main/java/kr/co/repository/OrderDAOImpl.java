package kr.co.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.OrderVO;
import kr.co.domain.OrdersVO;

@Repository
public class OrderDAOImpl implements OrderDAO{

	@Inject
	private SqlSession sqlSession;
	
	private final String NS = "kr.co.order";

	@Override
	public void insert(OrderVO vo) {
		sqlSession.insert(NS+".insert1", vo);
	}

	@Override
	public OrderVO detail(int order_item_no) {
		return sqlSession.selectOne(NS+".detail", order_item_no);
	}

	@Override
	public void insert(OrdersVO ovo) {
		sqlSession.insert(NS+".insert", ovo);
	}

	
	
	
	
}
