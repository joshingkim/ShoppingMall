package kr.co.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.SearchVO;
import kr.co.service.SearchService;

@Controller
@RequestMapping("search")
public class SearchController {

	@Autowired
	private SearchService sService;
	
	@RequestMapping(value="/insert/{item_category}/{keyword}", method = RequestMethod.GET)
	public void insert(@PathVariable("item_category")String item_category, @PathVariable("keyword")String keyword, HttpSession session) {
		String member_id = (String) session.getAttribute("login");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member_id", member_id);
		map.put("item_category", item_category);
		map.put("keyword", keyword);
		sService.insert(map);
	}
	@RequestMapping(value="/searchlist/{item_category}/{keyword}", method = RequestMethod.GET)
	public void searchlist(@PathVariable("item_category")String item_category, @PathVariable("keyword")String keyword) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item_category", item_category);
		map.put("keyword", keyword);
		sService.searchlist(map);
	}
	
}
