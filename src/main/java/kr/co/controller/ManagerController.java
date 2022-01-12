package kr.co.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;


import kr.co.domain.ManagerVO;
import kr.co.domain.OrderVO;
import kr.co.service.ManagerService;


@Controller
@RequestMapping("manager")
public class ManagerController {
	
	@Inject
	private ManagerService mService;
	

	
	@RequestMapping(value = "/managerPage", method = RequestMethod.GET)
	public void forManager(Model model) throws JsonProcessingException {
		List<OrderVO> list = mService.list();
		 List<Object> saleRank = mService.saleRank();
		 List<Object> daySale =  mService.daySale();
		  List<Object> likeRank = mService.likeRank();
		  List<Object> getName = mService.getName();
		  List<Object> keywordRank = mService.keywordRank();
		  List<Object> ageRank = mService.ageRank();
		  List<Object> categoryRank = mService.categoryRank();
		  
		  model.addAttribute("categoryRank", categoryRank);
		  
		  String categoryRank1 = new ObjectMapper().writeValueAsString(categoryRank);
			model.addAttribute("categoryRank1",categoryRank1);
		  
		  String ageRank1 = new ObjectMapper().writeValueAsString(ageRank);
			model.addAttribute("ageRank1",ageRank1);
		  
		  String keywordRank1 = new ObjectMapper().writeValueAsString(keywordRank);
			model.addAttribute("keywordRank1",keywordRank1);
		  
		    String getName1 = new ObjectMapper().writeValueAsString(getName);
			model.addAttribute("getName1",getName1);
		  
			String list1 = new ObjectMapper().writeValueAsString(list);
			model.addAttribute("list1", list1);
		
		
			String saleRank1 = new ObjectMapper().writeValueAsString(saleRank);
			model.addAttribute("saleRank1", saleRank1);
		
		
			String daySale1 = new ObjectMapper().writeValueAsString(daySale);
			model.addAttribute("daySale1", daySale1);
			
			
			  String likeRank1 = new ObjectMapper().writeValueAsString(likeRank);
			  model.addAttribute("likeRank1", likeRank1);
			 
			  
			/*
			 * model.addAttribute("list", list); 
			 * model.addAttribute("saleRank", saleRank);
			 * model.addAttribute("daySale", daySale);
			 */
	
		
		
	}
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		return "manager/main";
	}
	
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertUI() {
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(ManagerVO vo) {
		mService.insert(vo);
		
		return "redirect:/manager/managerList";
	}
	
	
	@RequestMapping(value = "/idcheck", 
			method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String idcheck(String manager_id) {
		ManagerVO vo = mService.idcheck(manager_id);
		
		if(vo == null) {
			return "사용 가능";
		}else {
			return "사용불가";
		}
	}
		
	@RequestMapping(value = "/managerList", method = RequestMethod.GET)
	public void list(Model model) {
		List<OrderVO> managerList = mService.managerList();
		
		model.addAttribute("managerList", managerList);
	}	
		
	@RequestMapping(value = "/updateCode/{manager_id}", method = RequestMethod.POST)
	public String updateCode(ManagerVO vo) {
		mService.updateCode(vo);
		
		return "redirect:/manager/read/" + vo.getManager_id();
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
		

		
		
		
		
		
		
	}
	

