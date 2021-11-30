package lx.sia.community.vo;

import java.sql.Date;
import java.sql.Timestamp;



public class UserVO {
	private String userId; 
	private String userPw;
	private String userName;
	private String nickname;
	private String address1;
	private String address2; 
	private String email;
	private String emailCode;
	private int emailVerify;
	private Timestamp regDate;
	private Date loginDate; 
	private int verify;
	private String userImg; // 저장파일 
	private String userThumbimg; //실제 파일 
	private String acMents;
	
	
	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", nickname=" + nickname
				+ ", address1=" + address1 + ", address2=" + address2 + ", email=" + email + ", emailCode=" + emailCode
				+ ", emailVerify=" + emailVerify + ", regDate=" + regDate + ", loginDate=" + loginDate + ", verify="
				+ verify + ", userImg=" + userImg + ", userThumbimg=" + userThumbimg + "]";
	}
	
	public String getAcMents() {
		return acMents;
	}

	public void setAcMents(String acMents) {
		this.acMents = acMents;
	}

	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmailCode() {
		return emailCode;
	}
	public void setEmailCode(String emailCode) {
		this.emailCode = emailCode;
	}
	public int getEmailVerify() {
		return emailVerify;
	}
	public void setEmailVerify(int emailVerify) {
		this.emailVerify = emailVerify;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public Date getLoginDate() {
		return loginDate;
	}
	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}
	public int getVerify() {
		return verify;
	}
	public void setVerify(int verify) {
		this.verify = verify;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}

	public String getUserThumbimg() {
		return userThumbimg;
	}

	public void setUserThumbimg(String userThumbimg) {
		this.userThumbimg = userThumbimg;
	}
	
	
	
}
