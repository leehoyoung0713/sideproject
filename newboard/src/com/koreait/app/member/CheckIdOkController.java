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

public class CheckIdOkController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String memberId = req.getParameter("memberId");
		PrintWriter out = resp.getWriter();
		JSONObject jsonObject = new JSONObject();
		
		jsonObject.put("result", new MemberDAO().checkId(memberId));
		out.print(jsonObject.toJSONString());
		
		out.close();
		return null;
	}
}

















