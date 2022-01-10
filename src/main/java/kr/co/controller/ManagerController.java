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
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertUI() {
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(ManagerVO vo) {
		mService.insert(vo);
		
		return "redirect:/manager/managerPage";
	}
	
	
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	

