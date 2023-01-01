package com.koreait.app.reply.vo;

//댓글 작성시 화면에서 입력받을 데이터를 저장하기 위한 ReplyVO클래스 선언
public class ReplyVO {

//	멤버 변수 선언
	private int replyNumber;
	private String replyContent;
	private String replyDate;
	private int memberNumber;
	private int boardNumber;
	
//	기본 생성자 선언
	public ReplyVO() {;}

//	getter, setter메서드 선언
	public int getReplyNumber() {
		return replyNumber;
	}

	public void setReplyNumber(int replyNumber) {
		this.replyNumber = replyNumber;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public int getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}

//	toString메서드 재정의
	@Override
	public String toString() {
		return "ReplyVO [replyNumber=" + replyNumber + ", replyContent=" + replyContent + ", replyDate=" + replyDate
				+ ", memberNumber=" + memberNumber + ", boardNumber=" + boardNumber + "]";
	}
}
