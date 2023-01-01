package com.koreait.app.board.vo;

// 게시글 작성, 변경시 화면에서 입력받을 데이터를 저장하기 위한 BoardDTO클래스 선언
public class BoardDTO {
	
//	멤버 변수 선언
	private int boardNumber;
	private String boardTitle;
	private String boardContent;
	private String boardDate;
	private int boardReadCount;
	private int memberNumber;
	private String memberId;
	
//	기본 생성자 선언
	public BoardDTO() {;}

//	getter, setter메서드 선언
	public int getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public int getBoardReadCount() {
		return boardReadCount;
	}

	public void setBoardReadCount(int boardReadCount) {
		this.boardReadCount = boardReadCount;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
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
		return "BoardDTO [boardNumber=" + boardNumber + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardDate=" + boardDate + ", boardReadCount=" + boardReadCount + ", memberNumber=" + memberNumber
				+ ", memberId=" + memberId + "]";
	}
}
