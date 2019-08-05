package com.spring.mcdeliveryyy.dao;

import com.spring.mcdeliveryyy.dto.UserDto;

public interface UserDao {
	public void join(UserDto dto);
	
	public String emailCheck(String inputEmail);
	
	public UserDto login(String inputEmail);
}
