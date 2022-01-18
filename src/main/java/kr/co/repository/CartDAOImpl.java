package kr.co.repository;

import java.util.List;
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

	@Override
	public List<CartVO> readCart(String member_id) {
		return sqlSession.selectOne(NS+".readCart", member_id);
	}

	@Override
	public int sumMoney(String member_id) {
		return sqlSession.selectOne(NS+".sumMoney", member_id);
	}
	
	@Override
	public void delete(int cart_no) {
		sqlSession.delete(NS+".deleteCart", cart_no);
	}
	
}
