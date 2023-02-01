package com.meommi.app.comments.vo;

public class CommentsVO {

	private int commentsNumber;
	private String commentsDateTime;
	private String commentsContent;
	private int userNumber;
	private int postNumber;
	
	public CommentsVO() {;}

	public int getCommentsNumber() {
		return commentsNumber;
	}

	public void setCommentsNumber(int commentsNumber) {
		this.commentsNumber = commentsNumber;
	}

	public String getCommentsDateTime() {
		return commentsDateTime;
	}

	public void setCommentsDateTime(String commentsDateTime) {
		this.commentsDateTime = commentsDateTime;
	}

	public String getCommentsContent() {
		return commentsContent;
	}

	public void setCommentsContent(String commentsContents) {
		this.commentsContent = commentsContents;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}

	public int getPostNumber() {
		return postNumber;
	}

	public void setPostNumber(int postNumber) {
		this.postNumber = postNumber;
	}

	@Override
	public String toString() {
		return "CommentsVO [commentsNumber=" + commentsNumber + ", commentsDateTime=" + commentsDateTime
				+ ", commentsContent=" + commentsContent + ", userNumber=" + userNumber + ", postNumber=" + postNumber
				+ "]";
	}

	
	
}
