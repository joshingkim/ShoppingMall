package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.ManagerVO;

import kr.co.service.ManagerService;



@Controller
@RequestMapping("manager")
public class ManagerController {
	
	@Inject
	private ManagerService mService;
	

	
	
	
	
	
	@RequestMapping(value = "/managerPage", method = RequestMethod.GET)
	public void forManager() {
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertUI() {
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(ManagerVO vo) {
		mService.insert(vo);
		
		return "redirect:/manager/WhereWeGo";
	}
	
	
	
		
		
		
		
		
	}
	

