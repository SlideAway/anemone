package web.module.auth.service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import web.module.auth.dao.MemberMapper;
import web.module.auth.domain.CustomUser;
import web.module.auth.domain.MemberVO;

@Log4j
public class userDetailsService implements UserDetailsService {
	//@Setter(onMethod_ = {@Autowired})
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		MemberVO vo = memberMapper.read(username);
		return vo == null ? null : new CustomUser(vo);
	}




}
