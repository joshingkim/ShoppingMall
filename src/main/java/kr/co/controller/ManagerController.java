package kr.co.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.sun.org.glassfish.gmbal.ParameterNames;

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
		
	
		 
		  List<Object> getName = mService.getName();
		    String getName1 = new ObjectMapper().writeValueAsString(getName);
			model.addAttribute("getName1",getName1);
		  
			List<OrderVO> list = mService.list();
			String list1 = new ObjectMapper().writeValueAsString(list);
			model.addAttribute("list1", list1);
		
			 List<Object> daySale =  mService.daySale();
			String daySale1 = new ObjectMapper().writeValueAsString(daySale);
			model.addAttribute("daySale1", daySale1);
			
			List<Object> saleRank = mService.saleRank();
			String saleRank1 = new ObjectMapper().writeValueAsString(saleRank);
			model.addAttribute("saleRank1", saleRank1);
			  
			List<Object> likeRank = mService.likeRank();
			String likeRank1 = new ObjectMapper().writeValueAsString(likeRank);
			  model.addAttribute("likeRank1", likeRank1);
		
			  List<Object> keywordRank = mService.keywordRank();
				String keywordRank1 = new ObjectMapper().writeValueAsString(keywordRank);
				model.addAttribute("keywordRank1",keywordRank1);
				
				List<Object> ageRank = mService.ageRank();
				String ageRank1 = new ObjectMapper().writeValueAsString(ageRank);
				model.addAttribute("ageRank1",ageRank1);
				
				List<Object> categoryRank = mService.categoryRank();
				model.addAttribute("categoryRank", categoryRank);
				String categoryRank1 = new ObjectMapper().writeValueAsString(categoryRank);
				model.addAttribute("categoryRank1",categoryRank1);
	}
	
	@RequestMapping(value = "/calender", method = RequestMethod.GET)
	public void manager1(Model model) throws JsonProcessingException {
		List<Object> daySale =  mService.daySale();
		String daySale1 = new ObjectMapper().writeValueAsString(daySale);
		model.addAttribute("daySale1", daySale1);
		 List<Object> getName = mService.getName();
		    String getName1 = new ObjectMapper().writeValueAsString(getName);
			model.addAttribute("getName1",getName1);
	}
	
	@RequestMapping(value = "/saleRank", method = RequestMethod.GET)
	public void manager2(Model model) throws JsonProcessingException {
		List<Object> saleRank = mService.saleRank();
		String saleRank1 = new ObjectMapper().writeValueAsString(saleRank);
		model.addAttribute("saleRank1", saleRank1);
		 List<Object> getName = mService.getName();
		    String getName1 = new ObjectMapper().writeValueAsString(getName);
			model.addAttribute("getName1",getName1);
	}
	
	@RequestMapping(value = "/likeRank", method = RequestMethod.GET)
	public void manager3(Model model) throws JsonProcessingException {
		 List<Object> likeRank = mService.likeRank();
		String likeRank1 = new ObjectMapper().writeValueAsString(likeRank);
		  model.addAttribute("likeRank1", likeRank1);
		  List<Object> getName = mService.getName();
		    String getName1 = new ObjectMapper().writeValueAsString(getName);
			model.addAttribute("getName1",getName1);
	}
	
	@RequestMapping(value = "/keywordRank", method = RequestMethod.GET)
	public void manager4(Model model) throws JsonProcessingException {
		List<Object> keywordRank = mService.keywordRank();
		String keywordRank1 = new ObjectMapper().writeValueAsString(keywordRank);
		model.addAttribute("keywordRank1",keywordRank1);
		 List<Object> getName = mService.getName();
		    String getName1 = new ObjectMapper().writeValueAsString(getName);
			model.addAttribute("getName1",getName1);
	}
	
	@RequestMapping(value = "/ageRank", method = RequestMethod.GET)
	public void manager5(Model model) throws JsonProcessingException {
		List<Object> ageRank = mService.ageRank();
		String ageRank1 = new ObjectMapper().writeValueAsString(ageRank);
		model.addAttribute("ageRank1",ageRank1);
		 List<Object> getName = mService.getName();
		    String getName1 = new ObjectMapper().writeValueAsString(getName);
			model.addAttribute("getName1",getName1);
	}
	
	@RequestMapping(value = "/categoryRank", method = RequestMethod.GET)
	public void manager6(Model model) throws JsonProcessingException {
		List<Object> categoryRank = mService.categoryRank();
		model.addAttribute("categoryRank", categoryRank);
		String categoryRank1 = new ObjectMapper().writeValueAsString(categoryRank);
		model.addAttribute("categoryRank1",categoryRank1);
		 List<Object> getName = mService.getName();
		    String getName1 = new ObjectMapper().writeValueAsString(getName);
			model.addAttribute("getName1",getName1);
	}
	
	
	
	
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public void manager() {
		
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
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
		
		return "redirect:/manager/main";
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
		

		@RequestMapping(value = "/managerLogin", method = RequestMethod.POST)
		public String login(HttpSession session, ManagerVO vo) {
			String returnURL ="";
	        if ( session.getAttribute("managerLogin") !=null ){
	         
	            session.removeAttribute("managerLogin"); 
	        }
	      
	        ManagerVO mVo = mService.managerLogin(vo);
	         
	        if ( vo !=null ){ 
	            session.setAttribute("managerLogin", vo); 
	            returnURL ="redirect:/manager/main/"+ mVo.getManager_id(); 
	        }else {
	            returnURL ="redirect:/manager/login"; 
	        }
	         
	        return returnURL; 
	    }
	 

	    @RequestMapping(value="/logout")
	    public String logout(HttpSession session) {
	        session.invalidate(); 
	        return "redirect:/manager/main"; 
	    }



			
			
			
			
			
			
			
			
		@RequestMapping(value = "/managerLogin", method = RequestMethod.GET)
		public void login1() {
			
		}
	
	}
	

