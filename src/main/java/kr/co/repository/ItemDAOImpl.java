package kr.co.repository;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.ItemVO;

@Repository
public class ItemDAOImpl implements ItemDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private final String NS = "kr.co.item";

	@Override
	public void insert(ItemVO vo) {
		sqlSession.insert(NS+".insert", vo);
	}

	@Override
	public ItemVO read(String item_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS+".read", item_no);
	}

	@Override
	public ItemVO updateUI(String item_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS+".updateUI", item_no);
	}

	@Override
	public void update(ItemVO vo) {
		sqlSession.update(NS+".update", vo);
	}
	
}
