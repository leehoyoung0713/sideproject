package com.meommi.app.post.vo;

public class PostDTO {
   private int postNumber; 
   private String postContent;
   private String postDateTime;
   private int userNumber;
   private int postFileNumber;
   private String postFileSystemName;
   private String postFileOriginName;
   private String postFilePath;
   private String userId;

   public PostDTO() {;}

	public int getPostNumber() {
		return postNumber;
	}
	
	public void setPostNumber(int postNumber) {
		this.postNumber = postNumber;
	}
	
	public String getPostContent() {
		return postContent;
	}
	
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	
	public String getPostDateTime() {
		return postDateTime;
	}
	
	public void setPostDateTime(String postDateTime) {
		this.postDateTime = postDateTime;
	}
	
	public int getUserNumber() {
		return userNumber;
	}
	
	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
	
	public int getPostFileNumber() {
		return postFileNumber;
	}
	
	public void setPostFileNumber(int postFileNumber) {
		this.postFileNumber = postFileNumber;
	}
	
	public String getPostFileSystemName() {
		return postFileSystemName;
	}
	
	public void setPostFileSystemName(String postFileSystemName) {
		this.postFileSystemName = postFileSystemName;
	}
	
	public String getPostFileOriginName() {
		return postFileOriginName;
	}
	
	public void setPostFileOriginName(String postFileOriginName) {
		this.postFileOriginName = postFileOriginName;
	}
	
	public String getPostFilePath() {
		return postFilePath;
	}
	
	public void setPostFilePath(String postFilePath) {
		this.postFilePath = postFilePath;
	}
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Override
	public String toString() {
		return "PostDTO [postNumber=" + postNumber + ", postContent=" + postContent + ", postDateTime=" + postDateTime
				+ ", userNumber=" + userNumber + ", postFileNumber=" + postFileNumber + ", postFileSystemName="
				+ postFileSystemName + ", postFileOriginName=" + postFileOriginName + ", postFilePath=" + postFilePath
				+ ", userId=" + userId + "]";
	}
   
   
}