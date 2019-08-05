package com.spring.mcdeliveryyy.service;

import com.spring.mcdeliveryyy.dto.UserDto;

public interface UserService {

	public void join(UserDto dto);
	
	public String emailCheck(String inputEmail);
	
	public UserDto login(String inputEmail);
}
