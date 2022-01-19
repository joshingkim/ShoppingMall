package kr.co.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.domain.ItemVO;
import kr.co.domain.SearchPageTO;
import kr.co.domain.SearchVO;
import kr.co.service.FileService;
import kr.co.service.ItemService;
import kr.co.service.SearchService;

@Controller
@RequestMapping("search")
public class SearchController {

	@Autowired
	private FileService fService;
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
	@RequestMapping(value = "/searchlist/{keyword}/{item_category}/{curPage}", method = RequestMethod.GET)
	public String searchlist(@PathVariable("keyword")String keyword,@PathVariable("item_category")String item_category,@PathVariable("curPage")int curPage, SearchPageTO<ItemVO> spt, Model model) {
		model.addAttribute("spt", spt);
		spt.setCurPage(curPage);
		return "/search/searchlist";
		
	}
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(SearchVO svo, SearchPageTO<ItemVO> spt, Model model) {
		sService.search(svo);
		model.addAttribute("svo", svo);
		
		spt = sService.searchlist(spt);
		List<ItemVO> list = new ArrayList<ItemVO>();
		for(int i = 0; i<spt.getList().size();i++) {
			int item_no = spt.getList().get(i).getItem_no();
			String item_name = spt.getList().get(i).getItem_name();
			String file_name = fService.getFile(item_no).get(0);
			list.add(new ItemVO(item_no,item_name,file_name));
		}
		spt.setList(list);
		spt.setItem_category(svo.getItem_category());
		spt.setKeyword(svo.getKeyword());
			model.addAttribute("spt", spt);
		return "/search/searchlist";
	}
}
