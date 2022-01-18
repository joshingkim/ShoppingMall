package kr.co.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.QnaVO;
import kr.co.service.BoardService;
import kr.co.service.QnaService;

@Controller
@RequestMapping("qna")
public class QnaController {
	
	@Autowired
	private QnaService qService;
	
	@Inject
	private BoardService bService;
	
	@RequestMapping(value="/answer", method=RequestMethod.POST)
	public String answer(QnaVO vo) {
		qService.answer(vo);
		return "redirect:/qna/list";
		
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public void insertui() {
	}

	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String insert(QnaVO qvo) {
		qService.insert(qvo);
		
		int item_no = bService.selectItem_no(qvo.getBoard_no());
		
		return "redirect:/item/read/"+item_no;
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void list(Model model){
		List<QnaVO> qvo = qService.list();
		model.addAttribute("qvo", qvo);
	}
	

}
