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

public class ListOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
		ReplyDAO replyDAO = new ReplyDAO();
		PrintWriter out = resp.getWriter();
		
//		org.json.JSONArray는 String타입의 List만 자동 변환 가능하다.
//		만약 String이 아닌 VO와 같은 클래스타입으로 선언된 List일 경우 직접 JSONObject로 변환 후 JSONArray에 put해주어야 한다.
		JSONArray replies = new JSONArray();
		replyDAO.selectAll(boardNumber).forEach(replyDTO -> {JSONObject reply = new JSONObject(replyDTO); replies.put(reply);});
		out.print(replies.toString());
		out.close();
		return null;
	}
}












