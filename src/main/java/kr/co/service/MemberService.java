package kr.co.service;

import javax.servlet.http.HttpSession;

import kr.co.domain.MemberVO;

public interface MemberService {

	public void insertMember(MemberVO vo);
	
	public MemberVO idcheck(String member_id);

	public MemberVO read(String member_id);

	public MemberVO updateUI(String member_id);

	public void update(MemberVO vo);
	
	public MemberVO deleteUI(String member_id);

	public void delete(MemberVO vo);	

	public MemberVO login(MemberVO vo);
	
	public int passChk(MemberVO vo);

	


}
