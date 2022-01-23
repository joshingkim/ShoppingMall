package kr.co.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

import kr.co.domain.ErrorVO;
import kr.co.domain.ItemVO;
import kr.co.service.ErrorService;

@RequestMapping("errors")
@ControllerAdvice
public class MyControllerAdvice {
	
	  @Inject private ErrorService eService;
	  
	  @ExceptionHandler(NoHandlerFoundException.class) public ModelAndView
	  error404(Exception e, HttpServletRequest request) { String uri =
	  request.getRequestURI();
	  
	  StackTraceElement[] arr = e.getStackTrace();
	  
	  String filename = arr[0].getFileName(); String methodname =
	  arr[0].getMethodName(); int linenum = arr[0].getLineNumber();
	  
	  Map<String, Object> map = new HashMap<String, Object>(); map.put("uri", uri);
	  map.put("filename", filename); map.put("methodname", methodname);
	  map.put("linenum", linenum);
	  
	  eService.insert(map);
	  
	  ModelAndView mav = new ModelAndView(); mav.setViewName("/errors/error");
	  mav.addObject("e", "해당 서비스는 없는 서비스입니다.");
	  
	  return mav; }
	  
	  @ExceptionHandler(Exception.class) public ModelAndView error(Exception e,
	 HttpServletRequest request) { e.printStackTrace(); String uri =
	  request.getRequestURI();
	  
	  StackTraceElement[] arr = e.getStackTrace();
	  
	  String filename = arr[0].getFileName(); String methodname =
	  arr[0].getMethodName(); int linenum = arr[0].getLineNumber();
	  
	  Map<String, Object> map = new HashMap<String, Object>(); map.put("uri", uri);
	  map.put("filename", filename); map.put("methodname", methodname);
	  map.put("linenum", linenum);
	 
	  eService.insert(map);
	  
	  ModelAndView mav = new ModelAndView(); mav.setViewName("/errors/error");
	  
	  return mav; }
	  
	  @RequestMapping(value = "/list") public String error_list(Model model) {
	  
	  List<ErrorVO> list = eService.list();
	  
	  model.addAttribute("list", list);
	  
	  return "/errors/list"; }
	  
	  @RequestMapping(value = "/update/{error_no}", method = RequestMethod.GET)
	  public String update(@PathVariable("error_no") int error_no) {
	  
	  eService.update(error_no);
	  
	 return "redirect:/errors/list"; }
	 

}
