package kr.co.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.domain.PageTO;
import kr.co.domain.ReviewVO;
import kr.co.service.ReviewService;

@RestController
@RequestMapping("/replies")
public class ReviewController {

	@Inject
	private ReviewService rService;

	@RequestMapping(value = "{review_no}", method = RequestMethod.DELETE)
	public ResponseEntity<String> deleteReview(@PathVariable("review_no") int review_no) {
		ResponseEntity<String> entity = null;
		try {

			rService.deleteReview(review_no);

			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL", HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@RequestMapping(value = "{review_no}", method = RequestMethod.PUT)
	public ResponseEntity<String> updateReview(@PathVariable("review_no") int review_no,
			@RequestBody Map<String, Object> map) {

		ResponseEntity<String> entity = null;

		try {
			String review_content = (String) map.get("review_content");

			int review_grade = Integer.parseInt(String.valueOf(map.get("review_grade")));

			ReviewVO rvo = new ReviewVO(review_no, 0, null, review_content, null, null, review_grade);

			rService.updateReview(rvo);

			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();

			entity = new ResponseEntity<String>("FAIL", HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@RequestMapping(value = "{board_no}", method = RequestMethod.GET)
	public List<ReviewVO> getAllReplies(@PathVariable("board_no") int board_no) {

		return rService.getAllReplies(board_no);
	}

	@RequestMapping(value = "{board_no}/{curPage}", method = RequestMethod.GET)
	public PageTO<ReviewVO> getRepliesPage(@PathVariable("board_no") int board_no,
			@PathVariable("curPage") int curPage) {

		PageTO<ReviewVO> pt = new PageTO<ReviewVO>(curPage);

		pt = rService.getRepliesPage(pt, board_no);

		return pt;
	}
	


	@RequestMapping(value = "", method = RequestMethod.POST)
	public ResponseEntity<String> insert(@RequestBody Map<String, Object> map) {
		ResponseEntity<String> entity = null;

		try {
			
			rService.insert(map);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL", HttpStatus.BAD_REQUEST);
		}

		return entity;

	}

}
