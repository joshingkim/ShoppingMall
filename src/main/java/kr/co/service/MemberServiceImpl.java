package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.MemberVO;
import kr.co.repository.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO mDao;

	@Override
	public void insertMember(MemberVO vo) {
		mDao.insertMember(vo);
	}

	@Override
	public MemberVO idcheck(String member_id) {
		return mDao.idcheck(member_id);
	}

	@Override
	public MemberVO read(String member_id) {
		return mDao.read(member_id);
	}

}
