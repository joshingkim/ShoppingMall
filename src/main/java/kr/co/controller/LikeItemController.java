package kr.co.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.LikeItemVO;
import kr.co.service.LikeItemService;

@Controller
@RequestMapping("likeitem")
public class LikeItemController {
	
		@Inject
		private LikeItemService likeService;
		
		@RequestMapping(value = "/delete", method = RequestMethod.POST)
		public ResponseEntity<Integer> dislike(LikeItemVO vo, Model model, HttpSession session) {
			String member_id = (String) session.getAttribute("member_id"); 
			ResponseEntity<Integer>entity = null;
			try {
				likeService.delete(vo);
				entity = new ResponseEntity<Integer>(HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
			}
			return entity;
		}
		
		@RequestMapping(value = "/count/{member_id}/{item_no}", method = RequestMethod.GET)
		public ResponseEntity<Integer> count(LikeItemVO vo, @PathVariable ("item_no") int item_no,@PathVariable ("member_id") String member_id, Model model) {
			ResponseEntity<Integer>entity = null;
			
			try {
				int checklike = likeService.count(vo);
				model.addAttribute("checklike", checklike);
				entity = new ResponseEntity<Integer>(checklike, HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
			}
			return entity;
		}
		
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
