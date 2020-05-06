package web.module.auth.domain;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;
import java.util.stream.Collectors;

public class userDto extends User {
	private static final long serialVersionUID = 1L;

	private MemberVO member;

	public userDto(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	public userDto(MemberVO dto) {
		super(dto.getUsername(), dto.getPassword(), dto.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));

		this.member = dto;
	}
}
