package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;
import kr.co.service.ItemService;

@Controller
@RequestMapping("item")
public class ItemController{

	@Inject
	private ItemService iService;
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertUI() {
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(ItemVO vo) {
		
		iService.insert(vo);
		
		return "redirect:/item/read";
	}
	
}
 