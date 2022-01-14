package kr.co.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {	
		HttpSession session = request.getSession();		
		//바인딩 됐는지 여부 확인하는 코드 -> 객체가 있는지 없는지 확인하는 코드
		Object login = session.getAttribute("login");
		
		if(login == null) {//로그인이 null => 로그인이 안되어 있다
			String uri = request.getRequestURI();
			String cPath = request.getContextPath();
			String sp = uri.substring(cPath.length());
			
			session.setAttribute("where", sp);
			
			response.sendRedirect("/member/loginUI");
			return false;
		}
		return true;
	}


}
