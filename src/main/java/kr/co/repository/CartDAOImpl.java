package kr.co.repository;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.CartVO;

@Repository
public class CartDAOImpl implements CartDAO {

	@Inject
	private SqlSession sqlSession;
	private String NS = "kr.co.cart";
	
	@Override
	public void insert(CartVO vo) {
		sqlSession.insert(NS+".insert", vo);
	}

	@Override
	public int countCart(Map<String, Object> map) {
		return sqlSession.selectOne(NS+".countCart", map);
	}

	@Override
	public void update(CartVO vo) {
		sqlSession.update(NS+".update", vo);
	}

}
