package kr.co.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

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

	@Override
	public MemberVO updateUI(String member_id) {
		return mDao.updateUI(member_id);
	}

	@Override
	public void update(MemberVO vo) {
		mDao.update(vo);		
	}
	
	@Override
	public void delete(MemberVO vo) {
		mDao.delete(vo);		
	}	
	
	@Override public MemberVO deleteUI(String member_id) { 
		return mDao.deleteUI(member_id); 
	}
	 
	@Override
	public MemberVO login(MemberVO vo) {
		return mDao.login(vo);
	}

	@Override
	public int passChk(MemberVO vo) {
		int result = mDao.passChk(vo);
		return result;
	}

}
