package kr.co.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.QnaVO;
import kr.co.service.QnaService;

@Controller
@RequestMapping("qna")
public class QnaController {
	
	@Autowired
	private QnaService qService;
	
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public void insertui() {
	}

	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public void insert(QnaVO qvo) {
		qService.insert(qvo);
		System.out.println(qvo);
	}

}
