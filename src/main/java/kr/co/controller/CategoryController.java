package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.CategoryVO;
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
			
		
		return "redirect:/board/list/";
	}
	
}
