package kr.co.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	
}
