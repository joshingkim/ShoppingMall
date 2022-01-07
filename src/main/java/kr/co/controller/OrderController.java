package kr.co.controller;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		return "redirect:/order/detail/"+vo.getOrder_no();
	}
	
	@RequestMapping(value = "/detail/{order_no}", method = RequestMethod.GET)
	public String detail(@PathVariable("order_no") int order_no, Model model) {
		
		OrderVO vo = oService.detail(order_no);
		
		model.addAttribute("vo", vo);
		
		return "order/detail";
	}
	

	
	
	
	
}
