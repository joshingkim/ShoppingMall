package kr.co.repository;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.CategoryVO;
import kr.co.domain.PageTO;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	@Inject
	private SqlSession sqlSession;
	
	private final String NS = "kr.co.category";

	@Override
	public void insert(CategoryVO vo) {
		sqlSession.insert(NS+".insert", vo);
	}

	@Override
	public int getAmount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS+".getAmount");
	}

	@Override
	public List<CategoryVO> list(PageTO<CategoryVO> pt) {
		RowBounds rbs = new RowBounds(pt.getStartNum()-1, pt.getPerPage());
		return sqlSession.selectList(NS+".list", null, rbs);
	}

	@Override
	public CategoryVO updateUI(String item_name) {

		return sqlSession.selectOne(NS+".updateUI", item_name);
	}

	@Override
	public void delete(String item_name) {
		sqlSession.delete(NS+".delete", item_name);
	}
	
	@Override
	public List<CategoryVO> categorylist() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".categorylist");
	}

	@Override
	public List<CategoryVO> item_name_list(String item_category) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".item_name_list", item_category);
	}

	@Override
	public void update(CategoryVO vo) {
		sqlSession.update(NS+".update", vo);
	}
	
}
