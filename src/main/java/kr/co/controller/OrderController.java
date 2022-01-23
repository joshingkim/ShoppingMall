package kr.co.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
import kr.co.domain.OrdersVO;
import kr.co.domain.PageTO;
import kr.co.domain.ReviewVO;
import kr.co.service.CartService;
import kr.co.service.CategoryService;
import kr.co.service.ItemService;
import kr.co.service.MemberService;
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

	@Inject
	private ItemService iService;
	
	

	@RequestMapping(value = "/insert/{member_id}", method = RequestMethod.GET)
	public String insertui(@PathVariable("member_id") String member_id, Model model) {

		MemberVO mvo = mService.read(member_id);
		model.addAttribute("mvo", mvo);

		List<ItemVO> ilist = new ArrayList<ItemVO>();

		List<CartVO> clist = cService.list(member_id);
		int sum = 0;
		int total = 0;
		int item_no = 0;
		for (int i = 0; i < clist.size(); i++) {
			item_no = clist.get(i).getItem_no();

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
		model.addAttribute("item_no", item_no);

		return "order/insert";
	}
	
	@RequestMapping(value = "/insert/{member_id}/{item_no}", method = RequestMethod.GET)
	public String insertui(@PathVariable("member_id") String member_id,@PathVariable("item_no") int item_no,Model model) {

		MemberVO mvo = mService.read(member_id);
		model.addAttribute("mvo", mvo);

		List<ItemVO> ilist = new ArrayList<ItemVO>();
		int sum = 0;
		ItemVO iVo = iService.read(item_no);
		ilist.add(iVo);
		int quantity = 1;
		int price = (iVo.getItem_price() * (100 - iVo.getDiscount_percentage())/100);
		sum = price * quantity;
			
		model.addAttribute("total", 1);
		model.addAttribute("sum", sum);
		model.addAttribute("ilist", ilist);
		model.addAttribute("item_no", item_no);

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
							m.getItem_price()*c.getCart_quantity(), vo.getMember_address(),
							vo.getMember_detail_address(), vo.getMember_phone_number(), "상품 준비 중", receiver, null));
					/* (m.getItem_price() * (100 - m.getDiscount_percentage()) / 100) */
				}
			}
		}
		String date = oService.insert(orderList);
		
		return "redirect:/order/mdetail/"+vo.getMember_id()+"/"+orderList.size();
	}
	
	@RequestMapping(value = "/insert/{member_id}/{item_no}", method = RequestMethod.POST)
	   public String insert(MemberVO vo, String ilist, String receiver, @PathVariable("item_no") int item_no) throws Exception{

	      ilist = ilist.replaceAll("'", "\"");
	      ObjectMapper mapper = new ObjectMapper();
	      List<ItemVO> itemlist = mapper.readValue(ilist, new TypeReference<ArrayList<ItemVO>>() {
	      });
	      
	      List<OrdersVO> orderList = new ArrayList<OrdersVO>();
	      for (ItemVO m : itemlist) {
	         orderList.add(new OrdersVO(0, m.getItem_no(), vo.getMember_id(), 1,
	               m.getItem_price(), vo.getMember_address(),
	               vo.getMember_detail_address(), vo.getMember_phone_number(), "상품 준비 중", receiver, null));
	      }
	      String date = oService.insert(orderList);
	      
	      return "redirect:/order/mdetail/"+vo.getMember_id()+"/"+orderList.size();
	   }
	
	@RequestMapping(value = "/mdetail/{member_id}/{count}", method = RequestMethod.GET)
	public String mdetail(@PathVariable("member_id") String member_id,@PathVariable("count") int count , Model model) {
		OrdersVO vo = new OrdersVO();
		vo.setMember_id(member_id);
		List<OrdersVO> olist = oService.mlist(vo, count);
		model.addAttribute("olist", olist);
		
		return "order/mdetail";
	}
	
	@RequestMapping(value="/orderpage/{order_id}", method=RequestMethod.GET)
	public String requestpage(@PathVariable("order_id") int order_id, Model model) {
		OrdersVO ovo = oService.checkorder(order_id);
		int item_no = ovo.getItem_no();
		model.addAttribute("ovo", ovo);
		
		ItemVO ivo = iService.read(item_no);
		model.addAttribute("ivo", ivo);
		return "order/orderpage";
	}
	
	@RequestMapping(value = "/detail/{member_id}", method = RequestMethod.GET)
	public String detail(PageTO<OrdersVO> pt,@PathVariable("member_id") String member_id, Model model) {
		
		pt.setCurPage(1);
		
		pt = oService.list(pt,member_id);
		
		model.addAttribute("pt", pt);
		model.addAttribute("member_id", member_id);
		
		return "order/memberdetail";
	}
	
	@RequestMapping(value = "/detail/{member_id}/{curPage}", method = RequestMethod.GET)
	public String detail(PageTO<OrdersVO> pt,@PathVariable("curPage") int curPage,@PathVariable("member_id") String member_id, Model model) {
		
		pt.setCurPage(curPage);
		
		pt = oService.list(pt, member_id);
		
		model.addAttribute("pt", pt);
		model.addAttribute("member_id", member_id);
		
		return "order/memberdetail";
	}
	
	@RequestMapping(value = "/detailAll", method = RequestMethod.GET)
	public String detail(PageTO<OrdersVO> pt,Model model) {
		pt.setCurPage(1);
		
		pt = oService.list_manager(pt);
		
		model.addAttribute("pt", pt);
		
		return "order/managerdetail";
	}
	
	@RequestMapping(value = "/detailAll/{curPage}", method = RequestMethod.GET)
	public String detail(@PathVariable("curPage") int curPage,PageTO<OrdersVO> pt,Model model) {
		pt.setCurPage(curPage);
		
		pt = oService.list_manager(pt);
		
		model.addAttribute("pt", pt);
		
		return "order/managerdetail";
	}
	
	@RequestMapping(value = "/status/{status}/{order_id}", method = RequestMethod.POST)
	public ResponseEntity<List<OrdersVO>> status(@PathVariable("status") String status, @PathVariable("order_id") int order_id) {
		ResponseEntity<List<OrdersVO>> entity = null;
		System.out.println(status);
		OrdersVO vo = new OrdersVO(order_id, 0, null, 0, 0, null, null, null, status, null, null);
		try {
			oService.status(vo);
			entity = new ResponseEntity<List<OrdersVO>>(HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<OrdersVO>>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}
	


}
