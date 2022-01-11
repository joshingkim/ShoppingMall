package kr.co.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.ItemVO;
import kr.co.service.ItemService;
import kr.co.service.SearchService;

@Controller
@RequestMapping("search")
public class SearchController {

	@Autowired
	private SearchService sService;
	
	@RequestMapping(value="/search", method = RequestMethod.GET)
	public void search(String member_id,String item_category,String keyword, HttpSession session, Model model) {
//		String member_id = (String) session.getAttribute("login");
		Map<String, Object> map = new HashMap<>();
		
		map.put("member_id", member_id);
		map.put("keyword", keyword);
		map.put("item_category", item_category);
		String item_name = (String) map.get("keyword");
		map.put("item_name", item_name);
		List<ItemVO> list = sService.search(map);
		model.addAttribute("list", list);
	}
//	@RequestMapping(value="/list/{item_category}/{keyword}", method = RequestMethod.GET)
//	public void list(@PathVariable("item_category")String item_category, @PathVariable("keyword")String keyword, Model model) {
//		System.out.println(list);
//		model.addAttribute("list", list);
//	}
	
}
