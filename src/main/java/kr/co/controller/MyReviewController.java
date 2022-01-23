package kr.co.controller;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.BoardVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;
import kr.co.domain.ReviewVO;
import kr.co.service.BoardService;
import kr.co.service.ReviewService;

@Controller
@RequestMapping("/Myreplies")
public class MyReviewController {

	@Inject
	private ReviewService rService;

	@RequestMapping(value = "/list/{member_id}", method = RequestMethod.GET)
	public String getMyAllReplies(@PathVariable("member_id") String member_id,PageTO<ReviewVO> pt, Model model) {
		
		pt.setCurPage(1);
		
		pt = rService.getMyRepliesPage(pt, member_id);
		
		model.addAttribute("pt", pt);
		
		return "review/Mylist";
	}
	
	@RequestMapping(value = "/list/{member_id}/{curPage}", method = RequestMethod.GET)
	public String getMyRepliesPage(@PathVariable("curPage") int curPage,@PathVariable("member_id") String member_id, PageTO<ReviewVO> pt, Model model) {

		pt.setCurPage(curPage);

		pt = rService.getMyRepliesPage(pt, member_id);
		
		model.addAttribute("pt", pt);
		
		return "review/Mylist";
	}
	
	@RequestMapping(value = "/listOfAll", method = RequestMethod.GET)
	public String listOfAll(PageTO<ReviewVO> pt, Model model) {
		
		pt.setCurPage(1);
		
		pt = rService.listOfAll(pt);
		
		model.addAttribute("pt", pt);
		
		return "review/listOfAll";
	}
	
	@RequestMapping(value = "/listOfAll/{curPage}", method = RequestMethod.GET)
	public String listOfAll(@PathVariable("curPage") int curPage,PageTO<ReviewVO> pt, Model model) {

		pt.setCurPage(curPage);

		pt = rService.listOfAll(pt);
		
		model.addAttribute("pt", pt);
		
		return "review/listOfAll";
	}
	
}
