package kr.co.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.domain.ExchangeRefundVO;
import kr.co.domain.ItemVO;
import kr.co.domain.OrdersVO;
import kr.co.service.ExchangeRefundService;
import kr.co.service.FileService;
import kr.co.service.ItemService;
import kr.co.service.OrderService;

@Controller
@RequestMapping("exchangeRefund")
public class ExchangeRefundController {

	@Autowired
	private ExchangeRefundService exService;
	
	@Autowired
	private OrderService oService;
	
	@Autowired
	private ItemService iService;
	
//	@Autowired
//	private FileService fService;
	
	@RequestMapping(value="/requestpage", method=RequestMethod.GET)
	public void requestpage(int order_id, Model model) {
		OrdersVO ovo = oService.checkorder(order_id);
		int item_no = ovo.getItem_no();
		model.addAttribute("ovo", ovo);
		
		ItemVO ivo = iService.read(item_no);
		model.addAttribute("ivo", ivo);
		
		ExchangeRefundVO exList = exService.exList(order_id);
		model.addAttribute("exList", exList);
		
	}
	@RequestMapping(value="/insertExRefund", method = RequestMethod.POST)
	public String insertExRefund(ExchangeRefundVO exvo) {
		
		exService.insertExRefund(exvo);
		String member_id = exvo.getMember_id();
		return "redirect:/order/detail/"+member_id;
	}
}