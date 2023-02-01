package com.meommi.app.main;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.funeral.dao.FuneralDAO;

public class MainServiceListcontroller implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		Result result = new Result();
		FuneralDAO funeralDAO = new FuneralDAO();
		System.out.println("컨트롤러");
		req.setAttribute("funerals", funeralDAO.selectAlltwo());
		System.out.println(funeralDAO.selectAlltwo());
		
		result.setPath("/app/main/mainpage.jsp");
		
		return result;
	}

}
