package web.module.auth;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
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

		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/");
//			response.sendRedirect("/US001.do");
			return;
		} if(roleNames.contains("ROLE_MEMBER")) {
			response.sendRedirect("/");
//			response.sendRedirect("/US001.do");
			return;
		}
		response.sendRedirect("/");
	}
}
