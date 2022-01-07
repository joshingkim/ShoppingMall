package kr.co.repository;

import kr.co.domain.MemberVO;

public interface MemberDAO {
	
	//회원가입
	public void insertMember(MemberVO vo);
	//ID중복체크
	public MemberVO idcheck(String member_id);
	//회원정보 자세히 보기
	public MemberVO read(String member_id);
	
	

}
