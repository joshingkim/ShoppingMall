package kr.co.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseStatus;

import kr.co.domain.FnqVO;
import kr.co.domain.PageTO;

@Repository
public class FnqDAOImpl implements FnqDAO{

	@Inject
	private SqlSession sqlSession;
	
	private final String NS = "kr.co.fnq";
	
	@Override
	public void insert(FnqVO vo) {
		sqlSession.insert(NS+".insert", vo);
	}
	@Override
	public FnqVO read(int fnq_no) {
		
		return sqlSession.selectOne(NS+".read", fnq_no);
	}
	@Override
	public FnqVO updateUI(int fnq_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS+".updateUI", fnq_no);
	}
	@Override
	public void update(FnqVO vo) {
		// TODO Auto-generated method stub
		sqlSession.update(NS+".update", vo);
	}
	@Override
	public void delete(int fnq_no) {
		// TODO Auto-generated method stub
		sqlSession.delete(NS+".delete", fnq_no);
	}
	@Override
	public int getAmount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS+".getAmount");
	}
	@Override
	public List<FnqVO> list(PageTO<FnqVO> to) {
		// TODO Auto-generated method stub
RowBounds rbs = new RowBounds(to.getStartNum()-1, to.getPerPage());
		
		return sqlSession.selectList(NS+".list", null, rbs);
	}
	@Override
	public void increaseViewcnt(int fnq_no) {
		// TODO Auto-generated method stub
		sqlSession.update(NS+".increaseViewcnt", fnq_no);
	}
	
	
	
	
	
	
	
}
