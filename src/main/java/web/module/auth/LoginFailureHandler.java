package web.module.auth;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFailureHandler implements AuthenticationFailureHandler {
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException e) throws IOException, ServletException {
		if(e instanceof BadCredentialsException || e instanceof InternalAuthenticationServiceException) {
			/*
			BadCredentialException : 비밀번호 불일치시
			InternalAuthenticationServiceException : 존재하지 않는 ID 존재 시
			*/
			response.sendRedirect(request.getContextPath() + "/CM003_LOGIN.do?error=1");
		}
	}
}
