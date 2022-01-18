package kr.co.controller;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.domain.CartVO;
import kr.co.domain.CategoryVO;
import kr.co.domain.MemberVO;
import kr.co.domain.OrderDetailVO;
import kr.co.domain.OrderVO;
import kr.co.service.CartService;
import kr.co.service.CategoryService;
import kr.co.service.MemberService;
import kr.co.service.OrderDetailService;
import kr.co.service.OrderService;

@Controller
@RequestMapping("order")
public class OrderController {
	
	@Inject 
	private OrderService oService;
	
	@Inject
	private MemberService mService;
	
	@Autowired
	private CartService cService;
	
	@Autowired
	private OrderDetailService odService;
	
	@RequestMapping(value = "/insert/{member_id}", method = RequestMethod.GET)
	public String insertui(@PathVariable("member_id") String member_id, Model model){
		
		MemberVO mvo = mService.read(member_id);
		model.addAttribute("mvo", mvo);

		/* CartVO cvo = cService.read(); 
		model.addAttribute("cvo", cvo); */
		
		return "order/insert";
	} 
	
	@RequestMapping(value = "/insert/{member_id}", method = RequestMethod.POST)
	public String insert(@PathVariable("member_id") String member_id, OrderVO vo, OrderDetailVO odvo) {
		
		oService.insert(vo, odvo);
		
		
		return "redirect:/order/detail/"+vo.getOrder_item_no()+"/"+odvo.getOrder_detail_no();
	}
	
	@RequestMapping(value = "/detail/{order_item_no}/{order_detail_no}", method = RequestMethod.GET)
	public String detail(@PathVariable("order_item_no") int order_item_no, @PathVariable("order_detail_no") int order_detail_no, Model model) {
		
		OrderVO vo = oService.detail(order_item_no);
		OrderDetailVO odvo = odService.read(order_detail_no);
		
		model.addAttribute("vo", vo);
		model.addAttribute("odvo", odvo); 
		
		return "order/detail";
	}
	

	
	
	
	
}
