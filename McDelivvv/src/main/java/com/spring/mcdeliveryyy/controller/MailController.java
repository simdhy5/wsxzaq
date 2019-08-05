package com.spring.mcdeliveryyy.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.mcdeliveryyy.dto.MailDto;
import com.spring.mcdeliveryyy.dto.UserDto;
import com.spring.mcdeliveryyy.service.MailService;

//메일보내지는 과정 (try catch 처리 해야되는 이유?)
//회원가입이 완료되면 dto에 인증메일을 받을 수신자의메일주소가 저장됨 (auth_email)
//그러면 컨트롤러에 매핑되는 url의 파라미터값으로 auth_email의 값을 가져와야됨
//그래야 여기서 receiveMail을 알아낼 수 있으니까
//(->혹시 auth_email의 값이 null으로 들어올 수도 있으니까 일단은 email의 값을 가져오기
//->email에 들어있는 주소가 receiveMail의 값이 되는거)
@Controller
public class MailController {
	@Autowired
	MailService mailService;

	//join-auth가 요청되면 방금 회원가입된 정보가 세션으로 sesDto에 저장되어 있음
	//이 sesDto에서 인증메일 발송할 메일주소만 꺼내서 그걸 서비스로 보내기
	//이 dto에 추가적으로 authCode도 넣어줘야됨
	@RequestMapping("join-auth")
	public String sendMail(HttpServletRequest request) {
		
		HttpSession session=request.getSession();
		UserDto sesDto=(UserDto)session.getAttribute("dto");
		
		//인증코드 생성
		int code=0;
		for (int i=0; i<5; i++) {
			code=(int)((Math.random())*100000);
			
		}
		
		//db에 인증코드 저장
		mailService.setCode(sesDto.getEmail(), code);
		
		//mailservice에서 메일 내용에 들어갈 정보를 여기서 준비해두기
		sesDto.setAuthCode(code);
		System.out.println("sesDto에 든거 : " + sesDto); //여기에 하나의 userDto의 모든 정보 다 들어있음
		
		
		//System.out.println("세션에 담긴 정보 : " + sesDto);
		
		//메일수신자정보 
//		String receiver=sesDto.getEmail(); //나중에 getAuthEmail로 바꿔야됨
//		System.out.println("getEmail : " + receiver);
		
		String receiver=sesDto.getAuthEmail();
		System.out.println("getAuthEmail : " + receiver);
		
		MailDto mdto=new MailDto();
		System.out.println("mailDto에 든 기본값들 : " + mdto);
		
		//서비스로 수신자 정보, 코드정보 등 보내고, 메일까지 발송해줌
		mailService.sendMail(sesDto);
		
		
		
		
		
		return "join-auth";
	}
	

	//메일인증 확인하기
	//인증코드를 db에 
	@RequestMapping("auth-page")
	public String authComplete(HttpServletRequest request) {
		String authCode=request.getParameter("authCode");
		String email=request.getParameter("email");
		
		System.out.println("인증코드 : " + authCode);
		System.out.println("이메일 : " + email);
		
		//인증코드랑 이메일정보를 db에서 확인하고, auth_flag를 true로 바꾸기
		//db에서 이 이메일에 해당하는 인증코드를 가져와서,
		//db인증코드랑 request로 받아온 인증코드가 같으면,
		//auth_flag값을 true로 바꾸기
		String dbAuthCode=mailService.authComplete(email);
		
		System.out.println("dbAuthCode : " + dbAuthCode);
		
		
		//인증코드 비교하기
		if (dbAuthCode.equals(authCode)) {
			System.out.println("코드 일치1");
			mailService.flagChange(email);
			System.out.println("코드 일치2");
		}
		
		return "auth-page";
	}
	
	
	
	//비밀번호 찾기 폼 보여주기
	@RequestMapping("forgot-password")
	public String findPasswordForm() {
		return "forgot-password";
	}
	
	
	//비밀번호 찾기 시작
	//입력받은 이메일주소로 링크주소를 보내줌
	//링크를 누르면 db에 저장되어있는 이메일주소가 파라미터값으로 넘어감
	//거기서 비밀번호를 새로 바꾸고, db에 update
	@RequestMapping(value="find-password", method=RequestMethod.POST)
	public String findPassword(HttpServletRequest request) {
		String findEmail=request.getParameter("findEmail"); //새로운 비밀번호를 바꿀 이메일 -> 이 값을 db에 전달해줘야 됨
		System.out.println(findEmail);
		
		mailService.findPassword(findEmail); 
		
		return "find-password";
	}
	
	
	//새로운 비밀번호로 변경 폼
	@RequestMapping("change-password-form")
	public String changePasswordForm(HttpServletRequest request) {
		
		String email=request.getParameter("email");
		
		HttpSession session=request.getSession();
		session.setAttribute("email", email);	
		

		
		return "change-password-form";
	}
	
	
	//새 비밀번호 작성하기
	@RequestMapping(value="change-password", method=RequestMethod.POST)
	public void changePassword(HttpServletRequest request) {
		
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		
		System.out.println("세션에서 온 이메일 : " + email);
		
		String newPw=request.getParameter("newPw");
		System.out.println(newPw);
		
		
		//세션으로부터 받은 email과, newPw를 db로 가져가서 비밀번호 정보 업뎃
		Map<String, Object> map=new HashMap<>();
		map.put("email", email);
		map.put("newPw", newPw);
		
		mailService.changePassword(map);
		
		
	}
}
