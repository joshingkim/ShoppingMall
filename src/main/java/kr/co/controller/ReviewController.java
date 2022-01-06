package kr.co.controller;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.service.ReviewService;

@RestController
@RequestMapping("/replies")
public class ReviewController {
	
	@Inject
	private ReviewService rService;
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public ResponseEntity<String> insert(@RequestBody Map<String, Object> map) {
		ResponseEntity<String> entity = null;
		
		try {
			rService.insert(map);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL", HttpStatus.BAD_REQUEST);
		}
		
		
		return entity;
		
	}

}
