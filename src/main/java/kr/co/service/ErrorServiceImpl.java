package kr.co.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.ErrorVO;
import kr.co.repository.ErrorDAO;


@Service
public class ErrorServiceImpl implements ErrorService{

	@Inject
	private ErrorDAO eDao;
	
	@Override
	public void insert(Map<String, Object> map) {
		eDao.insert(map);
	}

	@Override
	public List<ErrorVO> list() {
		// TODO Auto-generated method stub
		return eDao.list();
	}

	@Override
	public void update(int error_no) {
		
		eDao.update(error_no);
	}

}
