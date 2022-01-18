package kr.co.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.domain.MemberVO;


public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {		
		HttpSession session = request.getSession();
		Object login = session.getAttribute("login");
		if(login != null) {
			session.invalidate();
		}
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		Map<String, Object> map = modelAndView.getModel();
		
		MemberVO login = (MemberVO) map.get("login");
		
		HttpSession session = request.getSession();
		session.setAttribute("login", login);		
		
		/*
		 * 원래있던 페이지로 돌아가는 코드 -> 수정 전
		 * String where = (String) session.getAttribute("where");
		 * 
		 * if(where == null) {  }else {
		 * response.sendRedirect(where); }
		 */
		response.sendRedirect("/");
	}

}
