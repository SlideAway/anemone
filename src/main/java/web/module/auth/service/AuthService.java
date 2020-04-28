package web.module.auth.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import web.mvc.common.domain.CM003Dto;
import web.mvc.common.domain.CM003Param;
import web.mvc.common.service.CM003Service;
import web.module.auth.service.UserService;

public class AuthService implements UserDetailsService {


	CM003Service service;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		CM003Param param = new CM003Param();
		param.setUserId(username);
		CM003Dto dto = service.login(param);
		if(dto == null) {
			throw new UsernameNotFoundException("No user found with username" + dto.getUserNm());
		}
		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();

		roles.add(new SimpleGrantedAuthority("ROLE_USER"));

		UserDetails user = new User(username, dto.getUserPwd(), roles);

		return user;
	}
}
