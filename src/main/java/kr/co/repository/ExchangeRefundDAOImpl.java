package kr.co.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.domain.ExchangeRefundVO;

@Repository
public class ExchangeRefundDAOImpl implements ExchangeRefundDAO {

	@Autowired
	private ExchangeRefundDAO exDao;

	@Override
	public void insert(ExchangeRefundVO exvo) {
		exDao.insert(exvo);
		
	}
	
	
	
}