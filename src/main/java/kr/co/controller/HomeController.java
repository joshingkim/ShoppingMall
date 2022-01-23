package kr.co.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.ItemVO;
import kr.co.domain.OrdersVO;
import kr.co.service.ItemService;

@Controller
@RequestMapping("")
public class HomeController {

	@Inject
	private ItemService iService;
	
	@RequestMapping(value = "")
	public String home(Model model) {
		
		List<OrdersVO> list = iService.listForRank();
		
		model.addAttribute("list", list);
		
		return "home";
	}
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String home1() {
		
		return "home";
	}
	
	@RequestMapping(value = "/404page", method = RequestMethod.GET)
	public void errorPage() {
		
	
	}
	
}
