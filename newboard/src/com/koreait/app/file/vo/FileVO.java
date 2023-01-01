package com.koreait.app.file.vo;

// 파일 저장을 위한 FileVO클래스 선언
public class FileVO {
	
//	멤버변수 선언
	private String fileSystemName;
	private String fileOriginalName;
	private int boardNumber;
	
//	기본 생성자 선언
	public FileVO() {;}

//	getter, setter 메서드 선언
	public String getFileSystemName() {
		return fileSystemName;
	}

	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}

	public String getFileOriginalName() {
		return fileOriginalName;
	}

	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
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
		return "FileVO [fileSystemName=" + fileSystemName + ", fileOriginalName=" + fileOriginalName + ", boardNumber="
				+ boardNumber + "]";
	}
}
