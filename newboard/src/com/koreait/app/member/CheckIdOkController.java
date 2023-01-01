package com.koreait.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.member.dao.MemberDAO;

//Execute 인터페이스를 구현하는 CheckIdOkController클래스 선언
public class CheckIdOkController implements Execute{
	
//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		"memberId"의 파라미터에 대한 키값을 저장
		String memberId = req.getParameter("memberId");
		
//		Servlet으로 들어온 요청을 텍스트 형태로 응답하기 위해 출력스트림을 얻어야하므로 getWriter()메서드 사용[바이트를 문자 형태를 가지는 객체로 바꿔준다]
		PrintWriter out = resp.getWriter();
		
//		JSONObject 객체 생성
		JSONObject jsonObject = new JSONObject();
		
//		JSONObject객체에 파라미터로 받은 memberId에 대한 값을 아이디 중복 조회 메서드의 매개변수로 전달하여 Map 형식으로 저장
		jsonObject.put("result", new MemberDAO().checkId(memberId));
		
//		출력 스트림에 내용을 작성
		out.print(jsonObject.toJSONString());
		
//		flush메서드를 통해 html body태그에 내용을 전달하고 사용한 자원을 반환 
		out.close();
		
//		페이지 이동이 없으므로 Result객체에 null반환
		return null;
	}
}

















