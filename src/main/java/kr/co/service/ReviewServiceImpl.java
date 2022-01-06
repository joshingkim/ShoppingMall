package kr.co.service;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.repository.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Inject
	private ReviewDAO rDao;

	@Override
	public void insert(Map<String, Object> map) {
		rDao.insert(map);

	}

}
