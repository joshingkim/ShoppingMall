package kr.co.repository;

import javax.servlet.http.HttpSession;

import kr.co.domain.MemberVO;

public interface MemberDAO {
	
	//회원가입
	public void insertMember(MemberVO vo);
	//ID중복체크
	public MemberVO idcheck(String member_id);
	//회원정보 자세히 보기
	public MemberVO read(String member_id);
	//회원 정보 수정 화면 
	public MemberVO updateUI(String member_id);
	//회원 정보 수정
	public void update(MemberVO vo);
	//로그인
	public MemberVO login(MemberVO vo);
	//
	public MemberVO deleteUI(String member_id);
	//회원 탈퇴
	public void delete(MemberVO vo);
	//비밀번호 체크
	public int passChk(MemberVO vo);

	

}
