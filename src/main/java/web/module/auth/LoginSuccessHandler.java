package web.module.auth;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import web.module.auth.dao.MemberMapper;
import web.module.auth.domain.CustomUser;
import web.module.auth.domain.MemberVO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class LoginSuccessHandler implements AuthenticationSuccessHandler {
	private MemberMapper dao;
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth) throws IOException, ServletException {
		List<String> roleNames = new ArrayList<>();
		auth.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});
//		Object obj = auth.getDetails();
//		MemberVO member = ((CustomUser)auth.getPrincipal()).getMember();

		//		member.setIpAddr(obj.getRemoteAddress());
//		member.setBlockYn("N");
//		dao.logUserHis(member);


		if(roleNames.contains("0") || roleNames.contains("1")) {
			response.sendRedirect("/US001.do");
		}
		if(roleNames.contains("99")) {
			response.sendRedirect("/US001.do");
		}
	}
}
