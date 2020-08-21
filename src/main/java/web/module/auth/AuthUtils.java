package web.module.auth;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import web.module.auth.domain.CustomUser;
import web.module.auth.domain.MemberVO;

public class AuthUtils {

	public static MemberVO getUserInfo() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth == null) {
			return null;
		}
		return ((CustomUser)auth.getPrincipal()).getMember();
	}
}
