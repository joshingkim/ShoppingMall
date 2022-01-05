package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.CategoryVO;
import kr.co.domain.OrderVO;
import kr.co.service.CategoryService;
import kr.co.service.OrderService;

@Controller
@RequestMapping("order")
public class OrderController {
	
	@Inject 
	private OrderService oService;
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertui(){
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(OrderVO vo) {
		
		oService.insert(vo);
		
		try {
			Thread.sleep(100);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/order/detail";
	}
	
	
	
	
}
