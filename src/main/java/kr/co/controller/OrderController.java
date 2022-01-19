package kr.co.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.domain.CartVO;
import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;
import kr.co.domain.MemberVO;
import kr.co.domain.OrderDetailVO;
import kr.co.domain.OrderVO;
import kr.co.domain.OrdersVO;
import kr.co.service.CartService;
import kr.co.service.CategoryService;
import kr.co.service.ItemService;
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

	@Inject
	private ItemService iService;

	@RequestMapping(value = "/insert/{member_id}", method = RequestMethod.GET)
	public String insertui(@PathVariable("member_id") String member_id, Model model) {

		MemberVO mvo = mService.read(member_id);
		model.addAttribute("mvo", mvo);

		List<ItemVO> ilist = new ArrayList<ItemVO>();

		List<CartVO> clist = cService.list(new CartVO(0, member_id, 0, 0, 0, null, 0));
		int sum = 0;
		int total = 0;
		for (int i = 0; i < clist.size(); i++) {
			int item_no = clist.get(i).getItem_no();

			ItemVO iVo = iService.read(item_no);
			ilist.add(iVo);
			int quantity = clist.get(i).getCart_quantity();
			int price = (iVo.getItem_price() * (100 - iVo.getDiscount_percentage())/100);
			sum = sum + (price * quantity);
			total = quantity + total;
		}
		model.addAttribute("total", total);
		model.addAttribute("sum", sum);
		model.addAttribute("clist", clist);
		model.addAttribute("ilist", ilist);

		return "order/insert";
	}

	@RequestMapping(value = "/insert/{member_id}", method = RequestMethod.POST)
	public String insert(MemberVO vo, String ilist, String clist, String receiver) throws Exception{

		ilist = ilist.replaceAll("'", "\"");
		clist = clist.replaceAll("'", "\"");
		ObjectMapper mapper = new ObjectMapper();
		List<ItemVO> itemlist = mapper.readValue(ilist, new TypeReference<ArrayList<ItemVO>>() {
		});
		List<CartVO> cartlist = mapper.readValue(clist, new TypeReference<ArrayList<CartVO>>() {
		});
		List<OrdersVO> orderList = new ArrayList<OrdersVO>();
		for (ItemVO m : itemlist) {
			for (CartVO c : cartlist) {
				if (c.getItem_no() == m.getItem_no()) {

					orderList.add(new OrdersVO(0, m.getItem_no(), vo.getMember_id(), c.getCart_quantity(),
							c.getCart_price(), vo.getMember_address(),
							vo.getMember_detail_address(), vo.getMember_phone_number(), "배송 준비중", receiver, null));
					/* (m.getItem_price() * (100 - m.getDiscount_percentage()) / 100) */
					System.out.println(c.getCart_price());
				}
			}
		}
		System.out.println(orderList);
		oService.insert(orderList);
		return "redirect:/order/detail/"+vo.getMember_id();
	}
	
	@RequestMapping(value = "/detail/{member_id}", method = RequestMethod.GET)
	public String detail(@PathVariable("member_id") String member_id, Model model) {
		
		MemberVO mvo = mService.read(member_id);
		model.addAttribute("mvo", mvo);
		
		List<OrdersVO> olist = oService.list(member_id);
		model.addAttribute("olist", olist);
		
		return "order/detail";
	}
	
	

	@RequestMapping(value = "/detail/{order_item_no}/{order_detail_no}", method = RequestMethod.GET)
	public String detail(@PathVariable("order_item_no") int order_item_no,
			@PathVariable("order_detail_no") int order_detail_no, Model model) {

		OrderVO vo = oService.detail(order_item_no);
		OrderDetailVO odvo = odService.read(order_detail_no);

		model.addAttribute("vo", vo);
		model.addAttribute("odvo", odvo);

		return "order/detail";
	}

}
