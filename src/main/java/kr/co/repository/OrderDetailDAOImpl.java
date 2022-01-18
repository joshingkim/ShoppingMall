package kr.co.repository;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.OrderDetailVO;

@Repository
public class OrderDetailDAOImpl implements OrderDetailDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private String NS = "kr.co.detail";

	@Override
	public void insert(OrderDetailVO odvo) {
		sqlSession.insert(NS+".insert", odvo);
	}

	@Override
	public OrderDetailVO read(int order_detail_no) {
		return sqlSession.selectOne(NS+".read", order_detail_no);
	}

	@Override
	public void update(int order_detail_code) {
		sqlSession.update(NS+".update", order_detail_code);
	}


}
