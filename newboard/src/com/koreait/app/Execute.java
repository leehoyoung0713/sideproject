package com.koreait.app;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 컨트롤러에서 사용하는 Execute 인터페이스 선언
public interface Execute {
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
}
