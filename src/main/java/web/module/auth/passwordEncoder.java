package web.module.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class passwordEncoder implements PasswordEncoder {

	@Autowired
	private BCryptPasswordEncoder encoder;

	public String encode(CharSequence rawPassword) {
		return encoder.encode(rawPassword);
	}
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		return rawPassword.toString().equals(encodedPassword);
	}
}
