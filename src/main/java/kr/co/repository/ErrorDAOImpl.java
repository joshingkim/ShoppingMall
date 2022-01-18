package kr.co.repository;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.ErrorVO;
import kr.co.service.ErrorService;

@Repository
public class ErrorDAOImpl implements ErrorDAO {

	@Inject
	private SqlSession sqlSession;
	private String NS = "kr.co.error";
	
	@Override
	public void insert(Map<String, Object> map) {
		sqlSession.insert(NS+".insert", map);
	}

	@Override
	public List<ErrorVO> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NS+".list");
	}

	@Override
	public void update(int error_no) {
		sqlSession.update(NS+".update", error_no);
	}
	
}
