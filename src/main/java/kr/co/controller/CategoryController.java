package kr.co.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.CategoryVO;
import kr.co.domain.PageTO;
import kr.co.service.CategoryService;

@Controller
@RequestMapping("category")
public class CategoryController {

	@Inject
	private CategoryService cService;

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertUI(Model model) {
		List<CategoryVO> list = cService.categorylist();

		model.addAttribute("list", list);
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(CategoryVO vo) {

		cService.insert(vo);

		return "redirect:/category/list/";
	}

	@RequestMapping(value = "/list/{curPage}", method = RequestMethod.GET)
	public String list(@PathVariable("curPage") int curPage, PageTO<CategoryVO> pt, Model model) {
		pt.setCurPage(curPage);

		pt = cService.list(pt);

		model.addAttribute("pt", pt);

		return "category/list";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(PageTO<CategoryVO> pt, Model model) {
		pt = cService.list(pt);

		model.addAttribute("pt", pt);
	}

	@RequestMapping(value = "/update/{item_name}", method = RequestMethod.GET)
	public String updateUI(@PathVariable("item_name") String item_name, Model model) {

		CategoryVO vo = cService.updateUI(item_name);

		model.addAttribute("vo", vo);

		return "/category/update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(CategoryVO vo) {

		cService.update(vo);
		
		return "redirect:/category/list/";
	}

	@RequestMapping(value = "/delete/{item_name}", method = RequestMethod.GET)
	public String delete(@PathVariable("item_name") String item_name) {
		cService.delete(item_name);

		return "redirect:/category/list/";
	}

	@RequestMapping(value = "/item_name_list", method = RequestMethod.GET)
	public ResponseEntity<List<CategoryVO>> item_name_list(String item_category) {
		ResponseEntity<List<CategoryVO>> entity = null;
		System.out.println(item_category);
		try {
			List<CategoryVO> list = cService.item_name_list(item_category);
			entity = new ResponseEntity<List<CategoryVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<CategoryVO>>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@RequestMapping(value = "/categorylist", method = RequestMethod.GET)
	public ResponseEntity<List<CategoryVO>> categorylist(Model model) {
		ResponseEntity<List<CategoryVO>> entity = null;

		try {
			List<CategoryVO> list = cService.categorylist();
			model.addAttribute("list", list);
			entity = new ResponseEntity<List<CategoryVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<CategoryVO>>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

}
