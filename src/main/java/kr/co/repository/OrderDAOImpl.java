package kr.co.repository;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.OrderVO;

@Repository
public class OrderDAOImpl implements OrderDAO{

	@Inject
	private SqlSession sqlSession;
	
	private final String NS = "kr.co.order";

	@Override
	public void insert(OrderVO vo) {
		sqlSession.insert(NS+".insert", vo);
	}

	@Override
	public OrderVO detail(int order_no) {
		return sqlSession.selectOne(NS+".detail", order_no);
	}
	
	
	
	
}
