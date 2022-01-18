package kr.co.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.PageTO;
import kr.co.domain.QnaVO;
import kr.co.service.BoardService;
import kr.co.service.QnaService;

@Controller
@RequestMapping("qna")
public class QnaController {
	
	@Autowired
	private QnaService qService;
	
//	@Inject
//	private BoardService bService;
	
	@RequestMapping(value="/answer", method=RequestMethod.POST)
	public void answer(QnaVO vo) {
		qService.answer(vo);
		
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public void insertui() {
	}

	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public void insert(QnaVO qvo) {
		qService.insert(qvo);
		
//		int item_no = bService.selectItem_no(qvo.getBoard_no());
		
//		return "redirect:/item/read/"+item_no;
	}
	
	@RequestMapping(value="/list/{board_no}/{curPage}", method=RequestMethod.GET)
	public ResponseEntity<PageTO<QnaVO>> list(@PathVariable("curPage")int curPage, @PathVariable("board_no")int board_no, PageTO<QnaVO> qpt){
		ResponseEntity<PageTO<QnaVO>> entity = null;
		qpt.setCurPage(curPage);
		try {
			List<QnaVO> qlist = qService.list(qpt, board_no);
			qpt.setList(qlist);
			entity = new ResponseEntity<PageTO<QnaVO>>(qpt,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<PageTO<QnaVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	

}
