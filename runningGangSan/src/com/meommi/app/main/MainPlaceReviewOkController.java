package com.meommi.app.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;


import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.main.dao.MainDAO;
import com.meommi.app.main.vo.MainDTO;

public class MainPlaceReviewOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		MainDAO mainDAO = new MainDAO();
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		System.out.println("들어옴");
		System.out.println(mainDAO.selectAll());
		req.setAttribute("reviews", mainDAO.selectAll());
		
		System.out.println(mainDAO.selectAll());
		result.setPath("/app/main/mainpage.jsp");
		return result;
	}

}
