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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.BoardVO;
import kr.co.domain.CategoryVO;
import kr.co.domain.ItemVO;
import kr.co.domain.PageTO;
import kr.co.domain.QnaVO;
import kr.co.service.BoardService;
import kr.co.service.CategoryService;
import kr.co.service.FileService;
import kr.co.service.ItemService;

@Controller
@RequestMapping("item")
public class ItemController {

	@Inject
	private ItemService iService;
	@Inject
	private CategoryService cService;
	@Inject 
	private BoardService bService;
	@Inject 
	private FileService fService;
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertUI(Model model) {
		
		List<CategoryVO> list = cService.categorylist();
		
		model.addAttribute("list", list);
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(ItemVO ivo, BoardVO bvo) {

		iService.insert(ivo,bvo);
		
		
		return "redirect:/item/read/" + ivo.getItem_no();
	}

	@RequestMapping(value = "/read/{item_no}", method = RequestMethod.GET)
	public String read(@PathVariable("item_no") int item_no, Model model, HttpSession session) {
		
		int board_no = bService.selectBoard_no(item_no);
		
		ItemVO ivo = iService.read(item_no,board_no, session);
		
		model.addAttribute("ivo", ivo);
		
		BoardVO vo = bService.read(board_no);
		
		model.addAttribute("vo",vo);
		model.addAttribute("curPage", 1);

		List<QnaVO> qvo = bService.Qnalist(board_no);
		model.addAttribute("qvo", qvo);	
		
		return "item/read";
	}

	@RequestMapping(value = "/update/{item_no}", method = RequestMethod.GET)
	public String updateUI(@PathVariable("item_no") int item_no, Model model) {
		ItemVO vo = iService.updateUI(item_no);
		
		model.addAttribute("vo", vo);
		
		return "item/update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(ItemVO vo) {

		iService.update(vo);

		return "redirect:/item/read/" + vo.getItem_no();
	}
	
	@RequestMapping(value = "/addItem/{item_no}", method = RequestMethod.GET)
	public String addItemUI(@PathVariable("item_no") int item_no, Model model) {
		ItemVO vo = iService.updateUI(item_no);
		
		model.addAttribute("vo", vo);
		
		return "item/addItem";
	}
	
	@RequestMapping(value = "/addItem", method = RequestMethod.POST)
	public String addItem(ItemVO vo) {
		int item_no = vo.getItem_no();
		System.out.println(item_no);
		iService.addItem(vo);
		System.out.println(vo.getItem_no());
		return "redirect:/item/read/" + vo.getItem_no();
	}
	
	@RequestMapping(value = "/list/{curPage}", method = RequestMethod.GET)
	public String list(@PathVariable("curPage") int curPage, PageTO<ItemVO> pt, Model model) {
		
		pt.setCurPage(curPage);
		
		pt = iService.list(pt);
		
		List<ItemVO> list= new ArrayList<ItemVO>();
		
		for(int i=0; i<pt.getList().size(); i++) {
			int item_no = pt.getList().get(i).getItem_no();
			String item_name = pt.getList().get(i).getItem_name();
			String file_name = fService.getFile(item_no).get(0);
			list.add(new ItemVO(item_no,item_name,file_name));
		}
		model.addAttribute("list", list);
		model.addAttribute("pt", pt);
		
		return "item/list";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(PageTO<ItemVO> pt, Model model) {
		pt.setCurPage(1);
		
		pt = iService.list(pt);
		
		List<ItemVO> list= new ArrayList<ItemVO>();
		
		for(int i=0; i<pt.getList().size(); i++) {
			int item_no = pt.getList().get(i).getItem_no();
			String item_name = pt.getList().get(i).getItem_name();
			String file_name = fService.getFile(item_no).get(0);
			list.add(new ItemVO(item_no,item_name,file_name));
		}
		model.addAttribute("list", list);
		model.addAttribute("pt", pt);
	}
	
	@RequestMapping(value = "/list/{item_category}/1", method = RequestMethod.GET)
	public String listbycategory(@PathVariable("item_category") String item_category, PageTO<ItemVO> pt, Model model) {
		pt.setCurPage(1);
		
		pt = iService.listbycategory(pt, item_category);
		
		List<ItemVO> list= new ArrayList<ItemVO>();
		
		for(int i=0; i<pt.getList().size(); i++) {
			int item_no = pt.getList().get(i).getItem_no();
			String item_name = pt.getList().get(i).getItem_name();
			String file_name = fService.getFile(item_no).get(0);
			list.add(new ItemVO(item_no,item_name,file_name));
		}
		
		model.addAttribute("list", list);
		model.addAttribute("pt", pt);
		model.addAttribute("item_category", item_category);
		return "item/listbycategory";
	}
	
	@RequestMapping(value = "/list/{item_category}/{curPage}", method = RequestMethod.GET)
	public String list(@PathVariable("item_category") String item_category, @PathVariable("curPage") int curPage, PageTO<ItemVO> pt, Model model) {
		
		pt.setCurPage(curPage);
		
		pt = iService.listbycategory(pt, item_category);
		
		List<ItemVO> list= new ArrayList<ItemVO>();
		
		for(int i=0; i<pt.getList().size(); i++) {
			int item_no = pt.getList().get(i).getItem_no();
			String item_name = pt.getList().get(i).getItem_name();
			String file_name = fService.getFile(item_no).get(0);
			list.add(new ItemVO(item_no,item_name,file_name));
		}
		model.addAttribute("list", list);
		model.addAttribute("pt", pt);
		model.addAttribute("item_category", item_category);
		
		return "item/listbycategory";
	}
	
	@RequestMapping(value = "/delete/{item_no}", method = RequestMethod.GET)
	public String delete(@PathVariable("item_no") int item_no) {
		
		iService.delete(item_no);
		
		return "redirect:/item/listofall";
	}
	@RequestMapping(value = "/getItem_size/{item_name}", method = RequestMethod.GET)
	public ResponseEntity<List<ItemVO>> getItem_size(@PathVariable("item_name") String item_name, Model model) {
		ResponseEntity<List<ItemVO>> entity = null;

		try {
			List<ItemVO> list = iService.getItem_size(item_name);
			model.addAttribute("list", list);
			entity = new ResponseEntity<List<ItemVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<ItemVO>>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}
	@RequestMapping(value = "/getItem_color/{item_name}", method = RequestMethod.GET)
	public ResponseEntity<List<ItemVO>> getItem_color(@PathVariable("item_name") String item_name, Model model) {
		ResponseEntity<List<ItemVO>> entity = null;

		try {
			List<ItemVO> list = iService.getItem_color(item_name);
			model.addAttribute("list", list);
			entity = new ResponseEntity<List<ItemVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<ItemVO>>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}
	
	@RequestMapping(value = "/listofall/{curPage}", method = RequestMethod.GET)
	public String listofall(@PathVariable("curPage") int curPage, PageTO<ItemVO> pt, Model model) {
		
		pt.setCurPage(curPage);
		
		pt = iService.listofall(pt);
		
		model.addAttribute("pt", pt);
		
		return "item/listofall";
	}
	
	@RequestMapping(value = "/listofall", method = RequestMethod.GET)
	public void listofall(PageTO<ItemVO> pt, Model model) {
		pt.setCurPage(1);
		
		pt = iService.listofall(pt);
		
		model.addAttribute("pt", pt);
	}
	
	@RequestMapping(value = "/getItme_no/{item_name}/{item_size}/{item_color}", method = RequestMethod.GET)
	public ResponseEntity<Integer> getItme_no(@PathVariable("item_name") String item_name,@PathVariable("item_size") String item_size,@PathVariable("item_color") String item_color, Model model) {
		ResponseEntity<Integer> entity = null;
		
		ItemVO vo = new ItemVO(0, item_name, item_size, item_color); 
		try {
			int item_no = iService.getItme_no(vo);
			model.addAttribute("item_no", item_no);
			entity = new ResponseEntity<Integer>(item_no, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

}
