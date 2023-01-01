package com.koreait.app;

// 모든 컨트롤러에서 사용할 redirect flag변수 및 url 설정을 위해 클래스 선언
public class Result {
	
//	멤버변수 선언
	private boolean isRedirect;
	private String path;
	
//	기본 생성자 선언
	public Result() {;}
	
//	getter, setter 메서드 선언
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}

//	toString메서드 재정의
	@Override
	public String toString() {
		return "Result [isRedirect=" + isRedirect + ", path=" + path + "]";
	}
	
	
}
