package com.spring.mcdeliveryyy.service;

import java.util.Map;

import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.spring.mcdeliveryyy.dao.MailDao;
import com.spring.mcdeliveryyy.dto.MailDto;
import com.spring.mcdeliveryyy.dto.UserDto;

//컨트롤러에서 받은 수신자정보로 메일 보내주기
//receive로 받아온 수신자를 MailDto에 receiveMail에 저장해줘야됨
//제목이랑 내용은 MailDto 객체가 생성될때 같이 만들어지게 되어있음
@Service
public class MailServiceImp implements MailService {
	@Autowired
	private JavaMailSender mailSender; //메일 발송 객체
	
	@Autowired
	private MailDao mdao;

	@Override
	public void sendMail(UserDto dto) {
		try {
			
			MailDto mdto=new MailDto();
			
			//메일 객체 만들기
			MimeMessage msg=mailSender.createMimeMessage();

			//메일 수신자
			msg.addRecipient(RecipientType.TO, new InternetAddress(dto.getAuthEmail()));
			
			//메일 발신자
			msg.addFrom(new InternetAddress[] {new InternetAddress(mdto.getSenderMail(), mdto.getSenderName())});
			
			//메일 제목
			msg.setSubject(mdto.getSubject(), "utf-8");
			
			//메일 내용

			String htmlMsg="<h2>맥딜리버리 회원가입 인증 메일입니다.</h2> <br><br>"
						+ dto.getName() + "님! <br>"
						+ "<h3>아래의 버튼을 누르면 회원가입이 완료됩니다.</h3>"
						+ "<a href='http://localhost:8080" 
							+ "/mcdeliveryyy/auth-page.do?authCode=" + dto.getAuthCode() 
							+ "&email=" + dto.getEmail() + "'>완료</a>";
			
			mdto.setMessage(htmlMsg);
			
			msg.setText(mdto.getMessage(), "utf-8", "html");
			
			mailSender.send(msg);
			

			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//인증메일 내용에 들어가야 할 것들 : 인증코드(생성도 되어야됨), 회원가입완료하기 버튼
	//회원가입 완료하기 버튼을 누르면
	//인증코드가 파라미터값으로 넘어가면서 auth-page로 이동
	//auth-page에서는 넘어온 파라미터값(인증코드)이 db에 있는지 확인
	// 이때, db에는 인증코드와 메일주소가 map으로 저장되어 있어야됨 -> 인증번호가 굳이 저장되어야 하나? 어차피 인증번호는 1회용 아님?
	// 그래야지 인증코드에 매핑되는 이메일주소가 db에 존재하는 경우에만 auth-flag를 true로 바꾸기 가능


	//db에 인증코드 저장하기
	@Override
	public void setCode(String email, int code) {
		mdao.setCode(email, code);
		
		
	}

	@Override
	public String authComplete(String email) {
		String dbAuthCode=mdao.authComplete(email);
		return dbAuthCode;
	}

	//auth_flag true로 바꾸기
	@Override
	public void flagChange(String email) {
		mdao.flagChange(email);
		
	}

	
	
	//비밀번호 변경 이메일 발송
	@Override
	public void findPassword(String findEmail) {
		try {
			
			MailDto mdto=new MailDto();
			
			//메일 객체 만들기
			MimeMessage msg=mailSender.createMimeMessage();
			
			//메일 수신자
			msg.addRecipient(RecipientType.TO, new InternetAddress(findEmail));
			
			//메일 발신자
			msg.addFrom(new InternetAddress[] {new InternetAddress(mdto.getSenderMail(), mdto.getSenderName())});
			
			//메일 제목
			msg.setSubject("새로운 비밀번호로 변경해주세요", "utf-8");
			
			//메일 내용
			String htmlMsg="<h2>비밀번호 변경 메일입니다.</h2> <br><br>"
						+ "<h3>아래의 링크를 누르면 비밀번호 변경 페이지로 이동합니다.</h3>"
						+ "<a href='http://localhost:8080"
							+ "/mcdeliveryyy/change-password-form.do?email=" + findEmail + "'>완료</a>";
			
			mdto.setMessage(htmlMsg);
			msg.setText(mdto.getMessage(), "utf-8", "html");
			mailSender.send(msg);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
	//새 비번 업뎃
	@Override
	public void changePassword(Map<String, Object> map) {
		
		mdao.changePassword(map);
		
	}
	
}
