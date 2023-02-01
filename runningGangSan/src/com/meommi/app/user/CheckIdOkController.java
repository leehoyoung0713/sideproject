package com.meommi.app.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.user.dao.UserDAO;

public class CheckIdOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		화면에서 작성한 ID를 inputId 변수에 저장
		String inputId = req.getParameter("inputId");
		PrintWriter out = resp.getWriter();
		JSONObject jsonObject = new JSONObject();
		
		jsonObject.put("result", new UserDAO().checkId(inputId));
		
		out.print(jsonObject.toJSONString());
		out.close();
		return null;
	}
}
