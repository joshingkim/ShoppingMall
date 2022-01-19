package kr.co.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.LikeItemVO;
import kr.co.service.LikeItemService;

@Controller
public class LikeItemController {
	
		@Inject
		private LikeItemService likeService;
		
		@RequestMapping(value = "/insert", method = RequestMethod.POST)
		public ResponseEntity<Integer> addlike( LikeItemVO vo,  Model model, HttpSession session) {
			String member_id =  (String) session.getAttribute("member_id");
			ResponseEntity<Integer>entity = null;
			try {
					likeService.insert(vo);
				entity = new ResponseEntity<Integer>(HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
			}
			return entity;
		}
}
