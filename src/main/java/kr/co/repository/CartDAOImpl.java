package kr.co.repository;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.CartVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;

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
	public void update(CartVO vo) {
		sqlSession.update(NS+".update", vo);
	}

	@Override
	public int sumMoney(PageTO<CartVO> pt, String member_id) {
		return sqlSession.selectOne(NS+".sumMoney", member_id);
	}
	
	@Override
	public int delete(int cart_no) {
		return sqlSession.delete(NS+".delete", cart_no);
	}

	@Override
	public void changeQuantity(CartVO vo) {
		sqlSession.selectOne(NS+".changeQuantity", vo);
	}

	@Override
	public List<CartVO> list(String member_id) {
		return sqlSession.selectList(NS+".list", member_id);
	}

	@Override
	public void deleteAll(int cart_no) {
		sqlSession.selectOne(NS+".deleteAll", cart_no);
	}

	@Override
	public int countCart(CartVO vo) {
//		return sqlSession.selectOne(NS+".countCart", vo);
		return 0;
	}

	@Override
	public List<CartVO> readCart(String member_id) {
		return sqlSession.selectList(NS+".readCart", member_id);
	}

	@Override
	public int getAmount(String member_id) {
		return sqlSession.selectOne(NS + ".getAmount", member_id);
	}

	@Override
	public List<CartVO> readList(Map<String, Object> map) {
		@SuppressWarnings("unchecked")
		PageTO<CartVO> pt = (PageTO<CartVO>) map.get("pt");
		RowBounds rbs = new RowBounds(pt.getStartNum() - 1, pt.getPerPage());
		return sqlSession.selectList(NS + ".readList", map, rbs);
	}

	@Override
	public List<ItemVO> getDiscount(String member_id) {
			return sqlSession.selectList(NS+".getDiscount", member_id);
	}
	
	@Override
	public void updateQuantity(CartVO vo) {
		sqlSession.update(NS+".updateQuantity", vo);
	}

	@Override
	public void deleteCart(String member_id) {
		sqlSession.delete(NS+".deleteCart", member_id);
	}

	
}
