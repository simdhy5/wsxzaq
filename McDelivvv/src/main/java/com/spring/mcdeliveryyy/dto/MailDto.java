package com.spring.mcdeliveryyy.dto;

public class MailDto {


	private String senderName; //발신자 이름
	private String senderMail; //발신자 메일주소
	private String receiveMail; //수신자 메일주소
	private String subject; //메일 제목
	private String message; //메일 내용
	
	public MailDto() {

		//메일 객체 생성과 동시에 본문 내용 추가
		this.senderName="[맥딜리버리]";
		this.senderMail="zznerokingzz@gamil.com";
		this.subject="회원가입 완료를 위한 인증메일입니다.";
		this.message="인증메일 내용이넹";
	}

	public String getSenderName() {
		return senderName;
	}

	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

	public String getSenderMail() {
		return senderMail;
	}

	public void setSenderMail(String senderMail) {
		this.senderMail = senderMail;
	}

	public String getReceiveMail() {
		return receiveMail;
	}

	public void setReceiveMail(String receiveMail) {
		this.receiveMail = receiveMail;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "MailDto [senderName=" + senderName + ", senderMail=" + senderMail + ", receiveMail=" + receiveMail
				+ ", subject=" + subject + ", message=" + message + "]";
	}
}
