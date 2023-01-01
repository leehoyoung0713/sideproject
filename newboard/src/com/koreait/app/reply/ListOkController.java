package com.koreait.app.reply;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.koreait.app.Execute;
import com.koreait.app.Result;
import com.koreait.app.reply.dao.ReplyDAO;

//Execute 인터페이스를 구현하는 ListOkController클래스 선언
public class ListOkController implements Execute {

//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		조회된 댓글 출력을 위해 타입을 "text/html;charset=utf-8"로 설정
		resp.setContentType("text/html;charset=utf-8");
		
//		파라미터로 넘겨받은 boardNumber값을 정수로 변환하여 저장
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
		
//		데이터베이스의 data에 접근하기 위한 dao객체 생성
		ReplyDAO replyDAO = new ReplyDAO();
		
//		Servlet으로 들어온 요청을 텍스트 형태로 응답하기 위해 출력스트림을 얻어야하므로 getWriter()메서드 사용[바이트를 문자 형태를 가지는 객체로 바꿔준다]
		PrintWriter out = resp.getWriter();
		
//		org.json.JSONArray는 String타입의 List만 자동 변환 가능하다.
//		만약 String이 아닌 VO와 같은 클래스타입으로 선언된 List일 경우 직접 JSONObject로 변환 후 JSONArray에 put해주어야 한다.
		JSONArray replies = new JSONArray();
		replyDAO.selectAll(boardNumber).forEach(replyDTO -> {JSONObject reply = new JSONObject(replyDTO); replies.put(reply);});
		
//		출력 스트림에 내용 작성
		out.print(replies.toString());
		
//		flush메서드를 통해 데이터를 전달하고 사용된 자원을 반환
		out.close();
		
//		페이지 이동이 없으므로 Result객체에 null반환
		return null;
	}
}












