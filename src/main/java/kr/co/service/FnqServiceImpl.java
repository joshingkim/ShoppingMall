package kr.co.service;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.FnqVO;
import kr.co.domain.PageTO;
import kr.co.repository.FnqDAO;

@Service
public class FnqServiceImpl implements FnqService{

	@Autowired
	private FnqDAO fDAO;

	
	@Transactional
	@Override
	public void insert(FnqVO vo) {
		fDAO.insert(vo);
		
	
	}

	@Override
	public FnqVO read(int fnq_no) {
		fDAO.increaseViewcnt(fnq_no);
		return fDAO.read(fnq_no);
	}

	@Override
	public FnqVO updateUI(int fnq_no) {
		// TODO Auto-generated method stub
		return fDAO.updateUI(fnq_no);
	}

	@Override
	public void update(FnqVO vo) {
		// TODO Auto-generated method stub
		fDAO.update(vo);
	}

	@Override
	public void delete(int fnq_no) {
		fDAO.delete(fnq_no);
	}
	@Transactional
	@Override
	public PageTO<FnqVO> list(PageTO<FnqVO> pt) {
		// TODO Auto-generated method stub
		int amount = fDAO.getAmount();
		pt.setAmount(amount);
		if(amount == 0) {
			return null;
		}else {
			List<FnqVO> list = fDAO.list(pt);
			pt.setList(list);

			return pt;
		}
		
	}
}
