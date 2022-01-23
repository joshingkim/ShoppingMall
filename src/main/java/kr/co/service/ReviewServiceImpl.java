package kr.co.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.BoardVO;
import kr.co.domain.PageTO;
import kr.co.domain.ReviewVO;
import kr.co.repository.BoardDAO;
import kr.co.repository.FileDAO;
import kr.co.repository.ItemDAO;
import kr.co.repository.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Inject
	private ReviewDAO rDao;

	@Inject
	private BoardDAO bDao;
	
	@Inject
	private FileDAO fDao;
	
	@Inject
	private ItemDAO iDao;
	
	@Override
	public void insert(Map<String, Object> map) {
		rDao.insert(map);

	}
	@Transactional
	@Override
	public PageTO<ReviewVO> getRepliesPage(PageTO<ReviewVO> pt, int board_no) {
		int amount = rDao.getAmountReplyByBno(board_no);
		pt.setAmount(amount);
		if(amount ==0) {
			return null;
		}else {
		List<ReviewVO> list = rDao.getRepliesPage(pt, board_no);
		pt.setList(list);

		return pt;
		}
	}
	@Transactional
	@Override
	public PageTO<ReviewVO> getMyRepliesPage(PageTO<ReviewVO> pt, String member_id) {
		int amount = rDao.getMyAmountReplyByBno(member_id);
		pt.setAmount(amount);
		if(amount ==0) {
			return null;
		}else {
		List<ReviewVO> list = rDao.getMyRepliesPage(pt, member_id);
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
	public List<ReviewVO> getAllReplies(int board_no) {

		return rDao.getAllReplies(board_no);
	}
	
	@Override
	public List<ReviewVO> getMyAllReplies(String member_id) {
		// TODO Auto-generated method stub
		return rDao.getMyAllReplies(member_id);
	}

	@Override
	public void updateReview(ReviewVO rvo) {
		rDao.updateReview(rvo);
	}

	@Override
	public void deleteReview(int review_no) {
		rDao.deleteReview(review_no);
	}
	
	@Transactional
	@Override
	public PageTO<ReviewVO> listOfAll(PageTO<ReviewVO> pt) {
		int amount = rDao.getAmount();
		pt.setAmount(amount);
		if(amount ==0) {
			return null;
		}else {
		List<ReviewVO> list = rDao.listOfAll(pt);
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





}
