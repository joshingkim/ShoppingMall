package kr.co.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.PageTO;
import kr.co.domain.ReviewVO;
import kr.co.repository.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Inject
	private ReviewDAO rDao;

	@Override
	public void insert(Map<String, Object> map) {
		rDao.insert(map);

	}

	@Override
	public PageTO<ReviewVO> getRepliesPage(PageTO<ReviewVO> pt, int board_no) {
		int amount = rDao.getAmountReplyByBno(board_no);
		pt.setAmount(amount);
		
		List<ReviewVO> list = rDao.getRepliesPage(pt, board_no);
		pt.setList(list);
				
		return pt;
	}

	@Override
	public List<ReviewVO> getAllReplies(int board_no) {
		
		return rDao.getAllReplies(board_no);
	}

	@Override
	public void updateReview(ReviewVO rvo) {
		rDao.updateReview(rvo);		
	}

	@Override
	public void deleteReview(int review_no) {
		rDao.deleteReview(review_no);
	}

}
