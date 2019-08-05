package com.spring.mcdeliveryyy.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.mcdeliveryyy.dto.UserDto;

@Repository
public class UserDaoImp implements UserDao {
	@Autowired
	private SqlSession session;

	//회원가입
	@Override
	public void join(UserDto dto) {
		session.insert("user.join", dto);
		
	}

	//이메일 중복확인
	@Override
	public String emailCheck(String inputEmail) {
		String dbEmail=session.selectOne("user.emailCheck", inputEmail);
		return dbEmail;
	}

	//로그인
	@Override
	public UserDto login(String inputEmail) {
		UserDto dto=session.selectOne("user.login", inputEmail);
		return dto;
	}
}
