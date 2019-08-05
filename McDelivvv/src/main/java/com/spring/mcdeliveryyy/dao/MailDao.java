package com.spring.mcdeliveryyy.dao;

import java.util.Map;

public interface MailDao {
	public void setCode(String email, int code);

	public String authComplete(String email);

	public void flagChange(String email);

	public void changePassword(Map<String, Object> map);
}
