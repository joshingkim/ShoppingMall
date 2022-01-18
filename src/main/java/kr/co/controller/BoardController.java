package kr.co.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.BoardVO;
import kr.co.domain.QnaVO;
import kr.co.service.BoardService;
import kr.co.service.QnaService;

@Controller
@RequestMapping("board")
public class BoardController {

	@Inject
	private BoardService bService;
	
	@RequestMapping(value = "reviewinsert/{board_no}" , method = RequestMethod.GET)
	public String reviewinsert(@PathVariable("board_no") int board_no) {
	
		
		
		return "board/reviewinsert";
	}

	
	@RequestMapping(value = "/update/{board_no}/{curPage}", method = RequestMethod.POST)
	public String update(@PathVariable("board_no") int board_no, 
						@PathVariable("curPage") int curPage, 
						BoardVO vo) {
		vo.setBoard_no(board_no);
		
		bService.update(vo);
		
		return "redirect:/board/read/"+board_no+"/"+curPage;
	}
	
	@RequestMapping(value = "/updateui/{board_no}/{curPage}", method = RequestMethod.GET)
	public String updateui(@PathVariable("board_no") int board_no, 
							@PathVariable("curPage") int curPage, 
							Model model) {
		
		BoardVO vo = bService.updateUI(board_no);
		
		model.addAttribute("vo", vo);
		model.addAttribute("curPage", curPage);
		
		
		return "board/update";
	}
	
	
	@RequestMapping(value = "/read/{board_no}/{curPage}", method = RequestMethod.GET)
	public String read(@PathVariable("board_no") int board_no,
			@PathVariable("curPage") int curPage, Model model, HttpSession session) {
		BoardVO vo = bService.read(board_no);
		
		long update_time =0;
	      if(session.getAttribute("update_time" +board_no) !=null){
	         update_time =(long)session.getAttribute("update_time"+ board_no);   
	      }
	      long current_time =System.currentTimeMillis();
	      if(current_time - update_time > 60*1000){
	         bService.increaseViewcnt(board_no);
	         session.setAttribute("update_time"+board_no, current_time);
	      }
		
		model.addAttribute("vo", vo);
		model.addAttribute("curPage", curPage);
		
		List<QnaVO> qvo = bService.Qnalist(board_no);
		model.addAttribute("qvo", qvo);	
		
		return "board/read";
	}
	
	
	@RequestMapping(value = "/read/{board_no}", method = RequestMethod.GET)
	public String read(@PathVariable("board_no") int board_no, Model model) {
	
		BoardVO vo = bService.read(board_no);
		
		List<QnaVO> qvo = bService.Qnalist(board_no);
		model.addAttribute("qvo", qvo);		
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
