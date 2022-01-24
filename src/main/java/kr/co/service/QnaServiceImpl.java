package kr.co.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.PageTO;
import kr.co.domain.QnaVO;
import kr.co.domain.ReviewVO;
import kr.co.repository.BoardDAO;
import kr.co.repository.FileDAO;
import kr.co.repository.ItemDAO;
import kr.co.repository.QnaDAO;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDAO qDao;
	
	@Inject
	private BoardDAO bDao;
	
	@Inject
	private FileDAO fDao;
	
	@Inject
	private ItemDAO iDao;
	
	@Override
	public void insert(QnaVO qvo) {
		qDao.insert(qvo);

	}
	@Transactional
	@Override
	public List<QnaVO> list(PageTO<QnaVO> qpt, int board_no) {
		int amount = qDao.getAmount(board_no);
		qpt.setAmount(amount);
		if(amount == 0) {
			return null;
		}else {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("qpt", qpt);
			map.put("board_no", board_no);
			return qDao.list(map);
		}

	}

	@Override
	public void answer(QnaVO vo) {
		qDao.answer(vo);

	}
	@Transactional
	@Override
	public PageTO<QnaVO> listOfAll(PageTO<QnaVO> pt) {
		int amount = qDao.getAmount();
		pt.setAmount(amount);
		if(amount ==0) {
			return null;
		}else {
		List<QnaVO> list = qDao.listOfAll(pt);
		pt.setList(list);
		
		list = pt.getList();
		for(int i=0; i<list.size(); i++) {
			int boad_no = pt.getList().get(i).getBoard_no();
			int item_no = bDao.selectItem_no(boad_no);
			pt.getList().get(i).setItem_no(item_no);
			String file_name = fDao.getFile(item_no).get(0);
			pt.getList().get(i).setFile_name(file_name);
			String item_name = iDao.getItem_name(item_no);
			pt.getList().get(i).setItem_name(item_name);
		}
		
		return pt;
		}
	}
	@Transactional
	@Override
	public PageTO<QnaVO> listForMember(PageTO<QnaVO> pt, String member_id) {
		int amount = qDao.getAmountForMember(member_id);
		pt.setAmount(amount);
		if(amount ==0) {
			return null;
		}else {
		List<QnaVO> list = qDao.listForMember(pt,member_id);
		pt.setList(list);
		
		list = pt.getList();
		for(int i=0; i<list.size(); i++) {
			int boad_no = pt.getList().get(i).getBoard_no();
			int item_no = bDao.selectItem_no(boad_no);
			pt.getList().get(i).setItem_no(item_no);
			String file_name = fDao.getFile(item_no).get(0);
			pt.getList().get(i).setFile_name(file_name);
			String item_name = iDao.getItem_name(item_no);
			pt.getList().get(i).setItem_name(item_name);
		}
		
		return pt;
		}
	}
	@Override
	public QnaVO updateUI(int qna_no) {
		// TODO Auto-generated method stub
		return qDao.updateUI(qna_no);
	}
	@Override
	public void update(QnaVO vo) {
		qDao.update(vo);
		
	}

	@Override
	public void delete(int qna_no) {
		System.out.println(qna_no);
		qDao.delete(qna_no);
		
	}

}
