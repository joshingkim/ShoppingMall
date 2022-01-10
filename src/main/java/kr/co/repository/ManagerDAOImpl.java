package kr.co.repository;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.ManagerVO;
import kr.co.domain.OrderVO;

@Repository
public class ManagerDAOImpl implements ManagerDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private String NS = "kr.co.manager";

	@Override
	public void insert(ManagerVO vo) {
		sqlSession.insert(NS+".insert", vo);
	}

	@Override
	public List<OrderVO> list() {
		return sqlSession.selectList(NS+".list");
	}

	
	 @Override 
	 public List<Object> saleRank() {
		 return sqlSession.selectList(NS+".saleRank"); }
	 

	
	 @Override
		public   List<Object> daySale() {
			return sqlSession.selectList(NS+".daySale");
		}

	
	

}
