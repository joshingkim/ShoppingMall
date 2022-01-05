package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.BoardVO;
import kr.co.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {

	@Inject
	private BoardService bService;

		
	
	
	@RequestMapping(value = "/read/{board_no}/{curPage}", method = RequestMethod.GET)
	public String read(@PathVariable("board_no") int board_no,
			@PathVariable("curPage") int curPage, Model model) {
		BoardVO vo = bService.read(board_no);
		
		model.addAttribute("vo", vo);
		model.addAttribute("curPage", curPage);
		
		return "board/read";
	}
	
	
	@RequestMapping(value = "/read/{board_no}", method = RequestMethod.GET)
	public String read(@PathVariable("board_no") int board_no, Model model) {
	
		BoardVO vo = bService.read(board_no);
		
		model.addAttribute("vo",vo);
		model.addAttribute("curPage", 1);
		return "board/read";
	}

	
	
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(BoardVO vo) {
		
	 	bService.insert(vo);
		
		return "redirect:/board/read/"+vo.getBoard_no();
		
	}
	
	
	@RequestMapping(value = "/insertui" , method = RequestMethod.GET )
	public String insertui() {
		
		return "board/insert";
	}
}
