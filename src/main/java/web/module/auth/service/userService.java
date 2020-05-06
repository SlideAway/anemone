package web.module.auth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import web.module.auth.dao.MemberMapper;
import web.module.auth.domain.MemberVO;
import web.module.auth.domain.userDto;


public class userService implements UserDetailsService {

	@Autowired
	private MemberMapper dao;


	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		System.out.println(dao.getUserInfo(username));
		MemberVO dto = dao.getUserInfo(username);
		return dto == null ? null : new userDto(dto);
	}
}
