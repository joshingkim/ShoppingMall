package kr.co.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.domain.CartVO;
import kr.co.service.CartService;

@Controller
@RequestMapping("cart")
public class CartController {

		@Inject
		private CartService cService;
		
		@RequestMapping(value = "/read", method = RequestMethod.GET)
		public ModelAndView read(/*HttpSession session,*/ String member_id,  ModelAndView mav) {
//			String member_id = (String) session.getAttribute("member_id");
			Map<String, Object> map = new HashMap<String, Object>();
			List<CartVO> list = cService.readCart(member_id);
			int sumMoney = cService.sumMoney(member_id);
			map.put("list", list);
			map.put("count", list.size());
			map.put("sumMoney", sumMoney);
			mav.setViewName("/cart/read");
			mav.addObject("map", map);
			return mav;
		}
		
		@RequestMapping(value = "/insert", method = RequestMethod.GET)
		public String insert(@ModelAttribute CartVO vo, HttpSession session, String member_id) {
//			String member_id = (String) session.getAttribute(member_id);
			vo.setMember_id(member_id);
			int count = cService.countCart(vo.getItem_no(), member_id);
			if (count == 0) {
				cService.insert(vo);
			} else {
				cService.update(vo);
			}
			return "redirect:/cart/read/"+vo.getMember_id();
		}
	
}
