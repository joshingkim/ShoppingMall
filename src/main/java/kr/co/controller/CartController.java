package kr.co.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.domain.CartVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;
import kr.co.service.CartService;

@Controller
@RequestMapping("cart")
public class CartController {

		@Inject
		private CartService cService;
		
		@RequestMapping(value = "/updateQuantity", method = RequestMethod.POST)
		@ResponseBody
		public String updateQuantity(CartVO vo) {
			cService.updateQuantity(vo);
			return "null";
		}
		
		@RequestMapping(value = "/delete", method = RequestMethod.POST)
		@ResponseBody
		public int delete(@RequestParam int cart_no) {
			int i = cService.delete(cart_no);
			
			return i;
		}

		@RequestMapping(value = "/update", method = RequestMethod.POST)
		public String update(@RequestParam int[] cart_quantity, @RequestParam int[] item_no, HttpSession session) {
			String member_id = (String) session.getAttribute("member_id");
			for(int i = 0; i < item_no.length; i++) {
				CartVO vo = new CartVO();
				vo.setMember_id(member_id);
				vo.setCart_quantity(cart_quantity[i]);
				vo.setItem_no(item_no[i]);
				cService.changeQuantity(vo);
			}
			return "redirect:/cart/read";
		}
		
		@RequestMapping(value = "/read/{member_id}/{curPage}", method = RequestMethod.GET)
		public String list(@PathVariable("curPage") int curPage, @PathVariable("member_id") String member_id, PageTO<CartVO> pt, Model model) {
			pt.setCurPage(curPage);
			Map<String, Object> map = new HashMap<String, Object>();
			pt = cService.readCart(pt, member_id);
			List<ItemVO> ilist = cService.getDiscount(member_id);
			map.put("pt", pt);
			map.put("list", pt.getList());
			map.put("count", pt.getList().size());
			map.put("ilist", ilist);
			
			model.addAttribute("map", map);
			model.addAttribute("member_id", pt.getList().get(0).getMember_id());
			
			return "cart/read";
		}
		
		@RequestMapping(value = "/read/{member_id}", method = RequestMethod.GET)
		public String list(@PathVariable("member_id") String member_id, PageTO<CartVO> pt, Model model) {
			pt.setCurPage(1);
			Map<String, Object> map = new HashMap<String, Object>();
			pt = cService.readCart(pt, member_id);
			List<ItemVO> ilist = cService.getDiscount(member_id);
			map.put("pt", pt);
			map.put("list", pt.getList());
			map.put("count", pt.getList().size());
			map.put("ilist", ilist);
			
			model.addAttribute("map", map);
			model.addAttribute("member_id", pt.getList().get(0).getMember_id());
			
			return "cart/read";
		}
		
		@RequestMapping(value = "/insert/{member_id}", method = RequestMethod.POST)
		public ResponseEntity<String> insert(@PathVariable("member_id")String member_id, CartVO vo) {
			ResponseEntity<String> entity = null;
			try {
				String checkCart = cService.countCart(vo);
				System.out.println(vo.getCart_price());
				System.out.println(vo.getItem_no());
				System.out.println(vo.getMember_id());
				entity = new ResponseEntity<String>(checkCart, HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
			}
			return entity;
		}
	
}
