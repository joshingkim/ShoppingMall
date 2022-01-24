package kr.co.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.sun.org.glassfish.gmbal.ParameterNames;

import kr.co.domain.FnqVO;
import kr.co.domain.ManagerVO;
import kr.co.domain.MemberVO;
import kr.co.domain.OrderVO;
import kr.co.domain.OrdersVO;
import kr.co.domain.PageTO;
import kr.co.service.ManagerService;


@Controller
@RequestMapping("manager")
public class ManagerController {
	
	@Inject
	private ManagerService mService;
	

	
	
	
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public void manager1(Model model) throws JsonProcessingException {
		List<Object> daySale =  mService.daySale();
		String daySale1 = new ObjectMapper().writeValueAsString(daySale);
		model.addAttribute("daySale1", daySale1);
	
			List<Object> monthSale =  mService.monthSale();
			String monthSale1 = new ObjectMapper().writeValueAsString(monthSale);
			model.addAttribute("monthSale1", monthSale1);
			model.addAttribute("monthSale", monthSale);
			
			
	}
	
	
	@RequestMapping(value = "/saleRank", method = RequestMethod.GET)
	public void manager2(Model model) throws JsonProcessingException {
		List<Object> saleRank = mService.saleRank();
		String saleRank1 = new ObjectMapper().writeValueAsString(saleRank);
		model.addAttribute("saleRank", saleRank);
		model.addAttribute("saleRank1", saleRank1);

	}
	
	@RequestMapping(value = "/likeRank", method = RequestMethod.GET)
	public void manager3(Model model) throws JsonProcessingException {
		 List<Object> likeRank = mService.likeRank();
		String likeRank1 = new ObjectMapper().writeValueAsString(likeRank);
		model.addAttribute("likeRank", likeRank);
		model.addAttribute("likeRank1", likeRank1);
		
	}
	
	@RequestMapping(value = "/keywordRank", method = RequestMethod.GET)
	public void manager4(Model model) throws JsonProcessingException {
		List<Object> keywordRank = mService.keywordRank();
		String keywordRank1 = new ObjectMapper().writeValueAsString(keywordRank);
		model.addAttribute("keywordRank",keywordRank);
		model.addAttribute("keywordRank1",keywordRank1);
		
	}
	
	@RequestMapping(value = "/ageRank", method = RequestMethod.GET)
	public void manager5(Model model) throws JsonProcessingException {
		List<Object> ageRank = mService.ageRank();
		String ageRank1 = new ObjectMapper().writeValueAsString(ageRank);
		model.addAttribute("ageRank",ageRank);
		model.addAttribute("ageRank1",ageRank1);

	}
	
	@RequestMapping(value = "/categoryRank", method = RequestMethod.GET)
	public void manager6(Model model) throws JsonProcessingException {
		List<Object> categoryRank = mService.categoryRank();
		model.addAttribute("categoryRank", categoryRank);
		String categoryRank1 = new ObjectMapper().writeValueAsString(categoryRank);
		model.addAttribute("categoryRank1",categoryRank1);

	}
	
	
	
	
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String main() {
		return "manager/main";
	}
	
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void main2() {
		
	}
	
	
	@RequestMapping(value = "/main/{manager_id}", method = RequestMethod.GET)
	public String main1(@PathVariable("manager_id") String manager_id, Model model) {
		ManagerVO vo = mService.read(manager_id);
		model.addAttribute("vo", vo);
		return "manager/main";
	}
	
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertUI() {
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(ManagerVO vo) {
		mService.insert(vo);
		
		return "redirect:/manager/managerLogin";
	}
	
	
	@RequestMapping(value = "/idcheck", 
			method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String idcheck(String manager_id) {
		ManagerVO vo = mService.idcheck(manager_id);
		
		if(vo == null) {
			return "사용 가능한 아이디입니다.";
		}else {
			return "중복된 아이디입니다.";
		}
	}
		
	
		
	
		
	@RequestMapping(value = "/managerDelete", method = RequestMethod.POST)
	public String delete(ManagerVO vo) {
		mService.managerDelete(vo);
		
		return "redirect:/manager/managerList";
	}	
		
	@RequestMapping(value = "/read/{manager_id}", method = RequestMethod.GET)
	public String read(@PathVariable("manager_id") String manager_id, Model model) {
		
		ManagerVO vo = mService.read(manager_id);
		
		model.addAttribute("vo", vo);
		
		return "/manager/read";
		
	}
	
	
	@RequestMapping(value = "/managerLogin", method = RequestMethod.GET)
	public String login() {
		return "/manager/managerLogin";
	}
		

		@RequestMapping(value = "/managerLogin", method = RequestMethod.POST)
		public String login(HttpServletRequest request, ManagerVO vo, RedirectAttributes rttr) {
			HttpSession session = request.getSession();
			ManagerVO managerLogin = mService.managerLogin(vo);
			
			if(managerLogin == null) {
	            session.setAttribute("managerLogin", null);
	            rttr.addFlashAttribute("msg", false);
	            return "/manager/managerLogin";
	        } else {
	            session.setAttribute("managerLogin", managerLogin);
	            return "redirect:/manager/main/"+ managerLogin.getManager_id();
	        }

			
			
	    }
	 

	    @RequestMapping(value="/logout")
	    public String logout(HttpSession session) {
	        session.invalidate(); 
	     
	        return "redirect:/manager/main"; 
	    }

		
	
		
		
		@RequestMapping(value = "/update/{manager_id}", method = RequestMethod.GET)
		public String updateUI(@PathVariable("manager_id") String manager_id, Model model) {
			
			ManagerVO vo = mService.updateUI(manager_id);
			
			model.addAttribute("vo", vo);
			
			return "/manager/update";
		}
		
		@RequestMapping(value = "/update", method = RequestMethod.POST)
		public String update(ManagerVO vo) {
			mService.update(vo);
			
			return "redirect:/manager/read/"+vo.getManager_id();
		}
		
		
		
		@RequestMapping(value="excel", method = RequestMethod.GET)
		public void downloadExcel(HttpServletResponse response) throws IOException {
			 
	        Workbook workbook = new HSSFWorkbook();
	        Sheet sheet = workbook.createSheet("주문리스트");
	        int rowNo = 0;
	 
	        Row headerRow = sheet.createRow(rowNo++);
	        headerRow.createCell(0).setCellValue("오더 아이디");
	        headerRow.createCell(1).setCellValue("상품 번호");
	        headerRow.createCell(2).setCellValue("주문한 분");
	        headerRow.createCell(3).setCellValue("수량");
	        headerRow.createCell(4).setCellValue("가격");
	        headerRow.createCell(5).setCellValue("배송지");
	        headerRow.createCell(6).setCellValue("상세배송지");
	        headerRow.createCell(7).setCellValue("구매자 번호");
	        headerRow.createCell(8).setCellValue("상태");
	        headerRow.createCell(9).setCellValue("받는 분");
	        headerRow.createCell(10).setCellValue("주문한 날짜");
	 
	        List<OrdersVO> orderList = mService.list();
	        for (OrdersVO vo : orderList) {
	            Row row = sheet.createRow(rowNo++);
	            row.createCell(0).setCellValue(vo.getOrder_id());
	            row.createCell(1).setCellValue(vo.getItem_no());
	            row.createCell(2).setCellValue(vo.getMember_id());
	            row.createCell(3).setCellValue(vo.getEa());
	            row.createCell(4).setCellValue(vo.getPrice());
	            row.createCell(5).setCellValue(vo.getAddress());
	            row.createCell(6).setCellValue(vo.getdAddress());
	            row.createCell(7).setCellValue(vo.getPhone());
	            row.createCell(8).setCellValue(vo.getStatus());
	            row.createCell(9).setCellValue(vo.getReceiver());
	            row.createCell(10).setCellValue(vo.getOrder_date());
	        }
	 
	        response.setContentType("ms-vnd/excel");
	        response.setHeader("Content-Disposition", "attachment;filename=orderList.xls");
	 
	        workbook.write(response.getOutputStream());
	        workbook.close();
	    }
		
		
		
		
		
		
		@RequestMapping(value = "/memberList/{curPage}", method = RequestMethod.GET)
		public String list(@PathVariable("curPage") int curPage, PageTO<MemberVO> pt, Model model) {
			pt.setCurPage(curPage);
			
			pt = mService.memberList(pt);
			
			model.addAttribute("pt", pt);
			
			return "/manager/memberList";
		}
		
		
		@RequestMapping(value = "/memberList", method = RequestMethod.GET)
		public void list(PageTO<MemberVO> pt, Model model) {
			pt = mService.memberList(pt);
			
			model.addAttribute("pt", pt);
		}
		
		@RequestMapping(value = "/managerList", method = RequestMethod.GET)
		public void list(Model model) {
			List<Object> managerList = mService.managerList();
			
			model.addAttribute("managerList", managerList);
		}	
	}
	

