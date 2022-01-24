package kr.co.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.ManagerVO;
import kr.co.domain.MemberVO;
import kr.co.domain.OrderVO;
import kr.co.domain.OrdersVO;
import kr.co.domain.PageTO;
import kr.co.repository.ManagerDAO;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Inject
	private ManagerDAO mDAO;

	@Transactional
	@Override
	public void insert(ManagerVO vo) {
		mDAO.insert(vo);
	}

	@Override
	public List<OrdersVO> list() {

		return mDAO.list();
	}

	
	@Override 
	 public List<Object> saleRank() {
	 
	 return mDAO.saleRank(); 
	 }


	@Override
	public List<Object> daySale() {
		return mDAO.daySale();
	}

	
	  @Override public List<Object> likeRank() {
	 
	 return mDAO.likeRank(); 
	 }

	

	@Override
	public List<Object> keywordRank() {
		
		return mDAO.keywordRank();
	}

	@Override
	public ManagerVO idcheck(String manager_id) {
		
		return mDAO.idcheck(manager_id);
	}

	@Override
	public List<Object> managerList() {
		
		return mDAO.managerList();
	}

	@Override
	public void updateCode(ManagerVO vo) {
		mDAO.updateCode(vo);
		
	}

	@Override
	public void managerDelete(ManagerVO vo) {
		mDAO.managerDelete(vo);
	}

	@Override
	public ManagerVO read(String manager_id) {
		
		return mDAO.read(manager_id);
	}

	@Override
	public List<Object> ageRank() {
		
		return mDAO.ageRank();
	}

	@Override
	public List<Object> categoryRank() {
		
		return mDAO.categoryRank();
	}

	@Override
	public ManagerVO managerLogin(ManagerVO vo) {
		
		return mDAO.managerLogin(vo);
	}

	@Override
	public ManagerVO updateUI(String manager_id) {
		
		return mDAO.updateUI(manager_id);
	}

	@Override
	public void update(ManagerVO vo) {
		mDAO.update(vo);
		
	}

	@Override
	public List<Object> monthSale() {
		
		return mDAO.monthSale();
	}

	@Override
	public List<MemberVO> memberList() {
		
		return mDAO.memberList();
	}

	@Transactional
	@Override
	public PageTO<MemberVO> memberList(PageTO<MemberVO> pt) {
		
		int amount = mDAO.getAmount();
		pt.setAmount(amount);
		if(amount==0) {
			return null;
		} else {
			List<MemberVO> memberList = mDAO.memberList(pt);
			pt.setList(memberList);
			return pt;
		}
	}

	



}
