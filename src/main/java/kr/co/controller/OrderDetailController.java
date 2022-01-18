package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.domain.OrderDetailVO;
import kr.co.domain.OrderVO;
import kr.co.service.OrderDetailService;
import kr.co.service.OrderService;

@Controller
/* @RequestMapping("detail") */
public class OrderDetailController {
	
	@Inject
	private OrderDetailService odService;
	
	
	@RequestMapping(value = "/detail/check", method = RequestMethod.POST)
	@ResponseBody
	public int update(int order_detail_code) {
		odService.update(order_detail_code); 
		return order_detail_code;
	}
	

	
	
	
}
