package com.meommi.app.follow.vo;

public class FollowVO {
	
	private int followerNumber;
	private int followingNumber;
	
	public FollowVO() {;}

	public int getFollowerNumber() {
		return followerNumber;
	}

	public void setFollowerNumber(int followerNumber) {
		this.followerNumber = followerNumber;
	}

	public int getFollowingNumber() {
		return followingNumber;
	}

	public void setFollowingNumber(int followingNumber) {
		this.followingNumber = followingNumber;
	}

	@Override
	public String toString() {
		return "FollowVO [followerNumber=" + followerNumber + ", followingNumber=" + followingNumber + "]";
	}
	
	
	
}
