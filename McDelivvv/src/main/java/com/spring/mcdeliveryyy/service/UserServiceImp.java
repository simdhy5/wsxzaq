package com.spring.mcdeliveryyy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mcdeliveryyy.dao.UserDao;
import com.spring.mcdeliveryyy.dto.UserDto;

@Service
public class UserServiceImp implements UserService {
	@Autowired
	private UserDao dao;

	//회원가입
	@Override
	public void join(UserDto dto) {
		dao.join(dto);
		
	}

	//이메일 중복체크
	@Override
	public String emailCheck(String inputEmail) {
		String dbEmail=dao.emailCheck(inputEmail);
		return dbEmail;
	}

	//로그인
	@Override
	public UserDto login(String inputEmail) {
		UserDto dto=dao.login(inputEmail);
		return dto;
	}
}
