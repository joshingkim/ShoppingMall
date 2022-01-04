package kr.co.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.ExchangeRefundVO;
import kr.co.repository.ExchangeRefundDAO;
import kr.co.service.ExchangeRefundService;

@Controller
@RequestMapping("exchangeRefund")
public class ExchangeRefundController {

	@Autowired
	private ExchangeRefundService exService;
	
	@Autowired
//	private OrderService oService;
	
	@RequestMapping(value="/insertui{order_no}", method=RequestMethod.GET)
	public String insertui(@PathVariable("order_no")int order_no, Model model) {
		
//		OrderVO ovo = oService.checkorder(order_no);
//		model.addAttribute("ovo", ovo);
		
		return "/insert{order_no}";
	}
	@RequestMapping(value="/insert", method = RequestMethod.POST)
	public String insert(@PathVariable("order_no")int order_no, ExchangeRefundVO exvo) {
		
		exService.insert(exvo);
		return "redirect/order/{order_no}";
	}
}