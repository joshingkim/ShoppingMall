package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.CategoryVO;
import kr.co.domain.PageTO;
import kr.co.service.CategoryService;

@Controller
@RequestMapping("category")
public class CategoryController {

	@Inject
	private CategoryService cService;
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertUI() {
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(CategoryVO vo) {
		
		cService.insert(vo);
			
		
		return "redirect:/category/list/";
	}
	
	@RequestMapping(value = "/list/{curPage}", method = RequestMethod.GET)
	public String list(@PathVariable("curPage") int curPage, PageTO<CategoryVO> pt, Model model) {
		pt.setCurPage(curPage);
		
		pt = cService.list(pt);
		
		model.addAttribute("pt", pt);
		
		return "category/list";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(PageTO<CategoryVO> pt, Model model) {
		pt = cService.list(pt);
		
		model.addAttribute("pt", pt);
	}
}
