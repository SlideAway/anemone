package web.module.auth;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class LoginSuccessHandler implements AuthenticationSuccessHandler {
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth) throws IOException, ServletException {
		List<String> roleNames = new ArrayList<>();
		auth.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});
		Authentication str = SecurityContextHolder.getContext().getAuthentication();

		if(roleNames.contains("R00") || roleNames.contains("R01")) {
			//response.sendRedirect(request.getContextPath() + "/CM003_LOGIN.do?error=0");
			response.sendRedirect("/US001.do");
		}
		if(roleNames.contains("R99")) {
			//response.sendRedirect(request.getContextPath() + "/CM003_LOGIN.do?error=0");
			response.sendRedirect("/US001.do");
		}
	}
}
