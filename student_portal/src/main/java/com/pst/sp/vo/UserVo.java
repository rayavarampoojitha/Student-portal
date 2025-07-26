package com.pst.sp.vo;

public class UserVo {
	
	private int rollNumber;
	private String userName;
	private String password;
	private String setQuestion1;
	private String setQuestion2;
	private String ans1;
	private String ans2;
	

	public UserVo(int rollNumber, String userName, String password, String setQuestion1, String setQuestion2,
			String ans1, String ans2) {
		
		this.rollNumber = rollNumber;
		this.userName = userName;
		this.password = password;
		this.setQuestion1 = setQuestion1;
		this.setQuestion2 = setQuestion2;
		this.ans1 = ans1;
		this.ans2 = ans2;
	}
	
	public int getRollNumber() {
		return rollNumber;
	}
	public void setRollNumber(int rollNumber) {
		this.rollNumber = rollNumber;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSetQuestion1() {
		return setQuestion1;
	}
	public void setSetQuestion1(String setQuestion1) {
		this.setQuestion1 = setQuestion1;
	}
	public String getSetQuestion2() {
		return setQuestion2;
	}
	public void setSetQuestion2(String setQuestion2) {
		this.setQuestion2 = setQuestion2;
	}
	public String getAns1() {
		return ans1;
	}
	public void setAns1(String ans1) {
		this.ans1 = ans1;
	}
	public String getAns2() {
		return ans2;
	}
	public void setAns2(String ans2) {
		this.ans2 = ans2;
	}

}
