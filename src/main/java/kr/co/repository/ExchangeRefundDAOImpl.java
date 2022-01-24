package kr.co.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.domain.ExchangeRefundVO;

@Repository
public class ExchangeRefundDAOImpl implements ExchangeRefundDAO {

	@Autowired
	private SqlSession sqlSession;
	private String NS = "kr.co.exchangeRefund";
	
	@Override
	public void insertExRefund(ExchangeRefundVO exvo) {
		sqlSession.insert(NS + ".insertExRefund", exvo);
		
	}
	
	@Override
	public ExchangeRefundVO exList(int order_id) {
		
		return sqlSession.selectOne(NS+".exList", order_id);
	}
}