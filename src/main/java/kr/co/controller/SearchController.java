package kr.co.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.domain.ItemVO;
import kr.co.domain.SearchVO;
import kr.co.service.ItemService;
import kr.co.service.SearchService;

@Controller
@RequestMapping("search")
public class SearchController {

	@Autowired
	private SearchService sService;

	@RequestMapping(value = "/rankinglist", method = RequestMethod.GET)
	public ResponseEntity<List<SearchVO>> rankinglist() {
		ResponseEntity<List<SearchVO>> entity = null;

		try {
			List<SearchVO> rankinglist = sService.rankinglist();
			entity = new ResponseEntity<List<SearchVO>>(rankinglist, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<SearchVO>>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ResponseEntity<List<ItemVO>> search(String item_category, String keyword, HttpSession session, Model model) {
		ResponseEntity<List<ItemVO>> entity = null;
//		String member_id = (String) session.getAttribute("login");
		Map<String, Object> map = new HashMap<>();
		map.put("keyword", keyword);
		map.put("item_category", item_category);
		String item_name = (String) map.get("keyword");
		map.put("item_name", item_name);
		
		try {
			List<ItemVO> list = sService.search(map);
			model.addAttribute("list", list);
			entity = new ResponseEntity<List<ItemVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<ItemVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(SearchVO svo) {
		sService.insert(svo);
		return "redirect:/search/search";

	}

}
