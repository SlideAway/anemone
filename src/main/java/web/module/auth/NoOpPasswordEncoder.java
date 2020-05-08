package web.module.auth;

import org.springframework.security.crypto.password.PasswordEncoder;
import web.mvc.common.web.CM003Controller;

public class NoOpPasswordEncoder implements PasswordEncoder {
	public String encode(CharSequence rawPassword) {
		return rawPassword.toString();
	}
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		return rawPassword.toString().equals(encodedPassword);
	}
}
