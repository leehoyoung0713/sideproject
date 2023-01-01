package com.koreait.app.reply.vo;

//댓글 작성, 변경시 화면에서 입력받을 데이터를 저장하기 위한 ReplyDTO클래스 선언
public class ReplyDTO {

//	멤버 변수 선언
	private int replyNumber;
	private String replyContent;
	private String replyDate;
	private int memberNumber;
	private int boardNumber;
	private String memberId;
	
//	기본 생성자 선언
	public ReplyDTO() {;}

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

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

//	toString메서드 재정의
	@Override
	public String toString() {
		return "ReplyDTO [replyNumber=" + replyNumber + ", replyContent=" + replyContent + ", replyDate=" + replyDate
				+ ", memberNumber=" + memberNumber + ", boardNumber=" + boardNumber + ", memberId=" + memberId + "]";
	}
}
