package kr.co.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.domain.QnaVO;

@Repository
public class QnaDAOImpl implements QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private String NS = "kr.co.qna";
	@Override
	public void insert(QnaVO qvo) {
		sqlSession.insert(NS + ".insert", qvo);
		
	}
	
	

}
