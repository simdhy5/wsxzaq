package com.spring.mcdeliveryyy.service;

import java.util.Map;

import com.spring.mcdeliveryyy.dto.UserDto;

public interface MailService {
	public void sendMail(UserDto dto);

	public void setCode(String email, int code);

	public String authComplete(String email);

	public void flagChange(String email);

	public void findPassword(String findEmail);

	public void changePassword(Map<String, Object> map);
}
