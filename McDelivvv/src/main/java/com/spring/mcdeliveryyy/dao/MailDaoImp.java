package com.spring.mcdeliveryyy.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MailDaoImp implements MailDao {
	@Autowired
	private SqlSession session;
	
	//db에 인증코드 저장하기
	public void setCode(String email, int code) {
		Map<String, Object> map=new HashMap<>();
		map.put("email", email);
		map.put("auth_code", code);
		
		
		System.out.println("제대로 들어감?" + map);
		session.update("mail.setCode", map);
	}

	@Override
	public String authComplete(String email) {
		String dbAuthCode=session.selectOne("mail.authComplete", email);
		return dbAuthCode;
	}

	@Override
	public void flagChange(String email) {
		session.update("mail.flagChange", email);
		
	}

	//새 비번 업뎃
	@Override
	public void changePassword(Map<String, Object> map) {
		session.update("mail.changePassword", map);
		
	}
}
