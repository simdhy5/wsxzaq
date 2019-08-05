package com.spring.mcdeliveryyy.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mcdeliveryyy.dto.UserDto;
import com.spring.mcdeliveryyy.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService service;


	//회원가입 주소 폼
	@RequestMapping("join-form")
	public String joinForm() {
		return "join-form";
	}

	//회원가입 계정 폼
	@RequestMapping("join-form2")
	public ModelAndView joinForm(HttpServletRequest request) {
		HttpSession session=request.getSession();
		session.setAttribute("inputAddr", request.getParameter("inputAddr"));
		session.setAttribute("memo", request.getParameter("memo"));

		ModelAndView mav=new ModelAndView();
		mav.setViewName("join-form2");

		return mav;
	}


	//회원가입 -> @ModelAttribute???
	@RequestMapping("join-result")
	public String join(HttpServletRequest request) {
		HttpSession session=request.getSession();
		String sesAddr=(String)session.getAttribute("inputAddr");

		String reqName=request.getParameter("inputName");
		String reqGend=request.getParameter("inputGend");
		String reqPhon=request.getParameter("inputPhon");
		String reqEmai=request.getParameter("inputEmai");
		String reqPw=request.getParameter("inputPw");

		String reqAuEm=request.getParameter("authEmail");
		String reqAuFl=request.getParameter("authFlag");

		UserDto dto=new UserDto();
		dto.setAddress(sesAddr);

		dto.setName(reqName);
		dto.setGender(reqGend);
		dto.setPhone(reqPhon);
		dto.setEmail(reqEmai);
		dto.setPw(reqPw);

		dto.setAuthEmail(reqAuEm);
		dto.setAuthFlag(reqAuFl);

		service.join(dto);

		System.out.println("이 정보로 회원가입 됨 : " + dto);

		//인증메일 발송을 위해서 dto에 저장된 걸 세션으로 만들기
		session.setAttribute("dto", dto);



		return "join-result";
	}

	//아이디 중복확인 ajax
	@RequestMapping(value="emailChk", method=RequestMethod.POST)
	@ResponseBody
	public int emailCheck(@RequestParam String inputEmail) {
		String dbEmail=service.emailCheck(inputEmail);

		int result=0;

		if (inputEmail!=null) {
			if (dbEmail!=null) {
				result=1;
			}
		}

		return result;
	}


	//로그인 확인 ajax
	@RequestMapping(value="login", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> login(HttpServletRequest request) {
		String inputPw=request.getParameter("inputPw");
		String inputEmail=request.getParameter("inputEmail");

		System.out.println("리퀘스트로도 됨?" + inputPw);
		System.out.println("리퀘스트로도 됨?" + inputEmail);


		UserDto dto=new UserDto();
		dto=service.login(inputEmail);

		System.out.println("dto : " + dto);

		int result=0;

		if (StringUtils.isEmpty(dto)) { //비번 틀린경우
			result=0;
		} else {
			if (dto.getPw().equals(inputPw)) { //로그인 성공 조건

				//입력한 비번이랑 아이디가 맞는 경우를 2가지로 분류 가능 -> 인증이 됐냐 안됐냐
				if (dto.getAuthFlag().equals("true")) { //인증도 된 경우이므로 로그인 가능, 이 정보에 대한 세션을 만들고 그 세션이랑 result값을 jsp로 전달(ajax이용해서)

					HttpSession session=request.getSession();
					session.setAttribute("dto", dto);

					result=1;

				} else { //인증은 안된경우
					result=2;
				}
			}			
		}





		System.out.println("확인1" + result);
		System.out.println("확인2" + dto);

		//		ModelAndView mav=new ModelAndView();
		//		mav.addObject("result", result);
		//		mav.addObject("dto", dto);
		//		mav.setViewName("login");


		Map<String, Object> map=new HashMap<>();
		map.put("result", result);
		map.put("dto", dto);

		//		System.out.println("확인3" + mav);
		System.out.println("확인3" + map);



		return map;
	}
}
