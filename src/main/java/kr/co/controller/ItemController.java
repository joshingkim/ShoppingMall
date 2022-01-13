package kr.co.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.BoardVO;
import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;
import kr.co.domain.QnaVO;
import kr.co.service.BoardService;
import kr.co.service.CategoryService;
import kr.co.service.ItemService;

@Controller
@RequestMapping("item")
public class ItemController {

	@Inject
	private ItemService iService;
	@Inject
	private CategoryService cService;
	@Inject 
	private BoardService bService;
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertUI(Model model) {
		
		List<CategoryVO> list = cService.categorylist();
		
		model.addAttribute("list", list);
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(ItemVO ivo, BoardVO bvo) {

		iService.insert(ivo,bvo);
		
		
		return "redirect:/item/read/" + ivo.getItem_no();
	}

	@RequestMapping(value = "/read/{item_no}", method = RequestMethod.GET)
	public String read(@PathVariable("item_no") int item_no, Model model) {
		ItemVO ivo = iService.read(item_no);
		
		model.addAttribute("ivo", ivo);
		
		int board_no = bService.selectBoard_no(item_no);
		
		BoardVO vo = bService.read(board_no);
		
		model.addAttribute("vo",vo);
		model.addAttribute("curPage", 1);

		List<QnaVO> qvo = bService.Qnalist(board_no);
		model.addAttribute("qvo", qvo);	
		
		return "item/read";
	}

	@RequestMapping(value = "/update/{item_no}", method = RequestMethod.GET)
	public String updateUI(@PathVariable("item_no") int item_no, Model model) {
		ItemVO vo = iService.updateUI(item_no);
		
		model.addAttribute("vo", vo);
		
		return "item/update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(ItemVO vo) {

		iService.update(vo);

		return "redirect:/item/read/" + vo.getItem_no();
	}
	
	@RequestMapping(value = "/list/{curPage}", method = RequestMethod.GET)
	public String list(@PathVariable("curPage") int curPage, PageTO<ItemVO> pt, Model model) {
		
		pt.setCurPage(curPage);
		
		pt = iService.list(pt);
		
		model.addAttribute("pt", pt);
		
		return "item/list";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(PageTO<ItemVO> pt, Model model) {
		pt = iService.list(pt);
		
		model.addAttribute("pt", pt);
	}
	@RequestMapping(value = "/delete/{item_no}", method = RequestMethod.GET)
	public String delete(@PathVariable("item_no") int item_no) {
		
		iService.delete(item_no);
		
		return "redirect:/item/list";
	}

}
