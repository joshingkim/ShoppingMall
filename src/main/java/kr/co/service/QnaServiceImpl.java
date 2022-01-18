package kr.co.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.domain.PageTO;
import kr.co.domain.QnaVO;
import kr.co.repository.QnaDAO;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDAO qDao;

	@Override
	public void insert(QnaVO qvo) {
		qDao.insert(qvo);

	}

	@Override
	public List<QnaVO> list(PageTO<QnaVO> qpt, int board_no) {
		int amount = qDao.getAmount(board_no);
		qpt.setAmount(amount);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("qpt", qpt);
		map.put("board_no", board_no);
		return qDao.list(map);
	}

	@Override
	public void answer(QnaVO vo) {
		qDao.answer(vo);

	}

}
