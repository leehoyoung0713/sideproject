package com.meommi.app.userFile.vo;

public class UserFileVO {
	int userFileNumber;
	String userFileSystemName;
	String userFileOriginName;
	int userNumber;
	
	public UserFileVO() {;}

	public int getUserFileNumber() {
		return userFileNumber;
	}

	public void setUserFileNumber(int userFileNumber) {
		this.userFileNumber = userFileNumber;
	}

	public String getUserFileSystemName() {
		return userFileSystemName;
	}

	public void setUserFileSystemName(String userFileSystemName) {
		this.userFileSystemName = userFileSystemName;
	}

	public String getUserFileOriginName() {
		return userFileOriginName;
	}

	public void setUserFileOriginName(String userFileOriginName) {
		this.userFileOriginName = userFileOriginName;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}

	@Override
	public String toString() {
		return "UserFileVO [userFileNumber=" + userFileNumber + ", userFileSystemName=" + userFileSystemName
				+ ", userFileOriginName=" + userFileOriginName + ", userNumber=" + userNumber + "]";
	}

	
}
