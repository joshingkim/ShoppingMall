package kr.co.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.ExchangeRefundVO;
import kr.co.domain.OrdersVO;
import kr.co.service.ExchangeRefundService;
import kr.co.service.OrderService;

@Controller
@RequestMapping("exchangeRefund")
public class ExchangeRefundController {

	@Autowired
	private ExchangeRefundService exService;
	
	@Autowired
	private OrderService oService;
	
	@RequestMapping(value="/requestpage", method=RequestMethod.GET)
	public void requestpage(int order_id, Model model) {
		OrdersVO ovo = oService.checkorder(order_id);
		model.addAttribute("ovo", ovo);
	}
	@RequestMapping(value="/insertExRefund", method = RequestMethod.POST)
	public String insertExRefund(ExchangeRefundVO exvo) {
		
		exService.insertExRefund(exvo);
		String member_id = exvo.getMember_id();
		return "redirect:/order/memberdetail/"+member_id;
	}
}