package kr.co.service;

import kr.co.domain.MemberVO;

public interface MemberService {

	public void insertMember(MemberVO vo);
	
	public MemberVO idcheck(String member_id);

}
