package com.meommi.app.user.vo;

public class UserDTO {
	private int userNumber;
	private String userId;
	private String userPassword;
	private String userName;
	private int userLoginMethod;
	private String userFileSystemName;
	private int postCount;
	private int reviewCount;
	//서로 팔로우인지
	private boolean follow;
	
	public UserDTO() {;}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getUserLoginMethod() {
		return userLoginMethod;
	}

	public void setUserLoginMethod(int userLoginMethod) {
		this.userLoginMethod = userLoginMethod;
	}

	public String getUserFileSystemName() {
		return userFileSystemName;
	}

	public void setUserFileSystemName(String userFileSystemName) {
		this.userFileSystemName = userFileSystemName;
	}

	public int getPostCount() {
		return postCount;
	}

	public void setPostCount(int postCount) {
		this.postCount = postCount;
	}

	public int getReviewCount() {
		return reviewCount;
	}

	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}

	public boolean isFollow() {
		return follow;
	}

	public void setFollow(boolean follow) {
		this.follow = follow;
	}

	@Override
	public String toString() {
		return "UserDTO [userNumber=" + userNumber + ", userId=" + userId + ", userPassword=" + userPassword
				+ ", userName=" + userName + ", userLoginMethod=" + userLoginMethod + ", userFileSystemName="
				+ userFileSystemName + ", postCount=" + postCount + ", reviewCount=" + reviewCount + ", follow="
				+ follow + "]";
	}

}
