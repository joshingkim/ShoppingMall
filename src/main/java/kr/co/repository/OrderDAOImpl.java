package kr.co.repository;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.OrdersVO;

@Repository
public class OrderDAOImpl implements OrderDAO{

	@Inject
	private SqlSession sqlSession;
	
	private final String NS = "kr.co.order";


	@Override
	public void insert(OrdersVO ovo) {
		sqlSession.insert(NS+".insert", ovo);
	}

	@Override
	public List<OrdersVO> list(String member_id) {
		return sqlSession.selectList(NS+".list", member_id);
	}

	@Override
	public List<OrdersVO> list_manager(List<OrdersVO> vo) {
		return sqlSession.selectList(NS+".list_manager", vo);
	}

	@Override
	public void status(OrdersVO vo) {
		sqlSession.update(NS+".status", vo);
	}

	@Override
	public List<OrdersVO> mlist(OrdersVO vo, int count) {
		RowBounds rb = new RowBounds(0, count);
		return sqlSession.selectList(NS+".mlist2", vo, rb);
	}

	@Override
	public String getOrder_date(int order_id) {
		return sqlSession.selectOne(NS+".getOrder_date", order_id);
	}

	@Override
	public OrdersVO checkorder(int order_id) {
		return sqlSession.selectOne(NS + ".checkorder", order_id);
	}

	



	

	
	
	
	
	
}
