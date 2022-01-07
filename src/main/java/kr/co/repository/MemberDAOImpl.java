package kr.co.repository;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;
	
	//네임스페이스 가져오는 용
	private String NS = "kr.co.member";
	
	//회원가입
	@Override
	public void insertMember(MemberVO vo) {//vo가 데이터값임
		sqlSession.insert(NS+".insertMember", vo);
	}
	
	//ID중복체크
	@Override
	public MemberVO idcheck(String member_id) {
		return sqlSession.selectOne(NS+".idcheck", member_id);
	}

	@Override
	public MemberVO read(String member_id) {
		return sqlSession.selectOne(NS+".read", member_id);
	}

}
