package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.domain.MemberVO;
import kr.co.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Inject
	private MemberService mService;
	
	@RequestMapping(value = "/idcheck", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String idcheck(String member_id) {
		MemberVO vo = mService.idcheck(member_id);
		
		if(vo == null) {
			return "사용이 가능한 아이디 입니다";
		}else {
			return "사용이 불가능한 아이디 입니다";
		}		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertUI() {
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(MemberVO vo) {
		mService.insertMember(vo);
		return "redirect:/member/read/"+vo.getMember_id();
	}
	
	@RequestMapping(value = "/read/{member_id}", method = RequestMethod.GET)
	public String read(@PathVariable("member_id") String member_id, Model model) {
		MemberVO vo = mService.read(member_id);
		
		model.addAttribute("vo", vo);
		return "member/read";
	
	}
	

}
